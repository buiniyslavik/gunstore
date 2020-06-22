using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Transactions;

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
            int amount = Convert.ToInt32(r.Cells["количествоDataGridViewTextBoxColumn"].Value);
            //if(fillList) guns.Clear();   
            if (r.Cells["номерТипаГсDataGridViewTextBoxColumn"].Value.ToString() != String.Empty)
            {
                if (fillList)
                {
                    for (int i = 0; i < amount; i++)
                        guns.Add(new Firearm(r.Cells["названиеDataGridViewTextBoxColumn"].Value.ToString(),
                                 Convert.ToInt32(r.Cells["номерТипаГсDataGridViewTextBoxColumn"].Value),
                                 -1,
                                 FirearmClass.SHOTGUN));
                }
                return FirearmClass.SHOTGUN;
            }
            if (r.Cells["номерТипаНарDataGridViewTextBoxColumn"].Value.ToString() != String.Empty)
            {
                for (int i = 0; i < amount; i++)
                    if (fillList) guns.Add(new Firearm(r.Cells["названиеDataGridViewTextBoxColumn"].Value.ToString(),
                                     Convert.ToInt32(r.Cells["номерТипаНарDataGridViewTextBoxColumn"].Value),
                                     -1,
                                     FirearmClass.RIFLE));
                return FirearmClass.RIFLE;
            }
            if (r.Cells["номерТипаОоопDataGridViewTextBoxColumn"].Value.ToString() != String.Empty)
            {
                for (int i = 0; i < amount; i++)
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
                guns.Clear();
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
         /*   try
            {
                if (Convert.ToBoolean(dataGridView1.SelectedRows[0].Cells["IsAGunColumn"].Value))
                    LicensesBtn.Enabled = true;
                else
                    LicensesBtn.Enabled = false;
            }
            catch { } */
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
           /* try
            {
                if (Convert.ToBoolean(dataGridView1.SelectedRows[0].Cells["IsAGunColumn"].Value))
                    LicensesBtn.Enabled = true;
                else
                    LicensesBtn.Enabled = false;
            }
            catch { } */
        }

        private void LicensesBtn_Click(object sender, EventArgs e)
        {
        /*    var gun = Firearm.ParseFromRow(dataGridView1.SelectedRows[0]);
            gun.PieceId = db.GetUnusedGun(gun.Type);
            var LicEntryWindow = new LicenseEntryPopupForm(gun, licenses);
            LicEntryWindow.ShowDialog();
         //   try
            {
                License result = licenses[gun];
                
                using (TransactionScope tran = new TransactionScope())
                {
                    db.AddFirearmToOrder(OrderNumber, gun);
                    db.AddLicense(result);
                    db.BindLicense(result, gun);
                    // TODO show the lic in the window
                    //throw new NotImplementedException();
                    tran.Complete();
                }
            }
          //  catch (SqlException sqlex)
            {
        //        MessageBox.Show($"base's fucked: {sqlex.Message}");
            }
         //   catch
            { //in case the entry window got closed
                // do absolutely nothing
            }
            */
        }

        private License AskForLicense(Firearm f)
        {
            License lic = new License(f.Type);
            LicenseEntryPopupForm licForm = new LicenseEntryPopupForm(f, lic);
            licForm.ShowDialog();
            return lic;         
        }

        private void ConfirmOrderBtn_Click(object sender, EventArgs e)
        {
            //TODO
            // 1. bind every gun to order
            // 2. ask for licenses
            // 3. process the checkout
            
               try
                {
                    var pendingGuns = new List<Firearm>();
                    var pendingLics = new Dictionary<Firearm, License>();
                    foreach (Firearm f in guns)
                    {
                        f.PieceId = db.GetUnusedGun(f.Type);
                        License lic = AskForLicense(f);
                        db.LockFirearm(f);
                        pendingGuns.Add(f);
                        pendingLics.Add(f, lic);

                    }
                    foreach(Firearm f in pendingGuns)
                    {
                        db.AddFirearmToOrder(OrderNumber, f);
                        var lic = pendingLics[f];
                        db.AddLicense(lic);
                        db.BindLicense(lic, f);
                    }
                db.CompleteOrder(OrderNumber);
                MessageBox.Show("Заказ закрыт");
                lockAll();
                }
                
                catch (ApplicationException ex)
                {
                    
                    MessageBox.Show("Заполнение прервано - заказ не завершен!");
                }
            
            
        }

        private void cancelOrderBtn_Click(object sender, EventArgs e)
        {
            try
            {
                db.DeleteOrder(OrderNumber);
                MessageBox.Show("Заказ удалён");
                lockAll();
                
            }
            catch(SqlException ex)
            {
                MessageBox.Show($"Ошибка удаления заказа:\n {ex.Message}");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            db.DeleteMerchFromOrder(OrderNumber, Convert.ToInt32(dataGridView1.SelectedRows[0].Cells["артикулDataGridViewTextBoxColumn"].Value));
            refresh();
        }

        private void lockAll()
        {
            dataGridView1.Enabled = false;
            cancelOrderBtn.Enabled = false;
            addToOrderBtn.Enabled = false;
            ConfirmOrderBtn.Enabled = false;
            deleteMerchBtn.Enabled = false;
        }
    }
}
