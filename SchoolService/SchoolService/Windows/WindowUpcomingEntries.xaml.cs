using SchoolService.Windows;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading;
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
namespace SchoolService
{
    public partial class WindowUpcomingEntries : Window
    {

        public WindowUpcomingEntries()
        {
            InitializeComponent();
        }
        /// <summary>
        /// Метод обновления ListView каждые 30 секунд
        /// </summary>
        public void RefreshListEvery30Seconds()
        {
            Thread.Sleep(30000);
            InitializeListView();
        }
        /// <summary>
        /// Метод инициализации ListView
        /// </summary>
        public void InitializeListView()
        {
            using (DB db = new DB())
            {
                foreach (ClientService item in db.ClientService)
                {
                    DateTime appointmentDate = item.ServiceDate; 
                    DateTime currentDate = DateTime.Now; 
                    TimeSpan timeLeft = appointmentDate.Subtract(currentDate);
                    item.timeToStart = timeLeft;
                    if(item.timeToStart <= new TimeSpan(2, 0, 0))
                    {
                        item.Foreground = Brushes.Red;
                    }
                    else
                    {
                        item.Foreground = Brushes.Black;
                    }
                }
                int count = db.Service.ToList().Count;
                int countOfListSEcond = db.Client.ToList().Count;
                List<ClientService> list = new List<ClientService>();
                foreach (ClientService item in db.ClientService)
                {
                    if(item.timeToStart <= new TimeSpan(48, 0, 0))
                    {
                        list.Add(item);
                    }
                }
                Dispatcher.Invoke(new Action(() => ListViewUpcomingEntries.ItemsSource = list));
            }
            Thread td = new Thread(new ThreadStart(RefreshListEvery30Seconds));
            td.Start();
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
