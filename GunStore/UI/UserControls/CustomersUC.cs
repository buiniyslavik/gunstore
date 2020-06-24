using System;
using System.Windows.Forms;

namespace GunStore
{
    public partial class CustomersUC : UserControl
    {
        private MainForm par;
        private DBController dbc;
        public CustomersUC()
        {
            InitializeComponent();
        }

        private void CustomersUC_Load(object sender, EventArgs e)
        {
            refresh();
            par = (MainForm)FindForm();
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
            using (var f = new CustomerAddPopupForm())
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
