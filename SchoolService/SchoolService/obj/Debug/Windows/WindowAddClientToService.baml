   M S B A M L   `   `   `  ����H  DSchoolService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:SchoolService.WindowsSchoolService.Windows  5   	   4    .SchoolService.Windows.WindowAddClientToService   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:SchoolService.Windows     5   	   -   5          � Title$<  6Окно записи клиента на услугу��5   	   $	��450��6/   $	��650��6<   $	��450��6H   $	��600��6X    � Icon$" ../Resources/school_logo.png��6w    � WindowStartupLocation$ CenterScreen=�6�   .��5	      �  � RowDefinitions 5
   
   �� 5      $��50 �6   6*   �� 5      6   .+�5   
   ��    SecondColor#��[  6   6=   �� 5   
     StandartTextBlock#��[ 6   $3��-Запись клиента на услугу��6?   6a   �� 5   
   $��1��6    �� Orientation$ Vertical=�6"   .+�5      �� $ 
Horizontal=�6   $��5q�62   $��1��6=   $��50��6J   $	��Top=�6V   .+�5      �� -   5        $��TextBlockName��5      #��[ 6-   $-��'Наименование услуги: ��6X   6w   5      �� 5   
   $ 
Horizontal=�6   $��5q�6.   $��1��69   $��50��6F   $	��Top=�6R   .+�5      �� -   5        $��TextBlockDuration��5      #��[ 61   $-��'Длительность услуги: ��6\   6{   5      �� 5      $ 
Horizontal=�6   $��5q�62   $��1��6=   $��50��6J   $	��Top=�6V   .+�5      �� #��[ 6   $'��!Выберите клиента: ��6G   6c   �� 5      -   5        $��ComboBoxChooseClient��5   9   $��30,0,0,0q�6   $	��300��6-     StandartComboBox#��[ 6U    �� Text$- 'Длительность услуги: ��6   ��5      �� 5      .R�5      �� ��5   "   `� 5   &    �� StringFormat$ {0} {1} {2}��63   .1�5   *   ��  �� Path$ Surname�62   �� 5    *   $
 Name�62   �� 5!   *   $ 
Patronymic�62   5"   '   5$      5%      5'      5(      �� 5)      $ 
Horizontal=�6   $��5q�62   $��1��6=   $��50��6J   $	��Top=�6V   .+�5*      �� #��[ 6   $!��Выберите дату: ��6G   6`   (  "System.Windows.Controls.DatePicker  5+      -   5        $��DatePickerDate��5+      $��22(�63   $��20,0,0,0q�6A   6U   5,      �� 5-      $ 
Horizontal=�6   $��5q�62   $��1��6=   $��50��6J   $	��Top=�6V   .+�5.      �� #��[ 6   $0��*Время оказания услуги: ��6G   6h   �� 5/      -   5        $��TextBoxTime��5/   &   $	��300��6   $��22(�69   $��20,0,0,0q�6G     StandartTextBox#��[ 6Y   #��[  6�   6�   50      51      �� 52   
   -   5          DefaultColor#��[ 52        
ThirdColor#��[ 6<   $��1��6e   $��10q�6r     StandartButton#��[ 6~   $7��1Записать клиента на услугу��6�   $��Bottom=�6�   6  �� 53   
   -   5        $
��Left=�53      #��[ 6,   #��[ 6W   $��1��6�   $��10q�6�   #��[ 6�   $��
Назад��6�   $��Bottom=�6�   6   54      55      