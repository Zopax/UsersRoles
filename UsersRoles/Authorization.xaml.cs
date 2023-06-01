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
using System.Windows.Shapes;
using UsersRoles.Models;

namespace UsersRoles
{
    /// <summary>
    /// Interaction logic for authorization.xaml
    /// </summary>
    public partial class Authorization : Window
    {
        public Authorization()
        {
            InitializeComponent();
        }

        public User? authSearch;

        private void Auth_Click(object sender, RoutedEventArgs e)
        {
           try
           {
                authSearch = (User)Helper.GetContext().Users.Where(w => w.Login == AuthText.Text).First(w => w.Pasword == PassText.Password.ToString());

                if (authSearch.IdRole == 1)
                {
                    Window adminWin = new MainWindow();
                    adminWin.Title = "Администратор " + authSearch.Login ;
                    adminWin.Show();
                    Close();
                }

                if (authSearch.IdRole == 2)
                {
                    Window userWin = new UserWindow();
                    userWin.Title = "Пользователь " + authSearch.Login;
                    userWin.Show();
                    Close();
                }
           }
           catch
           {
               MessageBox.Show("Неверно введен пароль или логин!");
           }  
        }

        private void Reg_Click(object sender, RoutedEventArgs e)
        {
            Window reg = new registrationWindow();
            reg.Show();
        }
    }
}
