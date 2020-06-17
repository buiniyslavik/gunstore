using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace GunStore
{
    public partial class OrderDetailsControl : UserControl
    {
        int OrderNumber;
        DBController db;
        List<Firearm> guns = new List<Firearm>();
        Dictionary<Firearm, License> licenses = new Dictionary<Firearm, License>();
        public OrderDetailsControl(int orderNumber)
        {
            InitializeComponent();
            OrderNumber = orderNumber;
            orderNumberTextBox.Text = OrderNumber.ToString();
            //string query = $"SELECT * FROM ТоварыВЗаказах JOIN Товары ON ТоварыВЗаказах.Артикул = Товары.Артикул WHERE НомерЗаказа = {OrderNumber}";
            db = DBController.Instance;
            refresh();
        }

        private void refresh()
        {

            товарыВЗаказахTableAdapter1.Fill(gunstoreDataSet.ТоварыВЗаказах, OrderNumber);
            dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
            totalBox.Text = db.GetOrderTotal(OrderNumber).ToString();
           
        }

        private FirearmClass fillFirearms(DataGridViewRow r, bool fillList)
        {
            if (r.Cells["номерТипаГсDataGridViewTextBoxColumn"].Value.ToString() != String.Empty)
            {
                if(fillList) guns.Add(new Firearm(r.Cells["названиеDataGridViewTextBoxColumn"].Value.ToString(),
                                     Convert.ToInt32(r.Cells["номерТипаГсDataGridViewTextBoxColumn"].Value),
                                     -1,
                                     FirearmClass.SHOTGUN));
                return FirearmClass.SHOTGUN;
            }
            if (r.Cells["номерТипаНарDataGridViewTextBoxColumn"].Value.ToString() != String.Empty)
            {
                if (fillList) guns.Add(new Firearm(r.Cells["названиеDataGridViewTextBoxColumn"].Value.ToString(),
                                     Convert.ToInt32(r.Cells["номерТипаНарDataGridViewTextBoxColumn"].Value),
                                     -1,
                                     FirearmClass.RIFLE));
                return FirearmClass.RIFLE;
            }
            if (r.Cells["номерТипаОоопDataGridViewTextBoxColumn"].Value.ToString() != String.Empty)
            {
                if (fillList) guns.Add(new Firearm(r.Cells["названиеDataGridViewTextBoxColumn"].Value.ToString(),
                                     Convert.ToInt32(r.Cells["номерТипаОоопDataGridViewTextBoxColumn"].Value),
                                     -1,
                                     FirearmClass.LESSLETHAL));
                return FirearmClass.LESSLETHAL;
            }
            return FirearmClass.NOTAGUN;
        }

        private void addToOrderBtn_Click(object sender, EventArgs e)
        {
            Form addPopup = new Form();
            addPopup.AutoSize = true;
            addPopup.FormBorderStyle = FormBorderStyle.FixedToolWindow;
            addPopup.Controls.Add(new AddMerchToOrder(OrderNumber));
            addPopup.ShowDialog();
            refresh();
        }

        private void dataGridView1_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {            
            using (DataGridViewCheckBoxCell c = new DataGridViewCheckBoxCell())
            {
                c.TrueValue = true;
                c.FalseValue = false;
                foreach (DataGridViewRow r in dataGridView1.Rows)
                {
                    switch (fillFirearms(r, true))
                    {
                        case FirearmClass.SHOTGUN:
                            r.DefaultCellStyle.BackColor = Color.LightGreen;
                            r.DefaultCellStyle.SelectionBackColor = Color.Green;
                            r.Cells["IsAGunColumn"].Value = c.TrueValue;
                            break;

                        case FirearmClass.RIFLE:
                            r.DefaultCellStyle.BackColor = Color.LightPink;
                            r.DefaultCellStyle.SelectionBackColor = Color.Red;
                            r.Cells["IsAGunColumn"].Value = c.TrueValue;
                            break;

                        case FirearmClass.LESSLETHAL:
                            r.DefaultCellStyle.BackColor = Color.LightCyan;
                            r.DefaultCellStyle.SelectionBackColor = Color.Blue;
                            r.Cells["IsAGunColumn"].Value = c.TrueValue;
                            break;
                    }
                }
            }
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToBoolean(dataGridView1.SelectedRows[0].Cells["IsAGunColumn"].Value))
                    LicensesBtn.Enabled = true;
                else
                    LicensesBtn.Enabled = false;
            }
            catch { }
        }

        private void LicensesBtn_Click(object sender, EventArgs e)
        {
            var gun = Firearm.ParseFromRow(dataGridView1.SelectedRows[0]);            
            var LicEntryWindow = new LicenseEntryPopupForm(gun, licenses);
            LicEntryWindow.ShowDialog();
            try
            {
                License result = licenses[gun];
                MessageBox.Show(result.ToString());
                // TODO: add license to DB and tie it to the gun
            }
            catch
            { //in case the entry window got closed
                // do absolutely nothing
            }
            
        }
    }
}
