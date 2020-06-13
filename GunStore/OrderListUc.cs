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

        private void editOrderBtn_Click(object sender, EventArgs e)
        {
            Form1 par = (Form1)this.FindForm();
            int n = Convert.ToInt32(dataGridView1.SelectedRows[0].Cells[0].Value);
            TabController.OpenOrderDetails(par, n);
           
            
        }
    }
}
