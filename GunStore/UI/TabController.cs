using System.Windows.Forms;
namespace GunStore
{
    static public class TabController
    {
        static public void OpenTab(MainForm f, UserControl u, string name)
        {
            TabPage p = new TabPage
            {
                Text = name
            };
            p.Controls.Add(u);
            if (f != null)
            {
                f.tabControl1.TabPages.Add(p);
                f.tabControl1.SelectedTab = p;
            }
        }

    }
}
