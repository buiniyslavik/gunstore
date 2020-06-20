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
        private License tempLic;
        public LicenseEntryPopupForm(Firearm f, License lic)
        {
            InitializeComponent();
            currentGun = f;
            tempLic = lic;
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
            //tempLic = new License(licNumBox.Text, licNameBox.Text, Convert.ToDateTime(licIssueDateBox.Text),
            //Convert.ToDateTime(licExpiryDateBox.Text), licIssuerBox.Text, currentGun.Type);

            // licStore.Add(currentGun, lic);
            tempLic.Number = licNumBox.Text;
            tempLic.HolderName = licNameBox.Text;
            tempLic.IssueDate = Convert.ToDateTime(licIssueDateBox.Text);
            tempLic.ExpiryDate = Convert.ToDateTime(licExpiryDateBox.Text);
            tempLic.Issuer = licIssuerBox.Text;
            this.Close();
        }

        private void LicenseEntryPopupForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            //if (e.CloseReason == CloseReason.UserClosing) throw new ApplicationException("License entry aborted, cannot continue checkout");
        }
    }
}
