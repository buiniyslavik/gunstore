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
    public partial class AddMerchToOrder : UserControl
    {
        DBController dbc;
        int OrderNumber;
        public AddMerchToOrder(int orderNumber)
        {
            InitializeComponent();
            OrderNumber = orderNumber;
            orderNumberBox.Text = OrderNumber.ToString();
            dbc = DBController.Instance;
        }

        private void addMerchBtn_Click(object sender, EventArgs e)
        {
            int ItemID = Convert.ToInt32(dataGridView1.CurrentRow.Cells[0].Value);
            int Quantity = Convert.ToInt32(numericUpDown1.Value);
            dbc.AddMerchToOrder(OrderNumber, ItemID, Quantity);
            FindForm().Close();
        }

        private void AddMerchToOrder_Load(object sender, EventArgs e)
        {
            товарыTableAdapter.Fill(gunstoreDataSet.Товары);
            dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            descriptionBox.Text = dataGridView1.CurrentRow.Cells["описаниеDataGridViewTextBoxColumn"].Value.ToString();
        }
    }
}
