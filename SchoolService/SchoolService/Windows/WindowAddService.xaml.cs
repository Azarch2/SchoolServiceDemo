﻿using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
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
using System.Windows.Shapes;
using SchoolService.Models;
namespace SchoolService.Windows
{
    /// <summary>
    /// Логика взаимодействия для WindowAddService.xaml
    /// </summary>
    public partial class WindowAddService : Window
    {
        public WindowAddService()
        {
            InitializeComponent();
        }
        /// <summary>
        /// Метод добавления услуги
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ClickAddService(object sender, RoutedEventArgs e)
        {
            try
            {
                if (TextBoxCost.Text == "" || TextBoxDiscount.Text == "" || TextBoxDuration.Text == "" || TextBoxName.Text == "" || ImageChoosedPhoto.Source == null)
                {
                    MessageBox.Show("Вы заполнили не все поля!");
                    return;
                }
                using (DB db = new DB()) 
                {
                    Service serviceRepeat = db.Service.Where(element=> element.Name == TextBoxName.Text).FirstOrDefault();
                    if (serviceRepeat != null)
                    {
                        MessageBox.Show("Услуга с таким наименованием уже есть в базе данных!");
                        return;
                    }
                    Service serviceToAdd = new Service();
                    serviceToAdd.Name = TextBoxName.Text;
                    serviceToAdd.Cost=int.Parse(TextBoxCost.Text);
                    serviceToAdd.Duration=int.Parse(TextBoxDuration.Text);
                    serviceToAdd.Discount=int.Parse(TextBoxDiscount.Text);
                    serviceToAdd.Image = ImageChoosedPhoto.Source.ToString();
                    db.Service.Add(serviceToAdd);
                    updateAllTextBoxesAndImage();
                    this.Hide();
                    db.SaveChanges();
                    MessageBox.Show("Вы успешно добавили услугу");
                    MainWindow.mainWindow.InitializeListViewService();
                }
            }
            catch
            {
                MessageBox.Show("Не все поля заполнены правильными типами данных");
            }
        }
        /// <summary>
        /// Метод закрытия окна
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Close(object sender, System.ComponentModel.CancelEventArgs e)
        {
            e.Cancel = true;
            this.Hide();
        }
        /// <summary>
        /// Метод обновления всех TextBox и Image
        /// </summary>
        public void updateAllTextBoxesAndImage()
        {
            TextBoxCost.Text = "";
            TextBoxDiscount.Text = "";
            TextBoxDuration.Text = "";
            TextBoxName.Text = "";
            ImageChoosedPhoto.Source = null;
        }
        /// <summary>
        /// Метод выбора фотографии
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ClickChoosePhoto(object sender, RoutedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            if (ofd.ShowDialog() == true)
            {
                string path = ofd.FileName;
                string pathToAdd = System.IO.Path.Combine(Environment.CurrentDirectory, "Услуги школы");
                //  pathToAdd = System.IO.Path.Combine(pathToAdd, "Услуги школы");
                // pathToAdd = System.IO.Path.Combine(pathToAdd, System.IO.Path.GetFileName(path)) ;
                try
                {
                    File.Copy(path, pathToAdd);
                }
                catch
                {

                }
                ImageChoosedPhoto.Source = new BitmapImage(new Uri(path));
                MessageBox.Show("Вы выбрали фото!");
            }
        }
    }
}
