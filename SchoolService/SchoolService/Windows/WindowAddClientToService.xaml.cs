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
    public partial class WindowAddClientToService : Window
    {
        public WindowAddClientToService()
        {
            InitializeComponent();
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
        /// Метод добавления записи клиента на услугу
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ClickAddClientToService(object sender, RoutedEventArgs e)
        {
            if(DatePickerDate.SelectedDate==null || ComboBoxChooseClient.SelectedItem==null || TextBoxTime.Text=="") {
                MessageBox.Show("Не все поля были заполнены!");
                return;
            }
            try
            {
                TimeSpan time =  TimeSpan.Parse( TextBoxTime.Text);
            }
            catch
            {
                MessageBox.Show("Неверный тип данных для времени!");
                return;
            }
            using (DB db = new DB())
            {
                ClientService clientService = new ClientService();
                clientService.ServiceId = MainWindow.currentChoosedService.Id;
                clientService.ClientId = (ComboBoxChooseClient.SelectedItem as Client).Id;
                clientService.ServiceTime = (DateTime)DatePickerDate.SelectedDate;
                clientService.ServiceTime = clientService.ServiceTime.Date + TimeSpan.Parse(TextBoxTime.Text);
                db.ClientService.Add(clientService);
                db.SaveChanges();
                MessageBox.Show("Вы успешно записали клиента на услугу!");
                UpdateAllBoxes();
                this.Hide();
                MainWindow.mainWindow.Show();
            }
        }
        /// <summary>
        /// Метод обновления всех полей ввода
        /// </summary>
        public void UpdateAllBoxes()
        {
            TextBoxTime.Text = "";
            DatePickerDate.SelectedDate = null;
        }
        /// <summary>
        /// Метод возврата на предыдущее окно
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ClickBack(object sender, RoutedEventArgs e)
        {
            this.Hide();
            MainWindow.mainWindow.Show();
        }
    }
}
