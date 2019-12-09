namespace ControlEscolar
{
    partial class FrmGupo
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmGupo));
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.cmbgrupo = new System.Windows.Forms.ComboBox();
            this.dtgmateria = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.btnExportar = new System.Windows.Forms.Button();
            this.btncancelarlogo = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dtgmateria)).BeginInit();
            this.SuspendLayout();
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(503, 10);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(69, 20);
            this.label4.TabIndex = 104;
            this.label4.Text = "Exportar";
            this.label4.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.label4.Click += new System.EventHandler(this.label4_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(462, 41);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(110, 20);
            this.label3.TabIndex = 103;
            this.label3.Text = "Eliminar grupo";
            this.label3.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(456, 46);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(0, 13);
            this.label2.TabIndex = 102;
            // 
            // cmbgrupo
            // 
            this.cmbgrupo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbgrupo.FormattingEnabled = true;
            this.cmbgrupo.Location = new System.Drawing.Point(221, 37);
            this.cmbgrupo.Name = "cmbgrupo";
            this.cmbgrupo.Size = new System.Drawing.Size(196, 24);
            this.cmbgrupo.TabIndex = 99;
            this.cmbgrupo.SelectedIndexChanged += new System.EventHandler(this.cmbgrupo_SelectedIndexChanged_1);
            // 
            // dtgmateria
            // 
            this.dtgmateria.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgmateria.Location = new System.Drawing.Point(12, 70);
            this.dtgmateria.Name = "dtgmateria";
            this.dtgmateria.Size = new System.Drawing.Size(599, 163);
            this.dtgmateria.TabIndex = 98;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(20, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(195, 20);
            this.label1.TabIndex = 97;
            this.label1.Text = "Buscar alumnos por grupo";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // btnExportar
            // 
            this.btnExportar.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExportar.Image = ((System.Drawing.Image)(resources.GetObject("btnExportar.Image")));
            this.btnExportar.Location = new System.Drawing.Point(578, 3);
            this.btnExportar.Name = "btnExportar";
            this.btnExportar.Size = new System.Drawing.Size(33, 31);
            this.btnExportar.TabIndex = 101;
            this.btnExportar.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnExportar.UseVisualStyleBackColor = true;
            this.btnExportar.Click += new System.EventHandler(this.btnExportar_Click_1);
            // 
            // btncancelarlogo
            // 
            this.btncancelarlogo.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btncancelarlogo.Image = global::ControlEscolar.Properties.Resources.cancelar2;
            this.btncancelarlogo.Location = new System.Drawing.Point(423, 34);
            this.btncancelarlogo.Name = "btncancelarlogo";
            this.btncancelarlogo.Size = new System.Drawing.Size(33, 31);
            this.btncancelarlogo.TabIndex = 100;
            this.btncancelarlogo.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btncancelarlogo.UseVisualStyleBackColor = true;
            this.btncancelarlogo.Click += new System.EventHandler(this.btncancelarlogo_Click_1);
            // 
            // FrmGupo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(614, 292);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btnExportar);
            this.Controls.Add(this.btncancelarlogo);
            this.Controls.Add(this.cmbgrupo);
            this.Controls.Add(this.dtgmateria);
            this.Controls.Add(this.label1);
            this.Name = "FrmGupo";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmGupo";
            this.Load += new System.EventHandler(this.FrmGupo_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtgmateria)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnExportar;
        private System.Windows.Forms.Button btncancelarlogo;
        private System.Windows.Forms.ComboBox cmbgrupo;
        private System.Windows.Forms.DataGridView dtgmateria;
        private System.Windows.Forms.Label label1;
    }
}