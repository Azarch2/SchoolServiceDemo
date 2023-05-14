using SchoolService.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Drawing.Design;
using SchoolService.Models;
namespace SchoolService
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class WindowUser : Window
    {
        public static List<Service> sortedList;
        public static MainWindow mainWindow = new MainWindow();
        public WindowUser()
        {
            InitializeComponent();
            using(DB db = new DB())
            {
                sortedList = db.Service.ToList();
                InitializePathsInSortedList();
                ListViewService.ItemsSource = sortedList;
                TextBlockNumberOfServices.Text = "Кол-во услуг: " +( ListViewService.Items.Count) + "/" + db.Service.ToList().Count;
            }
        }
       /// <summary>
       /// Метод инициализации ListView
       /// </summary>
        public void InitializeListViewService()
        {
            using (DB db = new DB())
            {
                sortedList = db.Service.ToList();
                InitializePathsInSortedList();
                ListViewService.ItemsSource = sortedList;
                TextBlockNumberOfServices.Text = "Кол-во услуг: " + (ListViewService.Items.Count) + "/" + db.Service.ToList().Count;
            }
        }
        /// <summary>
        /// Метод инициалзиации путей для фотографий
        /// </summary>
        public void InitializePathsInSortedList()
        {
            foreach(var item in sortedList)
            {
                if (!item.Image.Contains("file"))
                {
                    item.Image = @"..\" + item.Image;
                }
            }
        }
        /// <summary>
        /// Метод инициализации ComboBox для фильтра
        /// </summary>
        public void InitializeComboBoxFilter()
        {
            ComboBoxFilter.Items.Add("Все диапазоны");
            ComboBoxFilter.Items.Add("От 0 до 5%");
            ComboBoxFilter.Items.Add("От 5% до 15%");
            ComboBoxFilter.Items.Add("От 15% до 30%");
            ComboBoxFilter.Items.Add("От 30% до 70%");
            ComboBoxFilter.Items.Add("От 70% до 100%");
            ComboBoxFilter.SelectedIndex = 0;
        }
        /// <summary>
        /// Метод добавления всех фильтров
        /// </summary>
        public void AddAllFilters()
        {
            using (DB db = new DB())
            {
                sortedList = db.Service.ToList();
                if(ComboBoxSort.SelectedIndex == 2)
                {
                    sortedList = sortedList.OrderBy(element => element.Cost).ToList();
                }
                if (ComboBoxSort.SelectedIndex == 1)
                {
                    sortedList = sortedList.OrderByDescending(element => element.Cost).ToList();
                }
                if (ComboBoxFilter.SelectedIndex == 1)
                {
                    sortedList = sortedList.Where(element => element.Discount>=0 && element.Discount<5).ToList();
                }
                if (ComboBoxFilter.SelectedIndex == 2)
                {
                    sortedList = sortedList.Where(element => element.Discount >= 5 && element.Discount < 15).ToList();
                }
                if (ComboBoxFilter.SelectedIndex == 3)
                {
                    sortedList = sortedList.Where(element => element.Discount >= 15 && element.Discount < 30).ToList();
                }
                if (ComboBoxFilter.SelectedIndex == 4)
                {
                    sortedList = sortedList.Where(element => element.Discount >= 30 && element.Discount < 70).ToList();
                }
                if (ComboBoxFilter.SelectedIndex == 5)
                {
                    sortedList = sortedList.Where(element => element.Discount >= 70 && element.Discount < 100).ToList();
                }
                if (TextBoxFind.Text != "")
                {
                    sortedList = sortedList.Where(element => element.Name.Contains(TextBoxFind.Text)).ToList();
                }
                if (TextBoxFindDescription.Text != "")
                {
                    sortedList = sortedList.Where(element => element.Name.Contains(TextBoxFindDescription.Text)).ToList();
                }
                InitializePathsInSortedList();
                ListViewService.ItemsSource = sortedList;
                TextBlockNumberOfServices.Text = "Кол-во услуг: " + (ListViewService.Items.Count) + "/" + db.Service.ToList().Count;
            }
        }
        /// <summary>
        /// Обработка события изменения SelectedItem для применения фильтра
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void SelectionChange(object sender, SelectionChangedEventArgs e)
        {
            AddAllFilters();
        }
        /// <summary>
        /// Обработка события изменения TextChange для применения фильтра
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void TextChange(object sender, TextChangedEventArgs e)
        {
            AddAllFilters();
        }
        /// <summary>
        /// Метод возврата на предыдущее окно
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ClickLeave(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
        /// <summary>
        /// Метод перехода на окно администратора
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void TextChangeGetAdmin(object sender, TextChangedEventArgs e)
        {
            if (TextBoxAdminCode.Text == "0000")
            {
                MessageBox.Show("Вы перешли в режим администратора");
                TextBoxAdminCode.Text = "";
                this.Hide();
                using (DB db = new DB())
                {
                 mainWindow.ListViewService.ItemsSource = db.Service.ToList();
                    mainWindow.TextBlockNumberOfServices.Text = "Кол-во услуг: " + (ListViewService.Items.Count) + "/" + db.Service.ToList().Count;
                }
                mainWindow.Show();
            }
        }
    }
}
