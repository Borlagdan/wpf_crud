   M S B A M L   `   `   `  ����C  ?WPF_CRUD, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:WPF_CRUDWPF_CRUD  5   	       WPF_CRUD.UpdateRecord   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:WPF_CRUD     5   	     � Title$  Update Record��5   	   $	��250��6    $	��300��6-    � WindowStartupLocation$ CenterScreen=�69   .��5	      � $��5q�6    � ColumnDefinitions 5
   
   �� 5      $
��.40* �6   �� 5      $
��.60* �6    � RowDefinitions 5   
   �� 5      $
��.20* �6   �� 5      $
��.20* �6   �� 5      $
��.20* �6   �� 5      $
��.20* �6   �� 5      $
��.20* �6   .+�5   
   �� $��0��6   $��0��5      $��	Last Name��5      $��5q�5      $��Center=�5      5      �� 5   
   -   5         ��Name$ txt_LastName��5"      $��1��5      $��0��5      $��5q�5       $��Center=�5!      .��5"   (   5#      �� 5%   
   $��0��6   $��1��5&      $��
First Name��5'      $��5q�5(      $��Center=�5)      5*      �� 5,   
   -   5        $ txt_FirstName��50      $��1��5,      $��1��5-      $��5q�5.      $��Center=�5/      .��50   )   51      �� 53   
   $��0��6   $��2��54      $��Middle Name��55      $��5q�56      $��Center=�57      58      �� 5:   
   -   5        $ txt_MiddleName��5>      $��1��5:      $��2��5;      $��5q�5<      $��Center=�5=      .��5>   *   5?      �� 5A   
   $��0��6   $��3��5B      $��Gender��5C      $��5q�5D      $��Center=�5E      5F      �� 5H   
   $��1��6   $��3��5I       �� Orientation$ 
Horizontal=�5J      $��5q�5K      $��Center=�5L      .+�5M      	� -   5         	�Name$ 	rbtn_Male��5P      $
��Male��5M       	� 	GroupName$ Gender��5N       d� 	IsChecked$
 TrueY�5O      5Q      	� 5S      -   5        $ rbtn_Female��5V      $��Female��5S      $ Gender��5T      $	��5 0q�5U      5W      5X      �� 5Z   
   -   5        	 ��Name$	 
btn_Update��5^      $��2��5Z      $��4��5[      $��Update��5\      $��5q�5]      5`      5a      5b      