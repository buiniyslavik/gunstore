using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GunStore
{
    public partial class OrderDetailsControl : UserControl
    {
        public OrderDetailsControl(int OrderNumber)
        {
            InitializeComponent();
            orderNumberTextBox.Text = OrderNumber.ToString();
            //string query = $"SELECT * FROM ТоварыВЗаказах JOIN Товары ON ТоварыВЗаказах.Артикул = Товары.Артикул WHERE НомерЗаказа = {OrderNumber}";
            товарыВЗаказахTableAdapter1.Fill(gunstoreDataSet.ТоварыВЗаказах, OrderNumber);
            dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
        }
    }
}
