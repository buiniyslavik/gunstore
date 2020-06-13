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
   /*     static public void OpenOrderDetails(Form1 f, int OrderNum)
        {
            TabPage detailsPage = new TabPage();
            detailsPage.Text = $"Заказ {OrderNum}";
            detailsPage.Controls.Add(new OrderDetailsControl(OrderNum));
            if (f != null)
            {
                f.tabControl1.TabPages.Add(detailsPage);
                f.tabControl1.SelectedTab = detailsPage;
            }
        } */

        static public void OpenTab(Form1 f, UserControl u, string name)
        {
            TabPage p = new TabPage();
            p.Text = name;
            p.Controls.Add(u);
            if (f != null)
            {
                f.tabControl1.TabPages.Add(p);
                f.tabControl1.SelectedTab = p;
            }
        }
        
    }
}
