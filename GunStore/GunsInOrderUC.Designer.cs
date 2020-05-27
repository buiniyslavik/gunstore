namespace GunStore
{
    partial class GunsInOrderUC
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
            this.AddGunToOrderBtn = new System.Windows.Forms.Button();
            this.RemoveGunFromOrderBtn = new System.Windows.Forms.Button();
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
            this.licensesInOrderLabel.Size = new System.Drawing.Size(94, 13);
            this.licensesInOrderLabel.TabIndex = 1;
            this.licensesInOrderLabel.Text = "Оружие в заказе";
            // 
            // licenseOrderNumberTextBox
            // 
            this.licenseOrderNumberTextBox.Location = new System.Drawing.Point(105, 4);
            this.licenseOrderNumberTextBox.Name = "licenseOrderNumberTextBox";
            this.licenseOrderNumberTextBox.ReadOnly = true;
            this.licenseOrderNumberTextBox.Size = new System.Drawing.Size(100, 20);
            this.licenseOrderNumberTextBox.TabIndex = 2;
            // 
            // AddGunToOrderBtn
            // 
            this.AddGunToOrderBtn.Location = new System.Drawing.Point(457, 2);
            this.AddGunToOrderBtn.Name = "AddGunToOrderBtn";
            this.AddGunToOrderBtn.Size = new System.Drawing.Size(75, 23);
            this.AddGunToOrderBtn.TabIndex = 3;
            this.AddGunToOrderBtn.Text = "Добавить";
            this.AddGunToOrderBtn.UseVisualStyleBackColor = true;
            // 
            // RemoveGunFromOrderBtn
            // 
            this.RemoveGunFromOrderBtn.Location = new System.Drawing.Point(376, 1);
            this.RemoveGunFromOrderBtn.Name = "RemoveGunFromOrderBtn";
            this.RemoveGunFromOrderBtn.Size = new System.Drawing.Size(75, 23);
            this.RemoveGunFromOrderBtn.TabIndex = 4;
            this.RemoveGunFromOrderBtn.Text = "Удалить";
            this.RemoveGunFromOrderBtn.UseVisualStyleBackColor = true;
            // 
            // GunsInOrderUC
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.RemoveGunFromOrderBtn);
            this.Controls.Add(this.AddGunToOrderBtn);
            this.Controls.Add(this.licenseOrderNumberTextBox);
            this.Controls.Add(this.licensesInOrderLabel);
            this.Controls.Add(this.LicenseGridView);
            this.Name = "GunsInOrderUC";
            this.Size = new System.Drawing.Size(535, 379);
            ((System.ComponentModel.ISupportInitialize)(this.LicenseGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView LicenseGridView;
        private System.Windows.Forms.Label licensesInOrderLabel;
        private System.Windows.Forms.TextBox licenseOrderNumberTextBox;
        private System.Windows.Forms.Button AddGunToOrderBtn;
        private System.Windows.Forms.Button RemoveGunFromOrderBtn;
    }
}
