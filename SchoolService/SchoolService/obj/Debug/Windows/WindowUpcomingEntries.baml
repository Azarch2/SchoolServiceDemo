   M S B A M L   `   `   `  ����H  DSchoolService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:SchoolServiceSchoolService  5   	   )    #SchoolService.WindowUpcomingEntries   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:SchoolService     5   	     � Title$4  .Список ближайших записей��5   	   $	��600��6*   $
��1000��67    � Icon$" ../Resources/school_logo.ico��6D    � WindowStartupLocation$ CenterScreen=�6h   .��5	      �  � RowDefinitions 5
   
   �� 5      $��80 �6   6*   �� 5      6   �� 5      $��75 �6   6*   .+�5   
   ��    SecondColor#��[  6   6=   �� 5   
   $��3��6   #��[  6   6J   �� 5   
     StandartTextBlock#��[ 6     
ThirdColor#��[ 6?   $Z��TЗдесь вы можете просмотреть билжайшие записи!��6h   6�   �� 5   
   $��50��6   $
��Left=�6   $��Center=�66   $��10,0,0,0q�6R   6f   �� 5   
   -   5        $��ListViewUpcomingEntries��5       $��1��6   $��20(�6?    �� View 5      �� 5      .P�5      �� $��Наименование��6%    �� CellTemplate 5      �� 5      .R�5   "   �� ��6,   �� *Service.Name+6L   5      5      �� 5      $��ФИО��6%    5      �� 5      .R�5    "   �� ��5!   &   `� 5"   *    �� StringFormat$ {0} {1} {2}��67   .1�5#   .   ��  �� Path$ Client.Surname�66   6N   �� 5$   .   $ Client.Name�66   6K   �� 5%   .   $ Client.Patronymic�66   6Q   5&   +   5(   #   5)      5+      �� 5,      $��Email��6%    5-      �� 5.      .R�5/   "   �� ��6,   �� *Client.Email+6L   50      52      �� 53      $��Телефон��6%    54      �� 55      .R�56   "   �� ��6,   �� *Client.Phone+6L   57      59      �� 5:      $)��#Дата и время записи��6%    5;      �� 5<      .R�5=   "   �� ��6,   �� *ServiceTime+6K   5>      5@      �� 5A      $/��)Время до начала услуги��6%    5B      �� 5C      .R�5D   "   �� ��6,   �� *
Foreground+��6N   �� *timeToStart+6m   5E      5G      5H      5J      &   System.Windows.Controls.DataGrid  5K   
   -   5        $��DataGridUpcomingEntries��5K   4   $y�Hidden=�6   $��1��6'   $��20(�6S      AutoGenerateColumns .  	   Columns	 5L      0  *System.Windows.Controls.DataGridTextColumn  5M      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Наименование��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *Service.Name+6^     5N      $
 ФИО��6%    5O      `� 5P      $ {0} {1} {2}��6'   .1�5Q      �� $ Client.Surname�6&   6>   �� 5R      $ Client.Name�6&   6;   �� 5S      $ Client.Patronymic�6&   6A   5T      5V        5W      $
 Email��6%    64   �� *Client.Email+6W     5X      $
 Телефон��6%    66   �� *Client.Phone+6Y     5Y      $)
 #Дата и время записи��6%    6B   �� *ServiceTime+6d     5Z      $/
 )Время до начала услуги��6G      
Foreground 6%   �� *
Foreground+ 6g   �� *timeToStart+6�   5\      �� 5]   
   -   5        $��3��5]      $
��Left=�6   $��10q�69     DefaultColor#��[ 6E   $��
Назад��6p     StandartButton#��[ 6�   #��[ 6�   6�   5^      5_      