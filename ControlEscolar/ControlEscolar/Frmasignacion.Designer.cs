namespace ControlEscolar
{
    partial class Frmasignacion
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
            this.cmbprofesor = new System.Windows.Forms.ComboBox();
            this.cmbmateria = new System.Windows.Forms.ComboBox();
            this.cmbgrupo = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cmbmaestro = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.dtgasignacion = new System.Windows.Forms.DataGridView();
            this.lblid = new System.Windows.Forms.Label();
            this.btnguardar = new System.Windows.Forms.Button();
            this.btneliminar = new System.Windows.Forms.Button();
            this.btnnuevo = new System.Windows.Forms.Button();
            this.btncancelar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dtgasignacion)).BeginInit();
            this.SuspendLayout();
            // 
            // cmbprofesor
            // 
            this.cmbprofesor.FormattingEnabled = true;
            this.cmbprofesor.Location = new System.Drawing.Point(193, 45);
            this.cmbprofesor.Name = "cmbprofesor";
            this.cmbprofesor.Size = new System.Drawing.Size(201, 21);
            this.cmbprofesor.TabIndex = 0;
            this.cmbprofesor.Click += new System.EventHandler(this.cmbprofesor_Click);
            // 
            // cmbmateria
            // 
            this.cmbmateria.FormattingEnabled = true;
            this.cmbmateria.Location = new System.Drawing.Point(193, 72);
            this.cmbmateria.Name = "cmbmateria";
            this.cmbmateria.Size = new System.Drawing.Size(201, 21);
            this.cmbmateria.TabIndex = 1;
            this.cmbmateria.Click += new System.EventHandler(this.cmbmateria_Click);
            // 
            // cmbgrupo
            // 
            this.cmbgrupo.FormattingEnabled = true;
            this.cmbgrupo.Location = new System.Drawing.Point(193, 96);
            this.cmbgrupo.Name = "cmbgrupo";
            this.cmbgrupo.Size = new System.Drawing.Size(201, 21);
            this.cmbgrupo.TabIndex = 2;
            this.cmbgrupo.Click += new System.EventHandler(this.cmbgrupo_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(120, 46);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(67, 20);
            this.label1.TabIndex = 9;
            this.label1.Text = "Maestro";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(133, 94);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(54, 20);
            this.label2.TabIndex = 10;
            this.label2.Text = "Grupo";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(125, 73);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(62, 20);
            this.label3.TabIndex = 11;
            this.label3.Text = "Materia";
            // 
            // cmbmaestro
            // 
            this.cmbmaestro.FormattingEnabled = true;
            this.cmbmaestro.Location = new System.Drawing.Point(217, 12);
            this.cmbmaestro.Name = "cmbmaestro";
            this.cmbmaestro.Size = new System.Drawing.Size(221, 21);
            this.cmbmaestro.TabIndex = 12;
            this.cmbmaestro.SelectedIndexChanged += new System.EventHandler(this.cmbmaestro_SelectedIndexChanged);
            this.cmbmaestro.Click += new System.EventHandler(this.cmbmaestro_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(59, 13);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(148, 20);
            this.label4.TabIndex = 13;
            this.label4.Text = "Buscar pro maestro";
            // 
            // dtgasignacion
            // 
            this.dtgasignacion.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgasignacion.Location = new System.Drawing.Point(63, 135);
            this.dtgasignacion.Name = "dtgasignacion";
            this.dtgasignacion.Size = new System.Drawing.Size(418, 127);
            this.dtgasignacion.TabIndex = 17;
            this.dtgasignacion.DoubleClick += new System.EventHandler(this.dtgasignacion_DoubleClick);
            // 
            // lblid
            // 
            this.lblid.AutoSize = true;
            this.lblid.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblid.Location = new System.Drawing.Point(444, 13);
            this.lblid.Name = "lblid";
            this.lblid.Size = new System.Drawing.Size(18, 20);
            this.lblid.TabIndex = 18;
            this.lblid.Text = "0";
            // 
            // btnguardar
            // 
            this.btnguardar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.btnguardar.Image = global::ControlEscolar.Properties.Resources.guardar;
            this.btnguardar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnguardar.Location = new System.Drawing.Point(132, 280);
            this.btnguardar.Name = "btnguardar";
            this.btnguardar.Size = new System.Drawing.Size(120, 51);
            this.btnguardar.TabIndex = 19;
            this.btnguardar.Text = "Guardar";
            this.btnguardar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnguardar.UseVisualStyleBackColor = true;
            this.btnguardar.Click += new System.EventHandler(this.btnguardar_Click);
            // 
            // btneliminar
            // 
            this.btneliminar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.btneliminar.Image = global::ControlEscolar.Properties.Resources.eliminar1;
            this.btneliminar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btneliminar.Location = new System.Drawing.Point(384, 280);
            this.btneliminar.Name = "btneliminar";
            this.btneliminar.Size = new System.Drawing.Size(120, 51);
            this.btneliminar.TabIndex = 21;
            this.btneliminar.Text = "Eliminar";
            this.btneliminar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btneliminar.UseVisualStyleBackColor = true;
            this.btneliminar.Click += new System.EventHandler(this.btneliminar_Click);
            // 
            // btnnuevo
            // 
            this.btnnuevo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.btnnuevo.Image = global::ControlEscolar.Properties.Resources.descarga;
            this.btnnuevo.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnnuevo.Location = new System.Drawing.Point(6, 280);
            this.btnnuevo.Name = "btnnuevo";
            this.btnnuevo.Size = new System.Drawing.Size(120, 51);
            this.btnnuevo.TabIndex = 22;
            this.btnnuevo.Text = "Nuevo";
            this.btnnuevo.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnnuevo.UseVisualStyleBackColor = true;
            this.btnnuevo.Click += new System.EventHandler(this.btnnuevo_Click);
            // 
            // btncancelar
            // 
            this.btncancelar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btncancelar.Image = global::ControlEscolar.Properties.Resources.cancelar;
            this.btncancelar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btncancelar.Location = new System.Drawing.Point(258, 280);
            this.btncancelar.Name = "btncancelar";
            this.btncancelar.Size = new System.Drawing.Size(120, 51);
            this.btncancelar.TabIndex = 23;
            this.btncancelar.Text = "Cancelar";
            this.btncancelar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btncancelar.UseVisualStyleBackColor = true;
            this.btncancelar.Click += new System.EventHandler(this.btncancelar_Click);
            // 
            // Frmasignacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(515, 335);
            this.Controls.Add(this.btncancelar);
            this.Controls.Add(this.btnnuevo);
            this.Controls.Add(this.btneliminar);
            this.Controls.Add(this.btnguardar);
            this.Controls.Add(this.lblid);
            this.Controls.Add(this.dtgasignacion);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cmbmaestro);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cmbgrupo);
            this.Controls.Add(this.cmbmateria);
            this.Controls.Add(this.cmbprofesor);
            this.Name = "Frmasignacion";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Frmasignacion";
            this.Load += new System.EventHandler(this.Frmasignacion_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtgasignacion)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cmbprofesor;
        private System.Windows.Forms.ComboBox cmbmateria;
        private System.Windows.Forms.ComboBox cmbgrupo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmbmaestro;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataGridView dtgasignacion;
        private System.Windows.Forms.Label lblid;
        private System.Windows.Forms.Button btnguardar;
        private System.Windows.Forms.Button btneliminar;
        private System.Windows.Forms.Button btnnuevo;
        private System.Windows.Forms.Button btncancelar;
    }
}