﻿using System;
using System.Windows.Forms;

namespace GunStore
{
    public partial class OrderListUc : UserControl
    {

        MainForm par;
        public OrderListUc()
        {
            InitializeComponent();

        }
        private void refresh()
        {
            заказыTableAdapter.Fill(gunstoreDataSet.Заказы);
            dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
            dataGridView1.SelectedRows[0].Selected = false;

            var currencyManager1 = (CurrencyManager)BindingContext[dataGridView1.DataSource];
            currencyManager1.SuspendBinding();
            if (!showCompleteCheckBox.Checked)
                foreach (DataGridViewRow r in dataGridView1.Rows)
                {
                    if (r.Cells["статусЗаказаDataGridViewTextBoxColumn"].Value.ToString() == "Завершен")
                        r.Visible = false;
                }
            currencyManager1.ResumeBinding();
        }

        private void OrderListUc_Load(object sender, EventArgs e)
        {
            refresh();
            par = (MainForm)FindForm();
        }

        private void editOrderBtn_Click(object sender, EventArgs e)
        {
            int n = Convert.ToInt32(dataGridView1.SelectedRows[0].Cells["номерЗаказаDataGridViewTextBoxColumn"].Value);
            TabController.OpenTab(par, new OrderDetailsControl(n), $"Заказ {n}");
        }

        private void OrderListUc_Enter(object sender, EventArgs e)
        {
            refresh();
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            try
            {
                if (dataGridView1.SelectedRows[0].Cells["статусЗаказаDataGridViewTextBoxColumn"].Value.ToString() == "Завершен")
                {
                    editOrderBtn.Enabled = false;
                }
                else
                {
                    editOrderBtn.Enabled = true;
                }
            }
            catch { }
        }

        private void showCompleteCheckBox_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void showCompleteCheckBox_CheckStateChanged(object sender, EventArgs e)
        {
            refresh();
        }
    }
}
