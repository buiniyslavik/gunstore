namespace GunStore
{
    partial class AddMerchToOrder
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.артикулDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.названиеDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ценаDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.остатокDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.описаниеDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.номерТипаГСDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.номерТипаПатроновDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.номерТипаНарDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.номерТипаОоопDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.товарыBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gunstoreDataSet = new GunStore.GunstoreDataSet();
            this.товарыTableAdapter = new GunStore.GunstoreDataSetTableAdapters.ТоварыTableAdapter();
            this.descriptionBox = new System.Windows.Forms.TextBox();
            this.addMerchBtn = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.orderNumberBox = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.товарыBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gunstoreDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.артикулDataGridViewTextBoxColumn,
            this.названиеDataGridViewTextBoxColumn,
            this.ценаDataGridViewTextBoxColumn,
            this.остатокDataGridViewTextBoxColumn,
            this.описаниеDataGridViewTextBoxColumn,
            this.номерТипаГСDataGridViewTextBoxColumn,
            this.номерТипаПатроновDataGridViewTextBoxColumn,
            this.номерТипаНарDataGridViewTextBoxColumn,
            this.номерТипаОоопDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.товарыBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(3, 31);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(642, 332);
            this.dataGridView1.TabIndex = 4;
            this.dataGridView1.SelectionChanged += new System.EventHandler(this.dataGridView1_SelectionChanged);
            // 
            // артикулDataGridViewTextBoxColumn
            // 
            this.артикулDataGridViewTextBoxColumn.DataPropertyName = "Артикул";
            this.артикулDataGridViewTextBoxColumn.HeaderText = "Артикул";
            this.артикулDataGridViewTextBoxColumn.Name = "артикулDataGridViewTextBoxColumn";
            this.артикулDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // названиеDataGridViewTextBoxColumn
            // 
            this.названиеDataGridViewTextBoxColumn.DataPropertyName = "Название";
            this.названиеDataGridViewTextBoxColumn.HeaderText = "Название";
            this.названиеDataGridViewTextBoxColumn.Name = "названиеDataGridViewTextBoxColumn";
            this.названиеDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // ценаDataGridViewTextBoxColumn
            // 
            this.ценаDataGridViewTextBoxColumn.DataPropertyName = "Цена";
            this.ценаDataGridViewTextBoxColumn.HeaderText = "Цена";
            this.ценаDataGridViewTextBoxColumn.Name = "ценаDataGridViewTextBoxColumn";
            this.ценаDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // остатокDataGridViewTextBoxColumn
            // 
            this.остатокDataGridViewTextBoxColumn.DataPropertyName = "Остаток";
            this.остатокDataGridViewTextBoxColumn.HeaderText = "Остаток";
            this.остатокDataGridViewTextBoxColumn.Name = "остатокDataGridViewTextBoxColumn";
            this.остатокDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // описаниеDataGridViewTextBoxColumn
            // 
            this.описаниеDataGridViewTextBoxColumn.DataPropertyName = "Описание";
            this.описаниеDataGridViewTextBoxColumn.HeaderText = "Описание";
            this.описаниеDataGridViewTextBoxColumn.Name = "описаниеDataGridViewTextBoxColumn";
            this.описаниеDataGridViewTextBoxColumn.ReadOnly = true;
            this.описаниеDataGridViewTextBoxColumn.Visible = false;
            // 
            // номерТипаГСDataGridViewTextBoxColumn
            // 
            this.номерТипаГСDataGridViewTextBoxColumn.DataPropertyName = "НомерТипаГС";
            this.номерТипаГСDataGridViewTextBoxColumn.HeaderText = "НомерТипаГС";
            this.номерТипаГСDataGridViewTextBoxColumn.Name = "номерТипаГСDataGridViewTextBoxColumn";
            this.номерТипаГСDataGridViewTextBoxColumn.ReadOnly = true;
            this.номерТипаГСDataGridViewTextBoxColumn.Visible = false;
            // 
            // номерТипаПатроновDataGridViewTextBoxColumn
            // 
            this.номерТипаПатроновDataGridViewTextBoxColumn.DataPropertyName = "НомерТипаПатронов";
            this.номерТипаПатроновDataGridViewTextBoxColumn.HeaderText = "НомерТипаПатронов";
            this.номерТипаПатроновDataGridViewTextBoxColumn.Name = "номерТипаПатроновDataGridViewTextBoxColumn";
            this.номерТипаПатроновDataGridViewTextBoxColumn.ReadOnly = true;
            this.номерТипаПатроновDataGridViewTextBoxColumn.Visible = false;
            // 
            // номерТипаНарDataGridViewTextBoxColumn
            // 
            this.номерТипаНарDataGridViewTextBoxColumn.DataPropertyName = "НомерТипаНар";
            this.номерТипаНарDataGridViewTextBoxColumn.HeaderText = "НомерТипаНар";
            this.номерТипаНарDataGridViewTextBoxColumn.Name = "номерТипаНарDataGridViewTextBoxColumn";
            this.номерТипаНарDataGridViewTextBoxColumn.ReadOnly = true;
            this.номерТипаНарDataGridViewTextBoxColumn.Visible = false;
            // 
            // номерТипаОоопDataGridViewTextBoxColumn
            // 
            this.номерТипаОоопDataGridViewTextBoxColumn.DataPropertyName = "НомерТипаОооп";
            this.номерТипаОоопDataGridViewTextBoxColumn.HeaderText = "НомерТипаОооп";
            this.номерТипаОоопDataGridViewTextBoxColumn.Name = "номерТипаОоопDataGridViewTextBoxColumn";
            this.номерТипаОоопDataGridViewTextBoxColumn.ReadOnly = true;
            this.номерТипаОоопDataGridViewTextBoxColumn.Visible = false;
            // 
            // товарыBindingSource
            // 
            this.товарыBindingSource.DataMember = "Товары";
            this.товарыBindingSource.DataSource = this.gunstoreDataSet;
            // 
            // gunstoreDataSet
            // 
            this.gunstoreDataSet.DataSetName = "GunstoreDataSet";
            this.gunstoreDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // товарыTableAdapter
            // 
            this.товарыTableAdapter.ClearBeforeFill = true;
            // 
            // descriptionBox
            // 
            this.descriptionBox.Location = new System.Drawing.Point(9, 369);
            this.descriptionBox.Multiline = true;
            this.descriptionBox.Name = "descriptionBox";
            this.descriptionBox.Size = new System.Drawing.Size(397, 229);
            this.descriptionBox.TabIndex = 7;
            // 
            // addMerchBtn
            // 
            this.addMerchBtn.Location = new System.Drawing.Point(556, 570);
            this.addMerchBtn.Name = "addMerchBtn";
            this.addMerchBtn.Size = new System.Drawing.Size(75, 23);
            this.addMerchBtn.TabIndex = 6;
            this.addMerchBtn.Text = "Добавить";
            this.addMerchBtn.UseVisualStyleBackColor = true;
            this.addMerchBtn.Click += new System.EventHandler(this.addMerchBtn_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(112, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "Добавление в заказ";
            // 
            // orderNumberBox
            // 
            this.orderNumberBox.Location = new System.Drawing.Point(124, 7);
            this.orderNumberBox.Name = "orderNumberBox";
            this.orderNumberBox.ReadOnly = true;
            this.orderNumberBox.Size = new System.Drawing.Size(100, 20);
            this.orderNumberBox.TabIndex = 8;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(412, 575);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(66, 13);
            this.label2.TabIndex = 9;
            this.label2.Text = "Количество";
            // 
            // numericUpDown1
            // 
            this.numericUpDown1.Location = new System.Drawing.Point(484, 573);
            this.numericUpDown1.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.numericUpDown1.Name = "numericUpDown1";
            this.numericUpDown1.Size = new System.Drawing.Size(66, 20);
            this.numericUpDown1.TabIndex = 10;
            this.numericUpDown1.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // AddMerchToOrder
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.numericUpDown1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.orderNumberBox);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.descriptionBox);
            this.Controls.Add(this.addMerchBtn);
            this.Controls.Add(this.label1);
            this.Name = "AddMerchToOrder";
            this.Size = new System.Drawing.Size(656, 656);
            this.Load += new System.EventHandler(this.AddMerchToOrder_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.товарыBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gunstoreDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn артикулDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn названиеDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ценаDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn остатокDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn описаниеDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn номерТипаГСDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn номерТипаПатроновDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn номерТипаНарDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn номерТипаОоопDataGridViewTextBoxColumn;
        private System.Windows.Forms.BindingSource товарыBindingSource;
        private GunstoreDataSet gunstoreDataSet;
        private GunstoreDataSetTableAdapters.ТоварыTableAdapter товарыTableAdapter;
        private System.Windows.Forms.TextBox descriptionBox;
        private System.Windows.Forms.Button addMerchBtn;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox orderNumberBox;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.NumericUpDown numericUpDown1;
    }
}
