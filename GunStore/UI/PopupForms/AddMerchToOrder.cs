﻿using System;
using System.Windows.Forms;

namespace GunStore
{
    public partial class AddMerchToOrder : UserControl
    {
        DBController dbc;
        int OrderNumber;
        public AddMerchToOrder(int orderNumber)
        {
            InitializeComponent();
            OrderNumber = orderNumber;
            orderNumberBox.Text = OrderNumber.ToString();
            dbc = DBController.Instance;
        }

        private void addMerchBtn_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(dataGridView1.SelectedRows[0].Cells["остатокDataGridViewTextBoxColumn"].Value) < numericUpDown1.Value)
            {
                MessageBox.Show("Недостаточно товара на складе!");
                return;
            }

            int ItemID = Convert.ToInt32(dataGridView1.CurrentRow.Cells[0].Value);
            int Quantity = Convert.ToInt32(numericUpDown1.Value);
            try
            {
                dbc.AddMerchToOrder(OrderNumber, ItemID, Quantity);
            }
            catch
            {
                MessageBox.Show("Ошибка добавления. Возможно, вы пытаетесь повторно добавить тот же товар.");
            }
            FindForm().Close();
        }

        private void AddMerchToOrder_Load(object sender, EventArgs e)
        {
            товарыTableAdapter.Fill(gunstoreDataSet.Товары);
            dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            descriptionBox.Text = dataGridView1.CurrentRow.Cells["описаниеDataGridViewTextBoxColumn"].Value.ToString();
        }
    }
}
