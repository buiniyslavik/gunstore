﻿namespace GunStore
{
    partial class OrderDetailsControl
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
            this.orderNumberLabel = new System.Windows.Forms.Label();
            this.orderNumberTextBox = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.clientNameLabel = new System.Windows.Forms.Label();
            this.clientNameBox = new System.Windows.Forms.TextBox();
            this.changeClientBtn = new System.Windows.Forms.Button();
            this.TotalLabel = new System.Windows.Forms.Label();
            this.grandTotalBox = new System.Windows.Forms.TextBox();
            this.ConfirmOrderBtn = new System.Windows.Forms.Button();
            this.addToOrderBtn = new System.Windows.Forms.Button();
            this.cancelOrderBtn = new System.Windows.Forms.Button();
            this.sumLabel = new System.Windows.Forms.Label();
            this.discountAmountLabel = new System.Windows.Forms.Label();
            this.totalBox = new System.Windows.Forms.TextBox();
            this.discountAmountBox = new System.Windows.Forms.TextBox();
            this.LicensesBtn = new System.Windows.Forms.Button();
            this.товарыВЗаказахTableAdapter1 = new GunStore.GunstoreDataSetTableAdapters.ТоварыВЗаказахTableAdapter();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gunstoreDataSet = new GunStore.GunstoreDataSet();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gunstoreDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // orderNumberLabel
            // 
            this.orderNumberLabel.AutoSize = true;
            this.orderNumberLabel.Location = new System.Drawing.Point(3, 18);
            this.orderNumberLabel.Name = "orderNumberLabel";
            this.orderNumberLabel.Size = new System.Drawing.Size(83, 13);
            this.orderNumberLabel.TabIndex = 0;
            this.orderNumberLabel.Text = "Номер заказа:";
            // 
            // orderNumberTextBox
            // 
            this.orderNumberTextBox.Location = new System.Drawing.Point(93, 14);
            this.orderNumberTextBox.Name = "orderNumberTextBox";
            this.orderNumberTextBox.ReadOnly = true;
            this.orderNumberTextBox.Size = new System.Drawing.Size(100, 20);
            this.orderNumberTextBox.TabIndex = 1;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(0, 50);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(792, 387);
            this.dataGridView1.TabIndex = 2;
            // 
            // clientNameLabel
            // 
            this.clientNameLabel.AutoSize = true;
            this.clientNameLabel.Location = new System.Drawing.Point(6, 444);
            this.clientNameLabel.Name = "clientNameLabel";
            this.clientNameLabel.Size = new System.Drawing.Size(46, 13);
            this.clientNameLabel.TabIndex = 3;
            this.clientNameLabel.Text = "Клиент:";
            // 
            // clientNameBox
            // 
            this.clientNameBox.Location = new System.Drawing.Point(58, 441);
            this.clientNameBox.Name = "clientNameBox";
            this.clientNameBox.ReadOnly = true;
            this.clientNameBox.Size = new System.Drawing.Size(100, 20);
            this.clientNameBox.TabIndex = 4;
            // 
            // changeClientBtn
            // 
            this.changeClientBtn.Location = new System.Drawing.Point(164, 439);
            this.changeClientBtn.Name = "changeClientBtn";
            this.changeClientBtn.Size = new System.Drawing.Size(75, 23);
            this.changeClientBtn.TabIndex = 5;
            this.changeClientBtn.Text = "Изменить";
            this.changeClientBtn.UseVisualStyleBackColor = true;
            // 
            // TotalLabel
            // 
            this.TotalLabel.AutoSize = true;
            this.TotalLabel.Location = new System.Drawing.Point(587, 517);
            this.TotalLabel.Name = "TotalLabel";
            this.TotalLabel.Size = new System.Drawing.Size(40, 13);
            this.TotalLabel.TabIndex = 6;
            this.TotalLabel.Text = "Итого:";
            // 
            // grandTotalBox
            // 
            this.grandTotalBox.Location = new System.Drawing.Point(633, 514);
            this.grandTotalBox.Name = "grandTotalBox";
            this.grandTotalBox.ReadOnly = true;
            this.grandTotalBox.Size = new System.Drawing.Size(140, 20);
            this.grandTotalBox.TabIndex = 7;
            // 
            // ConfirmOrderBtn
            // 
            this.ConfirmOrderBtn.Location = new System.Drawing.Point(633, 540);
            this.ConfirmOrderBtn.Name = "ConfirmOrderBtn";
            this.ConfirmOrderBtn.Size = new System.Drawing.Size(140, 23);
            this.ConfirmOrderBtn.TabIndex = 8;
            this.ConfirmOrderBtn.Text = "Оформить заказ";
            this.ConfirmOrderBtn.UseVisualStyleBackColor = true;
            // 
            // addToOrderBtn
            // 
            this.addToOrderBtn.Location = new System.Drawing.Point(633, 13);
            this.addToOrderBtn.Name = "addToOrderBtn";
            this.addToOrderBtn.Size = new System.Drawing.Size(140, 23);
            this.addToOrderBtn.TabIndex = 9;
            this.addToOrderBtn.Text = "Добавить товар";
            this.addToOrderBtn.UseVisualStyleBackColor = true;
            // 
            // cancelOrderBtn
            // 
            this.cancelOrderBtn.Location = new System.Drawing.Point(199, 13);
            this.cancelOrderBtn.Name = "cancelOrderBtn";
            this.cancelOrderBtn.Size = new System.Drawing.Size(97, 23);
            this.cancelOrderBtn.TabIndex = 10;
            this.cancelOrderBtn.Text = "Удалить заказ";
            this.cancelOrderBtn.UseVisualStyleBackColor = true;
            // 
            // sumLabel
            // 
            this.sumLabel.AutoSize = true;
            this.sumLabel.Location = new System.Drawing.Point(587, 448);
            this.sumLabel.Name = "sumLabel";
            this.sumLabel.Size = new System.Drawing.Size(40, 13);
            this.sumLabel.TabIndex = 11;
            this.sumLabel.Text = "Всего:";
            // 
            // discountAmountLabel
            // 
            this.discountAmountLabel.AutoSize = true;
            this.discountAmountLabel.Location = new System.Drawing.Point(580, 475);
            this.discountAmountLabel.Name = "discountAmountLabel";
            this.discountAmountLabel.Size = new System.Drawing.Size(47, 13);
            this.discountAmountLabel.TabIndex = 12;
            this.discountAmountLabel.Text = "Скидка:";
            // 
            // totalBox
            // 
            this.totalBox.Location = new System.Drawing.Point(633, 445);
            this.totalBox.Name = "totalBox";
            this.totalBox.ReadOnly = true;
            this.totalBox.Size = new System.Drawing.Size(140, 20);
            this.totalBox.TabIndex = 13;
            // 
            // discountAmountBox
            // 
            this.discountAmountBox.Location = new System.Drawing.Point(633, 472);
            this.discountAmountBox.Name = "discountAmountBox";
            this.discountAmountBox.ReadOnly = true;
            this.discountAmountBox.Size = new System.Drawing.Size(140, 20);
            this.discountAmountBox.TabIndex = 14;
            // 
            // LicensesBtn
            // 
            this.LicensesBtn.Location = new System.Drawing.Point(297, 439);
            this.LicensesBtn.Name = "LicensesBtn";
            this.LicensesBtn.Size = new System.Drawing.Size(75, 23);
            this.LicensesBtn.TabIndex = 15;
            this.LicensesBtn.Text = "Лицензии";
            this.LicensesBtn.UseVisualStyleBackColor = true;
            // 
            // товарыВЗаказахTableAdapter1
            // 
            this.товарыВЗаказахTableAdapter1.ClearBeforeFill = true;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = this.gunstoreDataSet;
            this.bindingSource1.Position = 0;
            // 
            // gunstoreDataSet
            // 
            this.gunstoreDataSet.DataSetName = "GunstoreDataSet";
            this.gunstoreDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // OrderDetailsControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.LicensesBtn);
            this.Controls.Add(this.discountAmountBox);
            this.Controls.Add(this.totalBox);
            this.Controls.Add(this.discountAmountLabel);
            this.Controls.Add(this.sumLabel);
            this.Controls.Add(this.cancelOrderBtn);
            this.Controls.Add(this.addToOrderBtn);
            this.Controls.Add(this.ConfirmOrderBtn);
            this.Controls.Add(this.grandTotalBox);
            this.Controls.Add(this.TotalLabel);
            this.Controls.Add(this.changeClientBtn);
            this.Controls.Add(this.clientNameBox);
            this.Controls.Add(this.clientNameLabel);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.orderNumberTextBox);
            this.Controls.Add(this.orderNumberLabel);
            this.Name = "OrderDetailsControl";
            this.Size = new System.Drawing.Size(792, 577);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gunstoreDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label orderNumberLabel;
        private System.Windows.Forms.TextBox orderNumberTextBox;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label clientNameLabel;
        private System.Windows.Forms.TextBox clientNameBox;
        private System.Windows.Forms.Button changeClientBtn;
        private System.Windows.Forms.Label TotalLabel;
        private System.Windows.Forms.TextBox grandTotalBox;
        private System.Windows.Forms.Button ConfirmOrderBtn;
        private System.Windows.Forms.Button addToOrderBtn;
        private System.Windows.Forms.Button cancelOrderBtn;
        private System.Windows.Forms.Label sumLabel;
        private System.Windows.Forms.Label discountAmountLabel;
        private System.Windows.Forms.TextBox totalBox;
        private System.Windows.Forms.TextBox discountAmountBox;
        private System.Windows.Forms.Button LicensesBtn;
        private GunstoreDataSetTableAdapters.ТоварыВЗаказахTableAdapter товарыВЗаказахTableAdapter1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private GunstoreDataSet gunstoreDataSet;
    }
}
