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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            tabControl1.TabPages[0].Controls.Add(new OrderListUc());
        }

        private void клиентыToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TabController.OpenTab(this, new CustomersUC(), "Клиенты");
        }
    }
}
