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
using SchoolService.Models;
using System.Runtime.CompilerServices;
using System.IO;

namespace SchoolService
{
    public partial class WindowUser : Window
    {
        public static List<Service> sortedList;
        public static MainWindow mainWindow = new MainWindow();

        public WindowUser()
        {
            InitializeComponent();
            InitializeWindowUser();
            InitializePathsInSortedList();
        }
        /// <summary>
        /// Метод инициализации ListView и TextBlock
        /// </summary>
        public void InitializeWindowUser()
        {
            using (DB db = new DB())
            {
                sortedList = db.Service.ToList();
                List<Service> services = db.Service.ToList();
                ListViewService.ItemsSource = services;
                TextBlockNumberOfServices.Text = "Кол-во услуг: " + (ListViewService.Items.Count) + "/" + db.Service.ToList().Count;
            }
        }
        public void InitializePathsInSortedList()
        {
            foreach (var item in sortedList)
            {
                if (!item.Image.Contains("file"))
                {
                    item.Image = @"..\" + item.Image;
                }
            }
            ListViewService.ItemsSource = sortedList;
        }
        /// <summary>
        /// Метод инициализации ListView и TextBlock
        /// </summary>
        public void InitializeListViewService()
        {
            using (DB db = new DB())
            {
                ListViewService.ItemsSource = db.Service.ToList();
                TextBlockNumberOfServices.Text = "Кол-во услуг: " + (ListViewService.Items.Count) + "/" + db.Service.ToList().Count;
            }
        }
        /// <summary>
        /// Метод инициализации ComboBox со скидками
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
                if (ComboBoxSort.SelectedIndex == 2)
                {
                    sortedList = sortedList.OrderBy(element => element.Cost).ToList();
                }
                if (ComboBoxSort.SelectedIndex == 1)
                {
                    sortedList = sortedList.OrderByDescending(element => element.Cost).ToList();
                }
                if (ComboBoxFilter.SelectedIndex == 1)
                {
                    sortedList = sortedList.Where(element => element.Discount >= 0 && element.Discount < 5).ToList();
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
                    sortedList = sortedList.Where(element => element.Description.Contains(TextBoxFindDescription.Text)).ToList();
                }
                InitializePathsInSortedList();
                ListViewService.ItemsSource = sortedList;
                TextBlockNumberOfServices.Text = "Кол-во услуг: " + (ListViewService.Items.Count) + "/" + db.Service.ToList().Count;
            }
        }
        /// <summary>
        /// Метод редактирования услуги
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ClickRemove(object sender, RoutedEventArgs e)
        {
            using (DB db = new DB())
            {
                Service currentService = (sender as Button).DataContext as Service;
                Service element = db.Service.Where(serviceFind => serviceFind.Id == currentService.Id).FirstOrDefault();
                if (element.ClientService.Count > 0)
                {
                    MessageBox.Show("Вы не можете удалить эту услугу так как на неё есть запись!");
                    return;
                }
                db.Service.Remove(element);
                db.SaveChanges();
                AddAllFilters();
            }
            MessageBox.Show("Услуга была успешно удалена!");
        }
        /// <summary>
        /// Метод реагирования на событие изменения выбора элемента у ComboBox
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void SelectionChange(object sender, SelectionChangedEventArgs e)
        {
            AddAllFilters();
        }
        /// <summary>
        /// Метод реагирования на событие изменения текст у TextBox
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void TextChange(object sender, TextChangedEventArgs e)
        {
            AddAllFilters();
        }

        private void TextChangeGetAdmin(object sender, TextChangedEventArgs e)
        {
            if (TextBoxAdminCode.Text == "0000")
            {
                MessageBox.Show("Вы перешли в режим администратора");
                TextBoxAdminCode.Text = "";
                this.Hide();
                mainWindow.InitializeMainWindow();
                mainWindow.Show();
            }
        }

        private void ClickLeave(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
