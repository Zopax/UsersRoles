   M S B A M L   `   `   `  ����E  AUsersRoles, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:UsersRoles
UsersRoles  5   	   b ^Microsoft.VisualBasic.Core, Version=12.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3aaGclr-namespace:Microsoft.VisualBasic;assembly=Microsoft.VisualBasic.CoreMicrosoft.VisualBasic 60   #    UsersRoles.registrationWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:UsersRoles     5   	   Vi1Gclr-namespace:Microsoft.VisualBasic;assembly=Microsoft.VisualBasic.Core     60     � Title$  Регистрация��5	   	   $	��370��6   $	��340��6*    � 
ResizeMode$ NoResize=�66    � WindowStartupLocation$ CenterScreen=�5
   	   .��5      �  � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��35 �6   �� 5      $��35 �6   �� 5      $��35 �6   �� 5      $��35 �6   �� 5      $��35 �6   �� 5      $��35 �6   �� 5      $��25 �6   �� 5      $��25 �6   �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $��Логин*��6   $��1��6"   $��18(�6/   $��20,0,0,0q�6=   �� 5   
   $��Пароль*��6   $��2��6#   $��18(�60   $��20,0,0,0q�6>   �� 5   
   $��Имя*��6   $��3��6    $��18(�6-   $��20,0,0,0q�6;   �� 5   
   $��Фамилия*��6   $��4��6$   $��18(�61   $��20,0,0,0q�6?   �� 5    
   $��Отчество*��6   $��5��6&   $��18(�63   $��20,0,0,0q�6A   �� 5!   
   $��	Роль*��6   $��6��6!   $��18(�6.   $��20,0,0,0q�6<   �� 5"   
   -   5        $��	ComboRole��5"      $��6��6%   $��1��62   $	��165��6B   $��25��6N    �� SelectedValuePath$ Id��5#       �� SelectedIndex$ 0��6*   �� 5$   
   -   5        $��login��5$      $��1��6   $��1��6,   $��30��6<      PlaceholderTextBoxStyle#��[  6H   
 � Tag$+ %Введите что нибудь...��5%      $��16(�6.   G� 5&   
   -   5        $��pasword��5&      $��2��6%   $��1��62   $��30��6B   $+ %Введите что нибудь...��5'      $��16(�6.    G� PasswordChar$ *��6<   �� 5(   
   -   5        $��fName��5(      $��3��6   $��1��6,   $��30��6<   #��[  6H   $+ %Введите что нибудь...��5)      $��16(�6.   �� 5*   
   -   5        $��lName��5*      $��4��6   $��1��6,   $��30��6<   #��[  6H   $+ %Введите что нибудь...��5+      $��16(�6.   �� 5,   
   -   5        $��surname��5,      $��5��6!   $��1��6.   $��30��6>   #��[  6J   $+ %Введите что нибудь...��5-      $��16(�6.   �� 5.   
   -   5        $��	RegButton��5.      $��9��6"   $��30��6/   $	��140��6;   $��Center=�6G   $*��$Зарегистрироватсья��5/      $��14(�6.   $��2��6<   51      53      54      