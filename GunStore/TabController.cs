using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
namespace GunStore
{
    static public class TabController
    {
        static public void OpenOrderDetails(Form1 f, int OrderNum)
        {
            TabPage detailsPage = new TabPage();


            //int n = Convert.ToInt32(dataGridView1.SelectedRows[0].Cells[0].Value);
            detailsPage.Text = $"Заказ {OrderNum}";
            detailsPage.Controls.Add(new OrderDetailsControl(OrderNum));
            if (f != null)
            {
                f.tabControl1.TabPages.Add(detailsPage);
                f.tabControl1.SelectedTab = detailsPage;
            }
        }
}
}
