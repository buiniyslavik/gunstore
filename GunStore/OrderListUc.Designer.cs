namespace GunStore
{
    partial class OrderListUc
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
            this.label1 = new System.Windows.Forms.Label();
            this.createOrderBtn = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.номерЗаказаDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ФИО = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.датаСозданияDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.статусЗаказаDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.суммаЗаказаDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.заказыBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gunstoreDataSet = new GunStore.GunstoreDataSet();
            this.заказыTableAdapter = new GunStore.GunstoreDataSetTableAdapters.ЗаказыTableAdapter();
            this.editOrderBtn = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.заказыBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gunstoreDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(4, 4);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(89, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Список заказов";
            // 
            // createOrderBtn
            // 
            this.createOrderBtn.Location = new System.Drawing.Point(431, 4);
            this.createOrderBtn.Name = "createOrderBtn";
            this.createOrderBtn.Size = new System.Drawing.Size(75, 23);
            this.createOrderBtn.TabIndex = 1;
            this.createOrderBtn.Text = "Создать";
            this.createOrderBtn.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.номерЗаказаDataGridViewTextBoxColumn,
            this.ФИО,
            this.датаСозданияDataGridViewTextBoxColumn,
            this.статусЗаказаDataGridViewTextBoxColumn,
            this.суммаЗаказаDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.заказыBindingSource;
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dataGridView1.Location = new System.Drawing.Point(0, 95);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(677, 435);
            this.dataGridView1.TabIndex = 2;
            // 
            // номерЗаказаDataGridViewTextBoxColumn
            // 
            this.номерЗаказаDataGridViewTextBoxColumn.DataPropertyName = "НомерЗаказа";
            this.номерЗаказаDataGridViewTextBoxColumn.HeaderText = "НомерЗаказа";
            this.номерЗаказаDataGridViewTextBoxColumn.Name = "номерЗаказаDataGridViewTextBoxColumn";
            this.номерЗаказаDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // ФИО
            // 
            this.ФИО.DataPropertyName = "ФИО";
            this.ФИО.HeaderText = "ФИО";
            this.ФИО.Name = "ФИО";
            this.ФИО.ReadOnly = true;
            // 
            // датаСозданияDataGridViewTextBoxColumn
            // 
            this.датаСозданияDataGridViewTextBoxColumn.DataPropertyName = "ДатаСоздания";
            this.датаСозданияDataGridViewTextBoxColumn.HeaderText = "ДатаСоздания";
            this.датаСозданияDataGridViewTextBoxColumn.Name = "датаСозданияDataGridViewTextBoxColumn";
            this.датаСозданияDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // статусЗаказаDataGridViewTextBoxColumn
            // 
            this.статусЗаказаDataGridViewTextBoxColumn.DataPropertyName = "СтатусЗаказа";
            this.статусЗаказаDataGridViewTextBoxColumn.HeaderText = "СтатусЗаказа";
            this.статусЗаказаDataGridViewTextBoxColumn.Name = "статусЗаказаDataGridViewTextBoxColumn";
            this.статусЗаказаDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // суммаЗаказаDataGridViewTextBoxColumn
            // 
            this.суммаЗаказаDataGridViewTextBoxColumn.DataPropertyName = "СуммаЗаказа";
            this.суммаЗаказаDataGridViewTextBoxColumn.HeaderText = "СуммаЗаказа";
            this.суммаЗаказаDataGridViewTextBoxColumn.Name = "суммаЗаказаDataGridViewTextBoxColumn";
            this.суммаЗаказаDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // заказыBindingSource
            // 
            this.заказыBindingSource.DataMember = "Заказы";
            this.заказыBindingSource.DataSource = this.gunstoreDataSet;
            // 
            // gunstoreDataSet
            // 
            this.gunstoreDataSet.DataSetName = "GunstoreDataSet";
            this.gunstoreDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // заказыTableAdapter
            // 
            this.заказыTableAdapter.ClearBeforeFill = true;
            // 
            // editOrderBtn
            // 
            this.editOrderBtn.Location = new System.Drawing.Point(512, 4);
            this.editOrderBtn.Name = "editOrderBtn";
            this.editOrderBtn.Size = new System.Drawing.Size(75, 23);
            this.editOrderBtn.TabIndex = 3;
            this.editOrderBtn.Text = "Изменить";
            this.editOrderBtn.UseVisualStyleBackColor = true;
            this.editOrderBtn.Click += new System.EventHandler(this.editOrderBtn_Click);
            // 
            // OrderListUc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.editOrderBtn);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.createOrderBtn);
            this.Controls.Add(this.label1);
            this.Name = "OrderListUc";
            this.Size = new System.Drawing.Size(677, 530);
            this.Load += new System.EventHandler(this.OrderListUc_Load);
            this.Enter += new System.EventHandler(this.OrderListUc_Enter);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.заказыBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gunstoreDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button createOrderBtn;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.BindingSource заказыBindingSource;
        private GunstoreDataSet gunstoreDataSet;
        private GunstoreDataSetTableAdapters.ЗаказыTableAdapter заказыTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn номерЗаказаDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ФИО;
        private System.Windows.Forms.DataGridViewTextBoxColumn датаСозданияDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn статусЗаказаDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn суммаЗаказаDataGridViewTextBoxColumn;
        private System.Windows.Forms.Button editOrderBtn;
    }
}
