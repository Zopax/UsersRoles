   M S B A M L   `   `   `  ����E  AUsersRoles, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:UsersRoles
UsersRoles  5   	       UsersRoles.Authorization   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:UsersRoles     5   	     � Title$  Авторизация��5   	   $	��450��6   $	��800��6*    � 
ResizeMode$ NoResize=�66    � WindowStartupLocation$ CenterScreen=�5	   	   .��5
      �  � RowDefinitions 5   
   �� 5      �� 5      $��48 �6   �� 5      $��35 �6   �� 5      $��35 �6   �� 5      $��40 �6   �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      .+�5   
   �� $��1��6   $��1��6!   $��Авторизация��61   $��Center=�5      $��Center=�5      $��40(�6/   $��Cambria)�5      �� 5   
   -   5        $��AuthText��5      $��2��6"   $��1��6/   $��Center=�5      $��Center=�5      $	��240��5      $��30��6      PlaceholderTextBoxStyle#��[  5       
 � Tag$ 
Логин��6C   $��20(�5!      G� 5"   
   -   5        $��PassText��5"      $��3��6&   $��1��63   $��Center=�5#      $��Center=�5$      $	��240��5%      $��30��6   $��20(�5&       G� PasswordChar$ *��6    �� 5'   
   -   5        $
��Auth��5'      $��1��6   $��4��6.   $��30��5(      $	��115��6   $��
Войти��6)   $��Right=�5)      $��0,0,12,0q�6-   5*      �� 5+   
   -   5        $	��Reg��5+      $��1��6   $��4��6-   $��30��5,      $	��115��6   $��Регистрация��6)   $
��Left=�5-      $��13,0,0,0q�6,   5.      5/      50      