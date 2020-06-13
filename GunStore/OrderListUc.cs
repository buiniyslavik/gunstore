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
    public partial class OrderListUc : UserControl
    {
        public OrderListUc()
        {
            InitializeComponent();
        }

        private void OrderListUc_Load(object sender, EventArgs e)
        {
            заказыTableAdapter.Fill(gunstoreDataSet.Заказы);
            dataGridView1.AutoResizeColumns(
                DataGridViewAutoSizeColumnsMode.AllCells);
        }
    }
}
