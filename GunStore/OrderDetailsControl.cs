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

        private FirearmClass isAFirearm(DataGridViewRow r)
        {
            if (r.Cells["номерТипаГсDataGridViewTextBoxColumn"].Value.ToString() != String.Empty)
            {
                return FirearmClass.SHOTGUN;
            }
            if (r.Cells["номерТипаНарDataGridViewTextBoxColumn"].Value.ToString() != String.Empty)
            {
                return FirearmClass.RIFLE;
            }
            if (r.Cells["номерТипаОоопDataGridViewTextBoxColumn"].Value.ToString() != String.Empty)
            {
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
                    switch (isAFirearm(r))
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
    }
}
