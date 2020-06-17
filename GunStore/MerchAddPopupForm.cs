using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Transactions;

namespace GunStore
{
    public partial class MerchAddPopupForm : Form
    {
        DBController dbc;
        public MerchAddPopupForm()
        {
            InitializeComponent();
            dbc = DBController.Instance;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using (TransactionScope t = new TransactionScope())
            {
                dbc.CreateMerch(NameTextBox.Text, DescriptionTextBox.Text, Convert.ToDecimal(priceTextBox.Text), Convert.ToInt32(numericUpDown1.Text));
                t.Complete();
            }
            this.Close();
        }

        private void priceTextBox_Validating(object sender, CancelEventArgs e)
        {
            Decimal p;
            if (!Decimal.TryParse(priceTextBox.Text, out p))
            {
                errorProvider1.SetError(priceTextBox, "Цена введена неверно");
                e.Cancel = true;
            }
        
        }
    }
}
