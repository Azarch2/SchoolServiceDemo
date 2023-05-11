using SchoolService.Windows;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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
    public partial class WindowUpcomingEntries : Window
    {

        public WindowUpcomingEntries()
        {
            InitializeComponent();
    
        }

        public void InitializeDataGrid()
        {
            using (DB db = new DB())
            {
                foreach (ClientService item in db.ClientService)
                {
                    DateTime appointmentDate = item.ServiceTime; // назначенная дата
                    DateTime currentDate = DateTime.Now; // текущая дата и время
                    TimeSpan timeLeft = appointmentDate.Subtract(currentDate);
                    item.timeToStart = timeLeft;
                    if(item.timeToStart <= new TimeSpan(2, 0, 0))
                    {
                        item.Foreground = Brushes.Red;
                    }
                    else
                    {
                        item.Foreground = Brushes.Black;
                        // MessageBox.Show("Black");
                       // DataGridUpcomingEntries.Background = item.Foreground;
                    }
                }
                //MessageBox.Show("foreground: " + db.ClientService.ToList()[0].foreground.Color);
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
                ListViewUpcomingEntries.ItemsSource = list;
            }
            
        }

        private void ClickBack(object sender, RoutedEventArgs e)
        {
            this.Hide();
            MainWindow.mainWindow.Show();
        }
    }
}
