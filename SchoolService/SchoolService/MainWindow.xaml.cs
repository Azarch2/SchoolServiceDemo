﻿using SchoolService.Windows;
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

namespace SchoolService
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static List<Service> sortedList;
        public static MainWindow mainWindow;
        public static WindowAddService windowAddService = new WindowAddService();
        public static WindowChangeService windowChangeService = new WindowChangeService();
        public static WindowAddClientToService windowAddClientToService = new WindowAddClientToService();
        public static Service currentChoosedService;
        public static WindowUpcomingEntries windowUpcomingEntries = new WindowUpcomingEntries();
        public MainWindow()
        {
            InitializeComponent();
            using(DB db = new DB())
            {
                ListViewService.ItemsSource = db.Service.ToList();
                TextBlockNumberOfServices.Text = "Кол-во услуг: " +( ListViewService.Items.Count) + "/" + db.Service.ToList().Count;
            }
            mainWindow = this;
        }
        public void InitializeListViewService()
        {
            using (DB db = new DB())
            {
                ListViewService.ItemsSource = db.Service.ToList();
                TextBlockNumberOfServices.Text = "Кол-во услуг: " + (ListViewService.Items.Count) + "/" + db.Service.ToList().Count;
            }
        }
      /*  public void GetDigits()
        {
            using (DB db = new DB())
            {

                for (int i = 0; i < db.Service.ToList().Count; i++)
                {
                    string str = "";
                    for (int j = 0; j < db.Service.ToList()[i].Duration.Length; j++)
                    {
                        if (char.IsNumber(db.Service.ToList()[i].Duration[j]))
                        {
                            str += db.Service.ToList()[i].Duration[j];
                        }

                    }
                    if (db.Service.ToList()[i].Duration.Contains("сек"))
                    {
                        int currentDurationInMinutes = int.Parse(str) / 60;
                       // MessageBox.Show("currentDuration in Minutes: " + currentDurationInMinutes);
                        db.Service.ToList()[i].Duration = currentDurationInMinutes.ToString();
                    }
                    else
                    {
                        int currentDurationInMinutesStock = int.Parse(str);
                        db.Service.ToList()[i].Duration = currentDurationInMinutesStock.ToString();
                       // MessageBox.Show("currentDuration in MinutesSTOCK: " + currentDurationInMinutesStock);
                    }
                   // MessageBox.Show(str);
                }
                db.SaveChanges();
            }
        }*/

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
        public void AddAllFilters()
        {
            using (DB db = new DB())
            {
                sortedList = db.Service.ToList();
                //First
                if(ComboBoxSort.SelectedIndex == 2)
                {
                    sortedList = sortedList.OrderBy(element => element.Cost).ToList();
                }
                if (ComboBoxSort.SelectedIndex == 1)
                {
                    sortedList = sortedList.OrderByDescending(element => element.Cost).ToList();
                }
                //Second
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
                //
                if (TextBoxFind.Text != "")
                {
                    sortedList = sortedList.Where(element => element.Name.Contains(TextBoxFind.Text)).ToList();
                }
                if (TextBoxFindDescription.Text != "")
                {
                    sortedList = sortedList.Where(element => element.Name.Contains(TextBoxFindDescription.Text)).ToList();
                }
                ListViewService.ItemsSource = sortedList;
                TextBlockNumberOfServices.Text = "Кол-во услуг: " + (ListViewService.Items.Count) + "/" + db.Service.ToList().Count;
            }
        }

        private void ClickChange(object sender, RoutedEventArgs e)
        {
            Service choosedService = (sender as Button).DataContext as Service;
            Service currentService;
            using (DB db = new DB())
            {
                currentService = db.Service.Where(element => element.Id == choosedService.Id).FirstOrDefault();
                windowChangeService.Show();
                windowChangeService.TextBoxCost.Text = currentService.Cost.ToString();
                windowChangeService.TextBoxDiscount.Text = currentService.Discount.ToString();
                windowChangeService.TextBoxDuration.Text = currentService.Duration.ToString();
                windowChangeService.TextBoxName.Text = currentService.Name;
                windowChangeService.ListViewPhotosCurrent.Items.Clear();
                windowChangeService.TextBoxId.Text = currentService.Id.ToString();
                currentChoosedService = currentService;
                if (currentService.AdditionalImage.Count > 0)
                {
                    MessageBox.Show("Additional imgaes count: " + currentService.AdditionalImage.Count);
                    foreach (var image in currentService.AdditionalImage)
                    {
                        Service service = new Service();
                        service.Image = image.Image;
                        windowChangeService.ListViewPhotosCurrent.Items.Add(service);
                    }
                }
                if (currentService.Image.Contains("file"))
                {
                    windowChangeService.ImageChoosedPhoto.Source = new BitmapImage(new Uri(currentService.Image));
                }
                else
                {
                    windowChangeService.ImageChoosedPhoto.Source = new BitmapImage(new Uri(System.IO.Path.Combine("C:\\Users\\Azarch\\source\\repos\\SchoolService\\SchoolService\\", currentService.Image)));
                }
            }
         //   MessageBox.Show("currentservice: image " + currentService.Image);
        }

        private void ClickRemove(object sender, RoutedEventArgs e)
        {
            using (DB db = new DB())
            {
                Service currentService = (sender as Button).DataContext as Service;
                Service element = db.Service.Where(serviceFind=> serviceFind.Id== currentService.Id).FirstOrDefault();
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

        private void SelectionChange(object sender, SelectionChangedEventArgs e)
        {
            AddAllFilters();
        }

        private void TextChange(object sender, TextChangedEventArgs e)
        {
            AddAllFilters();
        }

        private void ClickAddService(object sender, RoutedEventArgs e)
        {
            windowAddService.updateAllTextBoxesAndImage();
            windowAddService.Show();
        }

        private void ClickAddClientToService(object sender, RoutedEventArgs e)
        {
            this.Hide();
            windowAddClientToService.Show();
            currentChoosedService = (sender as Button).DataContext as Service;
            windowAddClientToService.TextBlockDuration.Text ="Длительность услуги: " + currentChoosedService.Duration.ToString();
            windowAddClientToService.TextBlockName.Text = "Наименование услуги: " + currentChoosedService.Name.ToString();
            using (DB db = new DB()) {
                windowAddClientToService.ComboBoxChooseClient.ItemsSource = db.Client.ToList();

                    }
        }

        private void ClickUpcomingEntries(object sender, RoutedEventArgs e)
        {
            this.Hide();
            windowUpcomingEntries.Show();
            windowUpcomingEntries.InitializeDataGrid();
        }
    }
}