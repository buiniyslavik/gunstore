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
        private Firearm currentGun;
        private Dictionary<Firearm, License> licStore;
        public LicenseEntryPopupForm(Firearm f, Dictionary<Firearm, License> lics)
        {
            InitializeComponent();
            currentGun = f;
            licStore = lics;
            headLabel.Text = $"Добавление лицензии для {currentGun.Name} в заказе {currentGun.TypeId}";
            switch(currentGun.Type)
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
            var lic = new License(licNumBox.Text, licNameBox.Text, Convert.ToDateTime(licIssueDateBox.Text),
                Convert.ToDateTime(licExpiryDateBox.Text), licIssuerBox.Text, currentGun.Type);
            licStore.Add(currentGun, lic);
            this.Close();
        }
    }
}
