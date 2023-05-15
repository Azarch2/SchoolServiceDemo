using Microsoft.Win32;
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
    public partial class WindowChangeService : Window
    {
        public WindowChangeService()
        {
            InitializeComponent();
        }
        /// <summary>
        /// Метод редактирования услуги
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ClickChangeService(object sender, RoutedEventArgs e)
        {
            using (DB db = new DB())
            {
                if (TextBoxCost.Text == "" || TextBoxDiscount.Text == "" || TextBoxDuration.Text == "" || TextBoxName.Text == "" || ImageChoosedPhoto.Source == null)
                {
                    MessageBox.Show("Вы заполнили не все поля!");
                    return;
                }
                if (int.Parse(TextBoxDuration.Text) > 240)
                {
                    MessageBox.Show("Длительность услуги не должна превышать четырёх часов!");
                    return;
                }
                string textBoxNameText = TextBoxName.Text;
                Service currentService = db.Service.Where(element => element.Id == MainWindow.currentChoosedService.Id).FirstOrDefault();
                Service serviceRepeat = null;
                foreach (var item in db.Service)
                {
                    if (item.Name == TextBoxName.Text && item.Id != currentService.Id)
                    {
                        serviceRepeat = item;
                        break;
                    }
                }
                if (serviceRepeat != null)
                {
                    MessageBox.Show("Услуга с таким наименованием уже есть в базе данных!");
                    return;
                }
                currentService.Name = TextBoxName.Text;
                currentService.Cost = int.Parse(TextBoxCost.Text);
                currentService.Duration = int.Parse(TextBoxDuration.Text);
                currentService.Discount = int.Parse(TextBoxDiscount.Text);
                currentService.Image = ImageChoosedPhoto.Source.ToString();
                for (int i = 0; i < db.AdditionalImage.ToList().Count; i++)
                {
                    if (db.AdditionalImage.ToList()[i].ServiceId == currentService.Id)
                    {
                        db.AdditionalImage.Remove(db.AdditionalImage.ToList()[i]);
                    }
                }
                foreach (Service item in ListViewPhotosCurrent.Items)
                {
                    Random rnd = new Random();
                    AdditionalImage additionalImage = new AdditionalImage();
                    additionalImage.Id = rnd.Next(1, 5000);
                    additionalImage.Image = item.Image;
                    additionalImage.ServiceId = currentService.Id;
                    currentService.AdditionalImage.Add(additionalImage);
                    db.AdditionalImage.Add(additionalImage);
                }
                db.SaveChanges();
                this.Hide();
                MessageBox.Show("Вы успешно изменили услугу");

                MainWindow.mainWindow.AddAllFilters();
            }
        }
        /// <summary>
        /// Метод обработки события закрытия окна
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Close(object sender, System.ComponentModel.CancelEventArgs e)
        {
            e.Cancel = true;
            this.Hide();
        }
        /// <summary>
        /// Метод обновления всех полей для ввода
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
        /// <summary>
        /// Метод добавления фотографии
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ClickAddPhoto(object sender, RoutedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            if (ofd.ShowDialog() == true)
            {
                string path = ofd.FileName;
                Service service = new Service();
                service.Image = path;
                ListViewPhotosCurrent.Items.Add(service);
                MessageBox.Show("Вы добавили фото!");
            }
        }
        /// <summary>
        /// Метод удаления фотографии
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ClickRemove(object sender, RoutedEventArgs e)
        {
            Service serviceToRemove = new Service();
            foreach (Service service in ListViewPhotosCurrent.Items)
            {
                if (service.Id == ((sender as Button).DataContext as Service).Id)
                {
                    serviceToRemove = service;
                    break;
                }
            }
            ListViewPhotosCurrent.Items.Remove(serviceToRemove);
            MessageBox.Show("Вы удалили фото");
        }
    }
}
