using System;
using System.Windows.Forms;

namespace GunStore
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            tabControl1.TabPages[0].Controls.Add(new CustomersUC());
        }

        private void клиентыToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TabController.OpenTab(this, new CustomersUC(), "Клиенты");
        }

        private void товарыToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TabController.OpenTab(this, new MerchUC(), "Товары");
        }

        private void закрытьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (tabControl1.TabCount > 0)
                tabControl1.TabPages.RemoveAt(tabControl1.SelectedIndex);
        }

        private void заказыToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TabController.OpenTab(this, new OrderListUc(), "Заказы");
        }
    }
}
