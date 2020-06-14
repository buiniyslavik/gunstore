using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GunStore
{
    
    public partial class MerchUC : UserControl
    {
        Form1 par;
        DBController dbc;
        public MerchUC()
        {
            InitializeComponent();
            par = (Form1)FindForm();
            dbc = DBController.Instance;
        }

        private void MerchUC_Load(object sender, EventArgs e)
        {
            refresh();
        }
        private void refresh()
        {
            товарыTableAdapter.Fill(gunstoreDataSet.Товары);
            dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
        }

        private void dataGridView1_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
             
            
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            try { descriptionBox.Text = dataGridView1.CurrentRow.Cells["описаниеDataGridViewTextBoxColumn"].Value.ToString(); }
            catch { } // I know it's bad, dude, it's just a coursework
        }

        private void addMerchBtn_Click(object sender, EventArgs e)
        {
            var mapf = new MerchAddPopupForm();
            mapf.ShowDialog();
            refresh();
        }
    }
}
