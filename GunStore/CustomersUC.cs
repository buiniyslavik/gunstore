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
        public CustomersUC()
        {
            InitializeComponent();
        }

        private void CustomersUC_Load(object sender, EventArgs e)
        {
            клиентыTableAdapter.Fill(gunstoreDataSet.Клиенты);
            dataGridView1.AutoResizeColumns(
                DataGridViewAutoSizeColumnsMode.AllCells);

            par = (Form1)this.FindForm();
        }
    }
}
