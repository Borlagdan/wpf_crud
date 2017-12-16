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

namespace WPF_CRUD
{
    /// <summary>
    /// Interaction logic for InsertRecord.xaml
    /// </summary>
    public partial class InsertRecord : Window
    {
        wpf_crudEntities _db = new wpf_crudEntities();

        public InsertRecord()
        {
            InitializeComponent();
        }

        private void btn_Insert_Click(object sender, RoutedEventArgs e)
        {
            string Gender;

            if (rbtn_Male.IsChecked == true)
            {
                Gender = "Male";
            }

            else
            {
                Gender = "Female";
            }
            
            records newRecord = new records()
            {
                last_name = txt_LastName.Text,
                first_name = txt_FirstName.Text,
                middle_name = txt_MiddleName.Text,
                gender = Gender.ToString()
            };

            _db.records.Add(newRecord);
            _db.SaveChanges();

            MainWindow._dg.ItemsSource = _db.records.ToList();

            this.Close();
        }
    }
}
