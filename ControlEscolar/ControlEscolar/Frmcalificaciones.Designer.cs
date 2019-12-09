namespace ControlEscolar
{
    partial class Frmcalificaciones
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Frmcalificaciones));
            this.gpocalificaciones = new System.Windows.Forms.GroupBox();
            this.button1 = new System.Windows.Forms.Button();
            this.label10 = new System.Windows.Forms.Label();
            this.btnExportar = new System.Windows.Forms.Button();
            this.btnagregar = new System.Windows.Forms.Button();
            this.dtgcalificacion = new System.Windows.Forms.DataGridView();
            this.btncancelar = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.lblid = new System.Windows.Forms.Label();
            this.txtparcial4 = new System.Windows.Forms.TextBox();
            this.txtparcial3 = new System.Windows.Forms.TextBox();
            this.txtparcial2 = new System.Windows.Forms.TextBox();
            this.txtparcial1 = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.cmbmateria = new System.Windows.Forms.ComboBox();
            this.txtapellidomaterno = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtapellidopaterno = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtnombre = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.cmbgrupo = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.dtgalumnos = new System.Windows.Forms.DataGridView();
            this.gpocalificaciones.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgcalificacion)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtgalumnos)).BeginInit();
            this.SuspendLayout();
            // 
            // gpocalificaciones
            // 
            this.gpocalificaciones.Controls.Add(this.button1);
            this.gpocalificaciones.Controls.Add(this.label10);
            this.gpocalificaciones.Controls.Add(this.btnExportar);
            this.gpocalificaciones.Controls.Add(this.btnagregar);
            this.gpocalificaciones.Controls.Add(this.dtgcalificacion);
            this.gpocalificaciones.Controls.Add(this.btncancelar);
            this.gpocalificaciones.Controls.Add(this.button2);
            this.gpocalificaciones.Controls.Add(this.lblid);
            this.gpocalificaciones.Controls.Add(this.txtparcial4);
            this.gpocalificaciones.Controls.Add(this.txtparcial3);
            this.gpocalificaciones.Controls.Add(this.txtparcial2);
            this.gpocalificaciones.Controls.Add(this.txtparcial1);
            this.gpocalificaciones.Controls.Add(this.label9);
            this.gpocalificaciones.Controls.Add(this.label8);
            this.gpocalificaciones.Controls.Add(this.label7);
            this.gpocalificaciones.Controls.Add(this.label6);
            this.gpocalificaciones.Controls.Add(this.label5);
            this.gpocalificaciones.Controls.Add(this.cmbmateria);
            this.gpocalificaciones.Controls.Add(this.txtapellidomaterno);
            this.gpocalificaciones.Controls.Add(this.label4);
            this.gpocalificaciones.Controls.Add(this.txtapellidopaterno);
            this.gpocalificaciones.Controls.Add(this.label3);
            this.gpocalificaciones.Controls.Add(this.txtnombre);
            this.gpocalificaciones.Controls.Add(this.label2);
            this.gpocalificaciones.Location = new System.Drawing.Point(0, -1);
            this.gpocalificaciones.Name = "gpocalificaciones";
            this.gpocalificaciones.Size = new System.Drawing.Size(611, 336);
            this.gpocalificaciones.TabIndex = 114;
            this.gpocalificaciones.TabStop = false;
            this.gpocalificaciones.Text = "Calificaciones";
            // 
            // button1
            // 
            this.button1.Image = global::ControlEscolar.Properties.Resources.Nuevo;
            this.button1.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button1.Location = new System.Drawing.Point(46, 131);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(132, 31);
            this.button1.TabIndex = 133;
            this.button1.Text = "Agregar calificacion";
            this.button1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(494, 139);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(69, 20);
            this.label10.TabIndex = 132;
            this.label10.Text = "Exportar";
            this.label10.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // btnExportar
            // 
            this.btnExportar.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExportar.Image = ((System.Drawing.Image)(resources.GetObject("btnExportar.Image")));
            this.btnExportar.Location = new System.Drawing.Point(569, 132);
            this.btnExportar.Name = "btnExportar";
            this.btnExportar.Size = new System.Drawing.Size(33, 31);
            this.btnExportar.TabIndex = 131;
            this.btnExportar.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnExportar.UseVisualStyleBackColor = true;
            this.btnExportar.Click += new System.EventHandler(this.btnExportar_Click);
            // 
            // btnagregar
            // 
            this.btnagregar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.btnagregar.Image = global::ControlEscolar.Properties.Resources._new;
            this.btnagregar.Location = new System.Drawing.Point(202, 88);
            this.btnagregar.Name = "btnagregar";
            this.btnagregar.Size = new System.Drawing.Size(29, 26);
            this.btnagregar.TabIndex = 130;
            this.btnagregar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnagregar.UseVisualStyleBackColor = true;
            this.btnagregar.Click += new System.EventHandler(this.btnagregar_Click);
            // 
            // dtgcalificacion
            // 
            this.dtgcalificacion.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgcalificacion.Location = new System.Drawing.Point(0, 175);
            this.dtgcalificacion.Name = "dtgcalificacion";
            this.dtgcalificacion.Size = new System.Drawing.Size(611, 135);
            this.dtgcalificacion.TabIndex = 111;
            this.dtgcalificacion.DoubleClick += new System.EventHandler(this.dtgcalificacion_DoubleClick);
            // 
            // btncancelar
            // 
            this.btncancelar.Image = global::ControlEscolar.Properties.Resources.cancelar2;
            this.btncancelar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btncancelar.Location = new System.Drawing.Point(358, 131);
            this.btncancelar.Name = "btncancelar";
            this.btncancelar.Size = new System.Drawing.Size(90, 32);
            this.btncancelar.TabIndex = 129;
            this.btncancelar.Text = "Cancelar";
            this.btncancelar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btncancelar.UseVisualStyleBackColor = true;
            this.btncancelar.Click += new System.EventHandler(this.btncancelar_Click);
            // 
            // button2
            // 
            this.button2.Image = ((System.Drawing.Image)(resources.GetObject("button2.Image")));
            this.button2.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button2.Location = new System.Drawing.Point(193, 131);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(137, 32);
            this.button2.TabIndex = 128;
            this.button2.Text = "Guardar calificacion";
            this.button2.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // lblid
            // 
            this.lblid.AutoSize = true;
            this.lblid.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblid.Location = new System.Drawing.Point(596, 7);
            this.lblid.Name = "lblid";
            this.lblid.Size = new System.Drawing.Size(15, 16);
            this.lblid.TabIndex = 127;
            this.lblid.Text = "0";
            // 
            // txtparcial4
            // 
            this.txtparcial4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtparcial4.Location = new System.Drawing.Point(513, 92);
            this.txtparcial4.Name = "txtparcial4";
            this.txtparcial4.Size = new System.Drawing.Size(53, 22);
            this.txtparcial4.TabIndex = 4;
            // 
            // txtparcial3
            // 
            this.txtparcial3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtparcial3.Location = new System.Drawing.Point(427, 92);
            this.txtparcial3.Name = "txtparcial3";
            this.txtparcial3.Size = new System.Drawing.Size(53, 22);
            this.txtparcial3.TabIndex = 3;
            // 
            // txtparcial2
            // 
            this.txtparcial2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtparcial2.Location = new System.Drawing.Point(333, 92);
            this.txtparcial2.Name = "txtparcial2";
            this.txtparcial2.Size = new System.Drawing.Size(53, 22);
            this.txtparcial2.TabIndex = 2;
            // 
            // txtparcial1
            // 
            this.txtparcial1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtparcial1.Location = new System.Drawing.Point(253, 92);
            this.txtparcial1.Name = "txtparcial1";
            this.txtparcial1.Size = new System.Drawing.Size(53, 22);
            this.txtparcial1.TabIndex = 1;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(510, 73);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(60, 16);
            this.label9.TabIndex = 122;
            this.label9.Text = "Parcial 4";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(420, 73);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(60, 16);
            this.label8.TabIndex = 121;
            this.label8.Text = "Parcial 3";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(330, 73);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(60, 16);
            this.label7.TabIndex = 120;
            this.label7.Text = "Parcial 2";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(250, 73);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(60, 16);
            this.label6.TabIndex = 119;
            this.label6.Text = "Parcial 1";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(11, 92);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(53, 16);
            this.label5.TabIndex = 118;
            this.label5.Text = "Materia";
            // 
            // cmbmateria
            // 
            this.cmbmateria.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F);
            this.cmbmateria.FormattingEnabled = true;
            this.cmbmateria.Location = new System.Drawing.Point(70, 90);
            this.cmbmateria.Name = "cmbmateria";
            this.cmbmateria.Size = new System.Drawing.Size(126, 24);
            this.cmbmateria.TabIndex = 117;
            this.cmbmateria.Click += new System.EventHandler(this.cmbmateria_Click);
            // 
            // txtapellidomaterno
            // 
            this.txtapellidomaterno.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtapellidomaterno.Location = new System.Drawing.Point(496, 39);
            this.txtapellidomaterno.Name = "txtapellidomaterno";
            this.txtapellidomaterno.Size = new System.Drawing.Size(106, 22);
            this.txtapellidomaterno.TabIndex = 116;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(380, 42);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(110, 16);
            this.label4.TabIndex = 115;
            this.label4.Text = "Apellido materno";
            // 
            // txtapellidopaterno
            // 
            this.txtapellidopaterno.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtapellidopaterno.Location = new System.Drawing.Point(268, 39);
            this.txtapellidopaterno.Name = "txtapellidopaterno";
            this.txtapellidopaterno.Size = new System.Drawing.Size(106, 22);
            this.txtapellidopaterno.TabIndex = 114;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(162, 42);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(107, 16);
            this.label3.TabIndex = 113;
            this.label3.Text = "Apellido paterno";
            // 
            // txtnombre
            // 
            this.txtnombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtnombre.Location = new System.Drawing.Point(68, 39);
            this.txtnombre.Name = "txtnombre";
            this.txtnombre.Size = new System.Drawing.Size(88, 22);
            this.txtnombre.TabIndex = 112;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(11, 42);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 16);
            this.label2.TabIndex = 111;
            this.label2.Text = "Alumno";
            // 
            // cmbgrupo
            // 
            this.cmbgrupo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.cmbgrupo.FormattingEnabled = true;
            this.cmbgrupo.Location = new System.Drawing.Point(258, 29);
            this.cmbgrupo.Name = "cmbgrupo";
            this.cmbgrupo.Size = new System.Drawing.Size(171, 28);
            this.cmbgrupo.TabIndex = 113;
            this.cmbgrupo.SelectedIndexChanged += new System.EventHandler(this.cmbgrupo_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.label1.Location = new System.Drawing.Point(57, 32);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(195, 20);
            this.label1.TabIndex = 112;
            this.label1.Text = "Buscar alumnos por grupo";
            // 
            // dtgalumnos
            // 
            this.dtgalumnos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgalumnos.Location = new System.Drawing.Point(18, 63);
            this.dtgalumnos.Name = "dtgalumnos";
            this.dtgalumnos.Size = new System.Drawing.Size(590, 125);
            this.dtgalumnos.TabIndex = 111;
            this.dtgalumnos.DoubleClick += new System.EventHandler(this.dtgalumnos_DoubleClick);
            // 
            // Frmcalificaciones
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(623, 347);
            this.Controls.Add(this.gpocalificaciones);
            this.Controls.Add(this.cmbgrupo);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dtgalumnos);
            this.Name = "Frmcalificaciones";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Frmcalificaciones";
            this.Load += new System.EventHandler(this.Frmcalificaciones_Load);
            this.gpocalificaciones.ResumeLayout(false);
            this.gpocalificaciones.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgcalificacion)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtgalumnos)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox gpocalificaciones;
        private System.Windows.Forms.Button btnagregar;
        private System.Windows.Forms.DataGridView dtgcalificacion;
        private System.Windows.Forms.Button btncancelar;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Label lblid;
        private System.Windows.Forms.TextBox txtparcial4;
        private System.Windows.Forms.TextBox txtparcial3;
        private System.Windows.Forms.TextBox txtparcial2;
        private System.Windows.Forms.TextBox txtparcial1;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cmbmateria;
        private System.Windows.Forms.TextBox txtapellidomaterno;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtapellidopaterno;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtnombre;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cmbgrupo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dtgalumnos;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button btnExportar;
    }
}