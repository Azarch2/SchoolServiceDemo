   M S B A M L   `   `   `  ����H  DSchoolService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:SchoolService.WindowsSchoolService.Windows  5   	   ,    &SchoolService.Windows.WindowAddService   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:SchoolService.Windows     5   	   -   5          � Title$0  *Окно добавления услуги��5   	   $	��450��6(   $	��650��65    � Icon$" ../Resources/school_logo.png��6Q    � WindowStartupLocation$ CenterScreen=�6u   .��5	      �  � RowDefinitions 5
   
   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      $	��120 �6   6+   �� 5      6    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   .+�5   
   �� $��2��6      SecondColor#��[  6%   6Q   �� 5   
   $��2��6     StandartTextBlock#��[ 6)   $'��!Добавление услуги��6T   6o   �� 5   
   $��1��6   #��[ 6!   $��Наименование��6L   6b   �� 5   
   -   5        $��TextBoxName��5        StandartTextBox#��[ 6%   $��1��6N   $��1��6[   $��5q�6k     
ThirdColor#��[ 6v   6�   �� 5   
   $��2��6   #��[ 6!   $��Длительность��6L   6b   �� 5   
   -   5        $��TextBoxDuration��5      #��[ 6)   $��2��6R   $��1��6_   $��5q�6o   #��[ 6z   6�   �� 5   
   $��3��6   #��[ 6!   $��Стоимость��6L   6_   �� 5   
   -   5        $��TextBoxCost��5      #��[ 6%   $��3��6N   $��1��6[   $��5q�6k   #��[ 6v   6�   �� 5   
   $��4��6   #��[ 6!   $��Скидка��6L   6\   �� 5    
   -   5        $��TextBoxDiscount��5       #��[ 6)   $��4��6R   $��1��6_   $��5q�6o   #��[ 6z   6�   �� 5!   
   -   5          StandartButton#��[ 5!      $��Выбор фото��69   $	��300��6N   $��5��6Z   $��5q�6h   #��[  6t   6�   �� 5"   
   -   5         ��Name$ ImageChoosedPhoto��5"      $��5q�6+   $��5��66   $��1��6C   6U   �� 5#   
   -   5        #��[ 5#      $#��Добавить услугу��69   $	��300��6S   $��6��6_   $��2��6l   $��5q�6�     DefaultColor#��[ 6�   #��[ 6�   6�   5$      5%      