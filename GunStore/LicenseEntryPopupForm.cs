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
    public partial class LicenseEntryPopupForm : Form
    {
        public LicenseEntryPopupForm(Firearm f)
        {
            InitializeComponent();
            headLabel.Text = $"Добавление лицензии для {f.Name} в заказе {f.OrderId}";
            switch(f.Type)
            {
                case FirearmClass.SHOTGUN:
                    label6.Text = "Гладкоствольное оружие";
                    break;
                case FirearmClass.RIFLE:
                    label6.Text = "Нарезное оружие";
                    break;
                case FirearmClass.LESSLETHAL:
                    label6.Text = "ОООП";
                    break;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
