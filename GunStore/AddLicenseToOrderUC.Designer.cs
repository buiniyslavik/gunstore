namespace GunStore
{
    partial class AddLicenseToOrderUC
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
            this.LicenseGridView = new System.Windows.Forms.DataGridView();
            this.licensesInOrderLabel = new System.Windows.Forms.Label();
            this.licenseOrderNumberTextBox = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.LicenseGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // LicenseGridView
            // 
            this.LicenseGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.LicenseGridView.Location = new System.Drawing.Point(3, 30);
            this.LicenseGridView.Name = "LicenseGridView";
            this.LicenseGridView.Size = new System.Drawing.Size(529, 149);
            this.LicenseGridView.TabIndex = 0;
            // 
            // licensesInOrderLabel
            // 
            this.licensesInOrderLabel.AutoSize = true;
            this.licensesInOrderLabel.Location = new System.Drawing.Point(5, 7);
            this.licensesInOrderLabel.Name = "licensesInOrderLabel";
            this.licensesInOrderLabel.Size = new System.Drawing.Size(105, 13);
            this.licensesInOrderLabel.TabIndex = 1;
            this.licensesInOrderLabel.Text = "Лицензии в заказе";
            // 
            // licenseOrderNumberTextBox
            // 
            this.licenseOrderNumberTextBox.Location = new System.Drawing.Point(116, 4);
            this.licenseOrderNumberTextBox.Name = "licenseOrderNumberTextBox";
            this.licenseOrderNumberTextBox.ReadOnly = true;
            this.licenseOrderNumberTextBox.Size = new System.Drawing.Size(100, 20);
            this.licenseOrderNumberTextBox.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(8, 186);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(41, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Номер";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(55, 183);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 4;
            // 
            // AddLicenseToOrderUC
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.licenseOrderNumberTextBox);
            this.Controls.Add(this.licensesInOrderLabel);
            this.Controls.Add(this.LicenseGridView);
            this.Name = "AddLicenseToOrderUC";
            this.Size = new System.Drawing.Size(535, 379);
            ((System.ComponentModel.ISupportInitialize)(this.LicenseGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView LicenseGridView;
        private System.Windows.Forms.Label licensesInOrderLabel;
        private System.Windows.Forms.TextBox licenseOrderNumberTextBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox1;
    }
}
