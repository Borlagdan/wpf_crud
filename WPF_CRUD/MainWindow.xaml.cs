using System.Linq;
using System.Windows;
using System.Windows.Controls;
using MahApps.Metro.Controls;

namespace WPF_CRUD
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MetroWindow
    {
        wpf_crudEntities _db = new wpf_crudEntities();
        public static DataGrid _dg;

        public MainWindow()
        {
            InitializeComponent();

            Initialize();
        }

        private void Initialize()
        {
            dgv_Records.ItemsSource = _db.records.ToList();
            _dg = dgv_Records;
        }

        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {
            InsertRecord insertRecord = new InsertRecord();
            insertRecord.Show();
        }

        private void btn_Update_Click(object sender, RoutedEventArgs e)
        {
            long Record_ID = (dgv_Records.SelectedItem as records).record_id;

            UpdateRecord updateRecord = new UpdateRecord(Record_ID);
            updateRecord.Show();
        }

        private void btn_Remove_Click(object sender, RoutedEventArgs e)
        {
            long ID = (dgv_Records.SelectedItem as records).record_id;

            var removeRecord = _db.records.Where(r => r.record_id == ID).Single();

            _db.records.Remove(removeRecord);
            _db.SaveChanges();

            dgv_Records.ItemsSource = _db.records.ToList();
        }
    }
}
