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
    /// Interaction logic for UpdateRecord.xaml
    /// </summary>
    public partial class UpdateRecord : Window
    {
        wpf_crudEntities _db = new wpf_crudEntities();
        long ID;

        public UpdateRecord(long record_id)
        {
            InitializeComponent();
            ID = record_id;
        }

        private void btn_Update_Click(object sender, RoutedEventArgs e)
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

            records updateRecord = (from r in _db.records where r.record_id == ID select r).Single();

            updateRecord.last_name = txt_LastName.Text;
            updateRecord.first_name = txt_FirstName.Text;
            updateRecord.middle_name = txt_MiddleName.Text;
            updateRecord.gender = Gender.ToString();

            _db.SaveChanges();

            MainWindow._dg.ItemsSource = _db.records.ToList();

            this.Close();
        }
    }
}
