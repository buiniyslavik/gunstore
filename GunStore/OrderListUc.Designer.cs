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
            this.label1 = new System.Windows.Forms.Label();
            this.createOrderBtn = new System.Windows.Forms.Button();
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
            this.createOrderBtn.Location = new System.Drawing.Point(440, 3);
            this.createOrderBtn.Name = "createOrderBtn";
            this.createOrderBtn.Size = new System.Drawing.Size(75, 23);
            this.createOrderBtn.TabIndex = 1;
            this.createOrderBtn.Text = "Создать";
            this.createOrderBtn.UseVisualStyleBackColor = true;
            // 
            // OrderListUc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.createOrderBtn);
            this.Controls.Add(this.label1);
            this.Name = "OrderListUc";
            this.Size = new System.Drawing.Size(518, 471);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button createOrderBtn;
    }
}
