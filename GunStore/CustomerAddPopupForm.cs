using System;
using System.Windows.Forms;

namespace GunStore
{
    public partial class CustomerAddPopupForm : Form
    {
        DBController dbc = DBController.Instance;
        public CustomerAddPopupForm()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dbc.AddCustomer(NameTextBox.Text, PhoneNumTextBox.Text);
            FindForm().Close();
        }
    }
}
