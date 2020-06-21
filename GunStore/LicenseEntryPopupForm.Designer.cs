namespace GunStore
{
    partial class LicenseEntryPopupForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.headLabel = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.licNumBox = new System.Windows.Forms.TextBox();
            this.licNameBox = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.licIssuerBox = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.licIssueDateBox = new System.Windows.Forms.MaskedTextBox();
            this.licExpiryDateBox = new System.Windows.Forms.MaskedTextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.button2 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // headLabel
            // 
            this.headLabel.AutoSize = true;
            this.headLabel.Location = new System.Drawing.Point(12, 9);
            this.headLabel.Name = "headLabel";
            this.headLabel.Size = new System.Drawing.Size(35, 13);
            this.headLabel.TabIndex = 0;
            this.headLabel.Text = "label1";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(4, 45);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Номер лиц.";
            // 
            // licNumBox
            // 
            this.licNumBox.Location = new System.Drawing.Point(105, 42);
            this.licNumBox.Name = "licNumBox";
            this.licNumBox.Size = new System.Drawing.Size(295, 20);
            this.licNumBox.TabIndex = 2;
            // 
            // licNameBox
            // 
            this.licNameBox.Location = new System.Drawing.Point(105, 68);
            this.licNameBox.Name = "licNameBox";
            this.licNameBox.Size = new System.Drawing.Size(295, 20);
            this.licNameBox.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(4, 71);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(34, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "ФИО";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(4, 97);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(73, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Дата выдачи";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(4, 123);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(95, 13);
            this.label4.TabIndex = 7;
            this.label4.Text = "Дейстительна до";
            // 
            // licIssuerBox
            // 
            this.licIssuerBox.Location = new System.Drawing.Point(105, 146);
            this.licIssuerBox.Name = "licIssuerBox";
            this.licIssuerBox.Size = new System.Drawing.Size(295, 20);
            this.licIssuerBox.TabIndex = 7;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(4, 149);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(69, 13);
            this.label5.TabIndex = 9;
            this.label5.Text = "Кем выдана";
            // 
            // licIssueDateBox
            // 
            this.licIssueDateBox.Location = new System.Drawing.Point(105, 94);
            this.licIssueDateBox.Mask = "00/00/0000";
            this.licIssueDateBox.Name = "licIssueDateBox";
            this.licIssueDateBox.Size = new System.Drawing.Size(295, 20);
            this.licIssueDateBox.TabIndex = 5;
            this.licIssueDateBox.ValidatingType = typeof(System.DateTime);
            // 
            // licExpiryDateBox
            // 
            this.licExpiryDateBox.Location = new System.Drawing.Point(105, 120);
            this.licExpiryDateBox.Mask = "00/00/0000";
            this.licExpiryDateBox.Name = "licExpiryDateBox";
            this.licExpiryDateBox.Size = new System.Drawing.Size(295, 20);
            this.licExpiryDateBox.TabIndex = 6;
            this.licExpiryDateBox.ValidatingType = typeof(System.DateTime);
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button1.Location = new System.Drawing.Point(4, 172);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(396, 23);
            this.button1.TabIndex = 10;
            this.button1.Text = "Сохранить";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(12, 22);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(35, 13);
            this.label6.TabIndex = 14;
            this.label6.Text = "label6";
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(320, 201);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 15;
            this.button2.Text = "Отмена";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // LicenseEntryPopupForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(407, 230);
            this.ControlBox = false;
            this.Controls.Add(this.button2);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.licExpiryDateBox);
            this.Controls.Add(this.licIssueDateBox);
            this.Controls.Add(this.licIssuerBox);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.licNameBox);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.licNumBox);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.headLabel);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "LicenseEntryPopupForm";
            this.Text = "LicenseEntryPopupForm";
            this.TopMost = true;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.LicenseEntryPopupForm_FormClosing);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label headLabel;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox licNumBox;
        private System.Windows.Forms.TextBox licNameBox;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox licIssuerBox;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.MaskedTextBox licIssueDateBox;
        private System.Windows.Forms.MaskedTextBox licExpiryDateBox;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button button2;
    }
}