namespace ControlEscolar
{
    partial class frmAlumnos
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
            this.txtbuscar = new System.Windows.Forms.TextBox();
            this.txtnombre = new System.Windows.Forms.TextBox();
            this.txtapellidop = new System.Windows.Forms.TextBox();
            this.txtapellidom = new System.Windows.Forms.TextBox();
            this.dtpn = new System.Windows.Forms.DateTimePicker();
            this.txtdomicilio = new System.Windows.Forms.TextBox();
            this.txtemail = new System.Windows.Forms.TextBox();
            this.txtsexo = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.dtgalumnos = new System.Windows.Forms.DataGridView();
            this.lblmatricula = new System.Windows.Forms.Label();
            this.cmbestados = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.cmbciudade = new System.Windows.Forms.ComboBox();
            this.btneliminar = new System.Windows.Forms.Button();
            this.btncancelar = new System.Windows.Forms.Button();
            this.btnguardar = new System.Windows.Forms.Button();
            this.btnnuevo = new System.Windows.Forms.Button();
            this.label11 = new System.Windows.Forms.Label();
            this.cmbgrupo = new System.Windows.Forms.ComboBox();
            this.btnagregargrupo = new System.Windows.Forms.Button();
            this.gpogrupo = new System.Windows.Forms.GroupBox();
            this.lblidgrupo = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.btncancelargrupo = new System.Windows.Forms.Button();
            this.txtgrupo = new System.Windows.Forms.TextBox();
            this.btnaceptar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dtgalumnos)).BeginInit();
            this.gpogrupo.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtbuscar
            // 
            this.txtbuscar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtbuscar.Location = new System.Drawing.Point(87, 12);
            this.txtbuscar.Name = "txtbuscar";
            this.txtbuscar.Size = new System.Drawing.Size(511, 26);
            this.txtbuscar.TabIndex = 0;
            this.txtbuscar.TextChanged += new System.EventHandler(this.txtbuscar_TextChanged);
            // 
            // txtnombre
            // 
            this.txtnombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtnombre.Location = new System.Drawing.Point(180, 62);
            this.txtnombre.Name = "txtnombre";
            this.txtnombre.Size = new System.Drawing.Size(123, 26);
            this.txtnombre.TabIndex = 1;
            // 
            // txtapellidop
            // 
            this.txtapellidop.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtapellidop.Location = new System.Drawing.Point(180, 97);
            this.txtapellidop.Name = "txtapellidop";
            this.txtapellidop.Size = new System.Drawing.Size(123, 26);
            this.txtapellidop.TabIndex = 2;
            // 
            // txtapellidom
            // 
            this.txtapellidom.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtapellidom.Location = new System.Drawing.Point(180, 129);
            this.txtapellidom.Name = "txtapellidom";
            this.txtapellidom.Size = new System.Drawing.Size(123, 26);
            this.txtapellidom.TabIndex = 3;
            // 
            // dtpn
            // 
            this.dtpn.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpn.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpn.Location = new System.Drawing.Point(180, 161);
            this.dtpn.Name = "dtpn";
            this.dtpn.Size = new System.Drawing.Size(123, 26);
            this.dtpn.TabIndex = 4;
            // 
            // txtdomicilio
            // 
            this.txtdomicilio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtdomicilio.Location = new System.Drawing.Point(413, 62);
            this.txtdomicilio.Name = "txtdomicilio";
            this.txtdomicilio.Size = new System.Drawing.Size(131, 26);
            this.txtdomicilio.TabIndex = 6;
            // 
            // txtemail
            // 
            this.txtemail.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtemail.Location = new System.Drawing.Point(413, 97);
            this.txtemail.Name = "txtemail";
            this.txtemail.Size = new System.Drawing.Size(131, 26);
            this.txtemail.TabIndex = 7;
            // 
            // txtsexo
            // 
            this.txtsexo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtsexo.Location = new System.Drawing.Point(413, 129);
            this.txtsexo.Name = "txtsexo";
            this.txtsexo.Size = new System.Drawing.Size(131, 26);
            this.txtsexo.TabIndex = 8;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(96, 68);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 20);
            this.label1.TabIndex = 8;
            this.label1.Text = "Nombre";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(36, 103);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(125, 20);
            this.label2.TabIndex = 9;
            this.label2.Text = "Apellido Paterno";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(33, 136);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(128, 20);
            this.label3.TabIndex = 10;
            this.label3.Text = "Apellido Materno";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(335, 67);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(72, 20);
            this.label4.TabIndex = 11;
            this.label4.Text = "Domicilio";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(4, 166);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(157, 20);
            this.label5.TabIndex = 12;
            this.label5.Text = "Fecha de nacimiento";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(356, 103);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(48, 20);
            this.label6.TabIndex = 13;
            this.label6.Text = "Email";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(359, 136);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(45, 20);
            this.label7.TabIndex = 14;
            this.label7.Text = "Sexo";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(16, 15);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(59, 20);
            this.label8.TabIndex = 15;
            this.label8.Text = "Buscar";
            // 
            // dtgalumnos
            // 
            this.dtgalumnos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgalumnos.Location = new System.Drawing.Point(8, 254);
            this.dtgalumnos.Name = "dtgalumnos";
            this.dtgalumnos.Size = new System.Drawing.Size(590, 127);
            this.dtgalumnos.TabIndex = 16;
            this.dtgalumnos.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgalumnos_CellContentClick);
            this.dtgalumnos.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgalumnos_CellDoubleClick);
            // 
            // lblmatricula
            // 
            this.lblmatricula.AutoSize = true;
            this.lblmatricula.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmatricula.Location = new System.Drawing.Point(604, 18);
            this.lblmatricula.Name = "lblmatricula";
            this.lblmatricula.Size = new System.Drawing.Size(18, 20);
            this.lblmatricula.TabIndex = 21;
            this.lblmatricula.Text = "0";
            // 
            // cmbestados
            // 
            this.cmbestados.FormattingEnabled = true;
            this.cmbestados.Location = new System.Drawing.Point(172, 199);
            this.cmbestados.Name = "cmbestados";
            this.cmbestados.Size = new System.Drawing.Size(131, 21);
            this.cmbestados.TabIndex = 5;
            this.cmbestados.SelectedIndexChanged += new System.EventHandler(this.cmbestados_SelectedIndexChanged);
            this.cmbestados.SelectionChangeCommitted += new System.EventHandler(this.cmbestados_SelectionChangeCommitted);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(96, 200);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(60, 20);
            this.label9.TabIndex = 23;
            this.label9.Text = "Estado";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(345, 200);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(59, 20);
            this.label10.TabIndex = 25;
            this.label10.Text = "Ciudad";
            // 
            // cmbciudade
            // 
            this.cmbciudade.FormattingEnabled = true;
            this.cmbciudade.Location = new System.Drawing.Point(428, 199);
            this.cmbciudade.Name = "cmbciudade";
            this.cmbciudade.Size = new System.Drawing.Size(131, 21);
            this.cmbciudade.TabIndex = 9;
            this.cmbciudade.SelectedIndexChanged += new System.EventHandler(this.cmbciudade_SelectedIndexChanged);
            this.cmbciudade.SelectionChangeCommitted += new System.EventHandler(this.cmbciudade_SelectionChangeCommitted);
            // 
            // btneliminar
            // 
            this.btneliminar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.btneliminar.Image = global::ControlEscolar.Properties.Resources.eliminar1;
            this.btneliminar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btneliminar.Location = new System.Drawing.Point(478, 387);
            this.btneliminar.Name = "btneliminar";
            this.btneliminar.Size = new System.Drawing.Size(120, 51);
            this.btneliminar.TabIndex = 20;
            this.btneliminar.Text = "Eliminar";
            this.btneliminar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btneliminar.UseVisualStyleBackColor = true;
            this.btneliminar.Click += new System.EventHandler(this.btneliminar_Click);
            // 
            // btncancelar
            // 
            this.btncancelar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btncancelar.Image = global::ControlEscolar.Properties.Resources.cancelar;
            this.btncancelar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btncancelar.Location = new System.Drawing.Point(328, 387);
            this.btncancelar.Name = "btncancelar";
            this.btncancelar.Size = new System.Drawing.Size(120, 51);
            this.btncancelar.TabIndex = 19;
            this.btncancelar.Text = "Cancelar";
            this.btncancelar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btncancelar.UseVisualStyleBackColor = true;
            this.btncancelar.Click += new System.EventHandler(this.btncancelar_Click);
            // 
            // btnguardar
            // 
            this.btnguardar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.btnguardar.Image = global::ControlEscolar.Properties.Resources.guardar;
            this.btnguardar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnguardar.Location = new System.Drawing.Point(172, 387);
            this.btnguardar.Name = "btnguardar";
            this.btnguardar.Size = new System.Drawing.Size(120, 51);
            this.btnguardar.TabIndex = 18;
            this.btnguardar.Text = "Guardar";
            this.btnguardar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnguardar.UseVisualStyleBackColor = true;
            this.btnguardar.Click += new System.EventHandler(this.btnguardar_Click);
            // 
            // btnnuevo
            // 
            this.btnnuevo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.btnnuevo.Image = global::ControlEscolar.Properties.Resources.descarga;
            this.btnnuevo.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnnuevo.Location = new System.Drawing.Point(8, 387);
            this.btnnuevo.Name = "btnnuevo";
            this.btnnuevo.Size = new System.Drawing.Size(120, 51);
            this.btnnuevo.TabIndex = 17;
            this.btnnuevo.Text = "Nuevo";
            this.btnnuevo.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnnuevo.UseVisualStyleBackColor = true;
            this.btnnuevo.Click += new System.EventHandler(this.btnnuevo_Click);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(330, 169);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(54, 20);
            this.label11.TabIndex = 27;
            this.label11.Text = "Grupo";
            // 
            // cmbgrupo
            // 
            this.cmbgrupo.FormattingEnabled = true;
            this.cmbgrupo.Location = new System.Drawing.Point(413, 168);
            this.cmbgrupo.Name = "cmbgrupo";
            this.cmbgrupo.Size = new System.Drawing.Size(131, 21);
            this.cmbgrupo.TabIndex = 26;
            this.cmbgrupo.Click += new System.EventHandler(this.cmbgrupo_Click);
            // 
            // btnagregargrupo
            // 
            this.btnagregargrupo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.btnagregargrupo.Image = global::ControlEscolar.Properties.Resources._new;
            this.btnagregargrupo.Location = new System.Drawing.Point(550, 166);
            this.btnagregargrupo.Name = "btnagregargrupo";
            this.btnagregargrupo.Size = new System.Drawing.Size(29, 26);
            this.btnagregargrupo.TabIndex = 59;
            this.btnagregargrupo.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnagregargrupo.UseVisualStyleBackColor = true;
            this.btnagregargrupo.Click += new System.EventHandler(this.btnagregargrupo_Click);
            // 
            // gpogrupo
            // 
            this.gpogrupo.Controls.Add(this.lblidgrupo);
            this.gpogrupo.Controls.Add(this.label12);
            this.gpogrupo.Controls.Add(this.btncancelargrupo);
            this.gpogrupo.Controls.Add(this.txtgrupo);
            this.gpogrupo.Controls.Add(this.btnaceptar);
            this.gpogrupo.Location = new System.Drawing.Point(191, 57);
            this.gpogrupo.Name = "gpogrupo";
            this.gpogrupo.Size = new System.Drawing.Size(240, 105);
            this.gpogrupo.TabIndex = 60;
            this.gpogrupo.TabStop = false;
            this.gpogrupo.Text = "Insertar grupo";
            // 
            // lblidgrupo
            // 
            this.lblidgrupo.AutoSize = true;
            this.lblidgrupo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblidgrupo.Location = new System.Drawing.Point(100, 28);
            this.lblidgrupo.Name = "lblidgrupo";
            this.lblidgrupo.Size = new System.Drawing.Size(18, 20);
            this.lblidgrupo.TabIndex = 61;
            this.lblidgrupo.Text = "0";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(22, 35);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(65, 20);
            this.label12.TabIndex = 61;
            this.label12.Text = "Nombre";
            // 
            // btncancelargrupo
            // 
            this.btncancelargrupo.Image = global::ControlEscolar.Properties.Resources.cancelar1;
            this.btncancelargrupo.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btncancelargrupo.Location = new System.Drawing.Point(131, 67);
            this.btncancelargrupo.Name = "btncancelargrupo";
            this.btncancelargrupo.Size = new System.Drawing.Size(90, 32);
            this.btncancelargrupo.TabIndex = 22;
            this.btncancelargrupo.Text = "Cancelar";
            this.btncancelargrupo.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btncancelargrupo.UseVisualStyleBackColor = true;
            this.btncancelargrupo.Click += new System.EventHandler(this.btncancelargrupo_Click);
            // 
            // txtgrupo
            // 
            this.txtgrupo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtgrupo.Location = new System.Drawing.Point(2, 67);
            this.txtgrupo.Name = "txtgrupo";
            this.txtgrupo.Size = new System.Drawing.Size(123, 26);
            this.txtgrupo.TabIndex = 61;
            // 
            // btnaceptar
            // 
            this.btnaceptar.Image = global::ControlEscolar.Properties.Resources.aceptar;
            this.btnaceptar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnaceptar.Location = new System.Drawing.Point(131, 24);
            this.btnaceptar.Name = "btnaceptar";
            this.btnaceptar.Size = new System.Drawing.Size(90, 31);
            this.btnaceptar.TabIndex = 21;
            this.btnaceptar.Text = "Aceptar";
            this.btnaceptar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnaceptar.UseVisualStyleBackColor = true;
            this.btnaceptar.Click += new System.EventHandler(this.btnaceptar_Click);
            // 
            // frmAlumnos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(623, 450);
            this.Controls.Add(this.gpogrupo);
            this.Controls.Add(this.btnagregargrupo);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.cmbgrupo);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.cmbciudade);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.cmbestados);
            this.Controls.Add(this.lblmatricula);
            this.Controls.Add(this.btneliminar);
            this.Controls.Add(this.btncancelar);
            this.Controls.Add(this.btnguardar);
            this.Controls.Add(this.btnnuevo);
            this.Controls.Add(this.dtgalumnos);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtsexo);
            this.Controls.Add(this.txtemail);
            this.Controls.Add(this.txtdomicilio);
            this.Controls.Add(this.dtpn);
            this.Controls.Add(this.txtapellidom);
            this.Controls.Add(this.txtapellidop);
            this.Controls.Add(this.txtnombre);
            this.Controls.Add(this.txtbuscar);
            this.Name = "frmAlumnos";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmAlumnos";
            this.Load += new System.EventHandler(this.frmAlumnos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtgalumnos)).EndInit();
            this.gpogrupo.ResumeLayout(false);
            this.gpogrupo.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtbuscar;
        private System.Windows.Forms.TextBox txtnombre;
        private System.Windows.Forms.TextBox txtapellidop;
        private System.Windows.Forms.TextBox txtapellidom;
        private System.Windows.Forms.DateTimePicker dtpn;
        private System.Windows.Forms.TextBox txtdomicilio;
        private System.Windows.Forms.TextBox txtemail;
        private System.Windows.Forms.TextBox txtsexo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.DataGridView dtgalumnos;
        private System.Windows.Forms.Button btnnuevo;
        private System.Windows.Forms.Button btnguardar;
        private System.Windows.Forms.Button btncancelar;
        private System.Windows.Forms.Button btneliminar;
        private System.Windows.Forms.Label lblmatricula;
        private System.Windows.Forms.ComboBox cmbestados;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox cmbciudade;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.ComboBox cmbgrupo;
        private System.Windows.Forms.Button btnagregargrupo;
        private System.Windows.Forms.GroupBox gpogrupo;
        private System.Windows.Forms.Button btncancelargrupo;
        private System.Windows.Forms.Button btnaceptar;
        private System.Windows.Forms.Label lblidgrupo;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtgrupo;
    }
}