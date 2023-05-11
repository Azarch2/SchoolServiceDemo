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

        private void ClickChangeService(object sender, RoutedEventArgs e)
        {
            // try
            //  {
            using (DB db = new DB())
            {
                if (TextBoxCost.Text == "" || TextBoxDiscount.Text == "" || TextBoxDuration.Text == "" || TextBoxName.Text == "" || ImageChoosedPhoto.Source == null)
                {
                    MessageBox.Show("Вы заполнили не все поля!");
                    return;
                }
                if(int.Parse(TextBoxDuration.Text) > 240)
            {
                MessageBox.Show("Длительность услуги не должна превышать четырёх часов!");
                return;
            }
                string textBoxNameText = TextBoxName.Text;
                    Service currentService = db.Service.Where(element=> element.Id == MainWindow.currentChoosedService.Id).FirstOrDefault();
                    Service serviceRepeat = null;
                    foreach(var item in db.Service)
                {
                    if(item.Name == TextBoxName.Text && item.Id != currentService.Id)
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
                currentService.Cost=int.Parse(TextBoxCost.Text);
                currentService.Duration=int.Parse(TextBoxDuration.Text);
                currentService.Discount=int.Parse(TextBoxDiscount.Text);
                currentService.Image = ImageChoosedPhoto.Source.ToString();
             //   MessageBox.Show("Count before delete: " + serviceCurrent.AdditionalImage.Count);
                for (int i = 0; i < db.AdditionalImage.ToList().Count; i++)
                {
                    if (db.AdditionalImage.ToList()[i].ServiceId == currentService.Id)
                    {
                        db.AdditionalImage.Remove(db.AdditionalImage.ToList()[i]);
                    }
                }
                //db.SaveChanges();
                //  MessageBox.Show("AfterDelete: " + serviceCurrent.AdditionalImage.Count);
                // MessageBox.Show("CurrentCount: " + ListViewPhotosCurrent.Items.Count);
                foreach (Service item in ListViewPhotosCurrent.Items)
                {
                    Random rnd = new Random();
                    AdditionalImage additionalImage = new AdditionalImage();
                    additionalImage.Id = rnd.Next(1, 5000);
                    additionalImage.Image = item.Image;
                        additionalImage.ServiceId = currentService.Id;
                        currentService.AdditionalImage.Add(additionalImage);
                    MessageBox.Show("AdditionalImage image: " + additionalImage.Image);
                    MessageBox.Show("AdditionalImage imageID: " + additionalImage.ServiceId);
                    db.AdditionalImage.Add(additionalImage);
                }
                /*Service item2 = ListViewPhotosCurrent.Items[0] as Service;
                string imgPath = item2.Image;
                AdditionalImage additionalImage = new AdditionalImage();
                additionalImage.Id = 555;
                additionalImage.Image = imgPath;
                MessageBox.Show("Imgpath: " + additionalImage.Image);
                additionalImage.Service = db.Service.Where(element=> element.Id == currentService.Id).FirstOrDefault();
               db.AdditionalImage.Add(additionalImage);*/
                db.SaveChanges();
                this.Hide();
                      MessageBox.Show("Вы успешно изменили услугу");
                    MainWindow.mainWindow.InitializeListViewService();
                }
         //   }
          //  catch
          //  {
          //      MessageBox.Show("Не все поля заполнены правильными типами данных");
          //  }
        }

        private void Close(object sender, System.ComponentModel.CancelEventArgs e)
        {
            e.Cancel = true;
            this.Hide();
        }
        public void updateAllTextBoxesAndImage()
        {
            TextBoxCost.Text = "";
            TextBoxDiscount.Text = "";
            TextBoxDuration.Text = "";
            TextBoxName.Text = "";
            ImageChoosedPhoto.Source = null;
        }

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

        private void ClickAddPhoto(object sender, RoutedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            if (ofd.ShowDialog() == true)
            {
                string path = ofd.FileName;
                Service service = new Service();
                //   ImageChoosedPhoto.Source = new BitmapImage(new Uri(path));
                service.Image = path;
                ListViewPhotosCurrent.Items.Add(service);
                MessageBox.Show("Вы добавили фото!");
            }
        }

        private void ClickRemove(object sender, RoutedEventArgs e)
        {
            //List<Service> services = new List<Service>();
            //foreach (var item in ListViewPhotosCurrent.Items)
            //{
            //    services.Add(item as Service);
            //}
            Service serviceToRemove = new Service();
            foreach(Service service in ListViewPhotosCurrent.Items)
            {
                if(service.Id == ((sender as Button).DataContext as Service).Id)
                {
                    serviceToRemove = service;
                    break;
                }
            }
            ListViewPhotosCurrent.Items.Remove(serviceToRemove);
            MessageBox.Show("Вы удалили фото");
           // ListViewPhotosCurrent.ItemsSource = services;
        }
    }
}
