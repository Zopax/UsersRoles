using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data;
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
using UsersRoles.Models;

namespace UsersRoles
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private object? dataTable;

        public MainWindow()
        {
            InitializeComponent();
            LoadData();
        }

        void LoadData()
        {
            UsersDGrid.ItemsSource = Helper.GetContext().Users.Include(w => w.IdRoleNavigation).ToList();
        }

        private void DeleteSelectRows_Click(object sender, RoutedEventArgs e)
        {
            User? SearchUserValue = UsersDGrid.SelectedValue as User;

            if (SearchUserValue != null)
            {
                if (SearchUserValue.Login != this.Title.Split(new char[] { ' ' })[1])
                {
                    User userValue = SearchUserValue;
                    Helper.GetContext().Users.Remove(userValue);
                    Helper.GetContext().SaveChanges();
                    LoadData();
                }
                else
                {
                    MessageBox.Show("Ты дурачок? Зачем себя удаляешь? :)");
                }
            }
        }
        private void UpdateSelectRows_Click(object sender, RoutedEventArgs e)
        {
            User? SearchUserValue = UsersDGrid.SelectedItem as User;

            if (SearchUserValue != null)
            {
                Helper.GetContext().Update(SearchUserValue);
                Helper.GetContext().SaveChanges();
                LoadData();
            }
        }
    }
}


