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

        Form1 par;
        public OrderListUc()
        {
            InitializeComponent();
        }

        private void OrderListUc_Load(object sender, EventArgs e)
        {
            заказыTableAdapter.Fill(gunstoreDataSet.Заказы);
            dataGridView1.AutoResizeColumns(
                DataGridViewAutoSizeColumnsMode.AllCells);

            par = (Form1)this.FindForm();
        }

        private void editOrderBtn_Click(object sender, EventArgs e)
        {
            int n = Convert.ToInt32(dataGridView1.SelectedRows[0].Cells[0].Value);
            TabController.OpenOrderDetails(par, n);             
        }
    }
}
