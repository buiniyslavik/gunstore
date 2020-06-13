using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
