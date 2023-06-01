using System;
using System.Collections.Generic;
using System.Globalization;
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
    /// Interaction logic for registrationWindow.xaml
    /// </summary>
    public partial class registrationWindow : Window
    {
        public registrationWindow()
        {
            InitializeComponent();
            ComboRole.ItemsSource = Helper.GetContext().Roles.ToList();
            ComboRole.DisplayMemberPath = "NameRole";
        }

        private void Reg_Click(object sender, RoutedEventArgs e)
        {
            if (login.Text.Length > 0 && pasword.Password.ToString().Length > 0 && fName.Text.Length > 0 && lName.Text.Length > 0
                && surname.Text.Length > 0 && ComboRole.Text.Length > 0)
            {
                User newUser = new User();
                try
                {
                    newUser.Id = Helper.GetContext().Users.Max(q => q.Id) + 1;
                }
                catch
                {
                    newUser.Id = 0;
                }    
                newUser.Login = login.Text;
                newUser.Pasword = pasword.Password.ToString();
                newUser.FirstName = fName.Text;
                newUser.LastName = lName.Text;
                newUser.Surname = surname.Text;
                newUser.IdRole = (int)ComboRole.SelectedValue;
                Helper.GetContext().Users.Add(newUser);
                Helper.GetContext().SaveChanges();
                Close();
            }
            else
            {
                MessageBox.Show("Не все данные введены");
            }
        }
    }
}
