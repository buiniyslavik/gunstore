using System;
using System.ComponentModel;
using System.Transactions;
using System.Windows.Forms;

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
            Close();
        }

        private void priceTextBox_Validating(object sender, CancelEventArgs e)
        {
            decimal p;
            if (!decimal.TryParse(priceTextBox.Text, out p))
            {
                errorProvider1.SetError(priceTextBox, "Цена введена неверно");
                e.Cancel = true;
            }

        }
    }
}
