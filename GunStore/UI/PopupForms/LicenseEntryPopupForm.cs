using System;
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
            switch (currentGun.Type)
            {
                case FirearmClass.Shotgun:
                    label6.Text = "Гладкоствольное оружие";
                    break;
                case FirearmClass.Rifle:
                    label6.Text = "Нарезное оружие";
                    break;
                case FirearmClass.LessLethal:
                    label6.Text = "ОООП";
                    break;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            tempLic.Number = licNumBox.Text;
            tempLic.HolderName = licNameBox.Text;
            tempLic.IssueDate = Convert.ToDateTime(licIssueDateBox.Text);
            tempLic.ExpiryDate = Convert.ToDateTime(licExpiryDateBox.Text);
            tempLic.Issuer = licIssuerBox.Text;
            Close();
        }

        private void LicenseEntryPopupForm_FormClosing(object sender, FormClosingEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            throw new ApplicationException("License entry aborted, cannot continue checkout");
        }
    }
}
