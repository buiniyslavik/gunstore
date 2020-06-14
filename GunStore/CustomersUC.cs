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
    public partial class CustomersUC : UserControl
    {
        Form1 par;
        DBController dbc;
        public CustomersUC()
        {
            InitializeComponent();
        }

        private void CustomersUC_Load(object sender, EventArgs e)
        {
            refresh();
            par = (Form1)this.FindForm();
            dbc = DBController.Instance;
        }
        private void refresh()
        {
            клиентыTableAdapter.Fill(gunstoreDataSet.Клиенты);
            dataGridView1.AutoResizeColumns(
                DataGridViewAutoSizeColumnsMode.AllCells);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            CustomerAddPopupForm f = new CustomerAddPopupForm();
            f.ShowDialog();
            refresh();
        }

        private void newOrderBtn_Click(object sender, EventArgs e)
        {
            int ClientID = Convert.ToInt32(dataGridView1.SelectedRows[0].Cells[2].Value);
            int OrderNumber = dbc.CreateOrder(ClientID);
            TabController.OpenTab(par, new OrderDetailsControl(OrderNumber), $"Заказ {OrderNumber}");
        }
    }
}
