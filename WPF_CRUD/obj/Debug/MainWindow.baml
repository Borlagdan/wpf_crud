   M S B A M L   `   `   `  ����U  QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   C ?WPF_CRUD, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:WPF_CRUDWPF_CRUD 5
   	      WPF_CRUD.MainWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   U QMaterialDesignThemes.Wpf, Version=2.3.1.953, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   "localclr-namespace:WPF_CRUD  5
   	      MaterialDesignBody#���   5   	     MaterialDesignPaper#���  5   	   $��Medium"�5   	   $��14(�5   	   $X��Rpack://application:,,,/MaterialDesignThemes.Wpf;component/Resources/Roboto/#Roboto)�5   	     � Title$  
MainWindow��5   	   $	��400��6   $	��650��6)   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��.80* �6   �� 5      $
��.20* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgv_Records��5       $��0��6      AutoGenerateColumns .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 5         CanUserSortColumns .    CanUserAddRows .     
IsReadOnly .    Columns 5!      0  *System.Windows.Controls.DataGridTextColumn  5"      ,  &System.Windows.Controls.DataGridColumn	   Header$	 ID��6%   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 61   �� *	record_id+  5#      $	 	Last Name��6%   
 68   �� *	last_name+  5$      $	 
First Name��6%   
 69   �� *
first_name+  5%      $	 Middle Name��6%   
 6:   �� *middle_name+  5&      $	 Gender��6%   
 65   �� *gender+4  .System.Windows.Controls.DataGridTemplateColumn  5'         HeaderTemplate 5(      �� 5)      .R�5*      �� $��Options��6(   5+         CellTemplate 5.      �� 5/      .R�50      ��  �� Orientation$ 
Horizontal=�6)   .+�51   "   ��  ��Name$ 
btn_Update��55   )   -   5         * &MaterialDesignFloatingActionDarkButton#��[ 51   )    � ToolTip$ Update Record��52   )   $��30��53   )   $��30��54   )   .��57   &   '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.1.953, Culture=neutral, PublicKeyToken=null]]   Kind$ Pencil=�6>   $��24��58   >   $��24��59   >   5:   '   5;   #   �� 5=   "   $ 
btn_Remove��5B   )   -   5        #��[ 5=   )   $ Remove Record��5>   )   $��30��5?   )   $��30��5@   )   $	��5 0q�5A   )   .��5D   &     $ Close=�6>   $��24��5E   >   $��24��5F   >   5G   '   5H   #   5I      5J      5L      5N      �� 5P   
   -   5        $ btn_Add��5T      $��1��5P      #��[ 5Q      $ Add New Record��5R      $��Right=�5S      .��5V        $
 Plus=�6&   $��24��5W   &   $��24��5X   &   5Y      5Z      5[      5\      