namespace ControlEscolar
{
    partial class FrmMaestro
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
            this.label10 = new System.Windows.Forms.Label();
            this.cmbciudade = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.cmbestados = new System.Windows.Forms.ComboBox();
            this.lblmatricula = new System.Windows.Forms.Label();
            this.dtgmaestros = new System.Windows.Forms.DataGridView();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txttitulo = new System.Windows.Forms.TextBox();
            this.txtcedula = new System.Windows.Forms.TextBox();
            this.txtdireccion = new System.Windows.Forms.TextBox();
            this.dtpn = new System.Windows.Forms.DateTimePicker();
            this.txtapellidom = new System.Windows.Forms.TextBox();
            this.txtapellidop = new System.Windows.Forms.TextBox();
            this.txtnombre = new System.Windows.Forms.TextBox();
            this.txtbuscar = new System.Windows.Forms.TextBox();
            this.txtanio = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.gpoestudios = new System.Windows.Forms.GroupBox();
            this.btncargar = new System.Windows.Forms.Button();
            this.txtarchivo = new System.Windows.Forms.TextBox();
            this.label16 = new System.Windows.Forms.Label();
            this.btncancelar1 = new System.Windows.Forms.Button();
            this.label15 = new System.Windows.Forms.Label();
            this.cmbmaestro = new System.Windows.Forms.ComboBox();
            this.btnaceptar = new System.Windows.Forms.Button();
            this.label14 = new System.Windows.Forms.Label();
            this.txtlugar = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.txtcertificacion = new System.Windows.Forms.TextBox();
            this.gpoinformacion1 = new System.Windows.Forms.GroupBox();
            this.btneliminarcarpeta = new System.Windows.Forms.Button();
            this.btneliminarc = new System.Windows.Forms.Button();
            this.btnvolver = new System.Windows.Forms.Button();
            this.label11 = new System.Windows.Forms.Label();
            this.txtbuscare = new System.Windows.Forms.TextBox();
            this.dtgestudiosc = new System.Windows.Forms.DataGridView();
            this.btninformacion = new System.Windows.Forms.Button();
            this.btnmas = new System.Windows.Forms.Button();
            this.btneliminar = new System.Windows.Forms.Button();
            this.btncancelar = new System.Windows.Forms.Button();
            this.btnguardar = new System.Windows.Forms.Button();
            this.btnnuevo = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dtgmaestros)).BeginInit();
            this.gpoestudios.SuspendLayout();
            this.gpoinformacion1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgestudiosc)).BeginInit();
            this.SuspendLayout();
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(353, 191);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(59, 20);
            this.label10.TabIndex = 51;
            this.label10.Text = "Ciudad";
            // 
            // cmbciudade
            // 
            this.cmbciudade.FormattingEnabled = true;
            this.cmbciudade.Location = new System.Drawing.Point(418, 190);
            this.cmbciudade.Name = "cmbciudade";
            this.cmbciudade.Size = new System.Drawing.Size(133, 21);
            this.cmbciudade.TabIndex = 10;
            this.cmbciudade.SelectedIndexChanged += new System.EventHandler(this.cmbciudade_SelectedIndexChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(72, 185);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(60, 20);
            this.label9.TabIndex = 50;
            this.label9.Text = "Estado";
            // 
            // cmbestados
            // 
            this.cmbestados.FormattingEnabled = true;
            this.cmbestados.Location = new System.Drawing.Point(151, 184);
            this.cmbestados.Name = "cmbestados";
            this.cmbestados.Size = new System.Drawing.Size(123, 21);
            this.cmbestados.TabIndex = 5;
            this.cmbestados.SelectedIndexChanged += new System.EventHandler(this.cmbestados_SelectedIndexChanged);
            // 
            // lblmatricula
            // 
            this.lblmatricula.AutoSize = true;
            this.lblmatricula.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblmatricula.Location = new System.Drawing.Point(608, 15);
            this.lblmatricula.Name = "lblmatricula";
            this.lblmatricula.Size = new System.Drawing.Size(18, 20);
            this.lblmatricula.TabIndex = 49;
            this.lblmatricula.Text = "0";
            // 
            // dtgmaestros
            // 
            this.dtgmaestros.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgmaestros.Location = new System.Drawing.Point(12, 214);
            this.dtgmaestros.Name = "dtgmaestros";
            this.dtgmaestros.Size = new System.Drawing.Size(590, 164);
            this.dtgmaestros.TabIndex = 44;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(20, 12);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(59, 20);
            this.label8.TabIndex = 43;
            this.label8.Text = "Buscar";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(369, 120);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(43, 20);
            this.label7.TabIndex = 42;
            this.label7.Text = "titulo";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(358, 85);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(56, 20);
            this.label6.TabIndex = 41;
            this.label6.Text = "cedula";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(277, 152);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(135, 20);
            this.label5.TabIndex = 40;
            this.label5.Text = "Fecha nacimiento";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(342, 48);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(72, 20);
            this.label4.TabIndex = 39;
            this.label4.Text = "direccion";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(4, 153);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(128, 20);
            this.label3.TabIndex = 38;
            this.label3.Text = "Apellido Materno";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(7, 120);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(125, 20);
            this.label2.TabIndex = 37;
            this.label2.Text = "Apellido Paterno";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(67, 85);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 20);
            this.label1.TabIndex = 35;
            this.label1.Text = "Nombre";
            // 
            // txttitulo
            // 
            this.txttitulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txttitulo.Location = new System.Drawing.Point(420, 114);
            this.txttitulo.Name = "txttitulo";
            this.txttitulo.Size = new System.Drawing.Size(131, 26);
            this.txttitulo.TabIndex = 8;
            // 
            // txtcedula
            // 
            this.txtcedula.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtcedula.Location = new System.Drawing.Point(420, 82);
            this.txtcedula.Name = "txtcedula";
            this.txtcedula.Size = new System.Drawing.Size(131, 26);
            this.txtcedula.TabIndex = 7;
            // 
            // txtdireccion
            // 
            this.txtdireccion.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtdireccion.Location = new System.Drawing.Point(420, 45);
            this.txtdireccion.Name = "txtdireccion";
            this.txtdireccion.Size = new System.Drawing.Size(131, 26);
            this.txtdireccion.TabIndex = 6;
            // 
            // dtpn
            // 
            this.dtpn.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpn.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpn.Location = new System.Drawing.Point(418, 150);
            this.dtpn.Name = "dtpn";
            this.dtpn.Size = new System.Drawing.Size(131, 26);
            this.dtpn.TabIndex = 9;
            // 
            // txtapellidom
            // 
            this.txtapellidom.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtapellidom.Location = new System.Drawing.Point(151, 146);
            this.txtapellidom.Name = "txtapellidom";
            this.txtapellidom.Size = new System.Drawing.Size(123, 26);
            this.txtapellidom.TabIndex = 4;
            // 
            // txtapellidop
            // 
            this.txtapellidop.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtapellidop.Location = new System.Drawing.Point(151, 114);
            this.txtapellidop.Name = "txtapellidop";
            this.txtapellidop.Size = new System.Drawing.Size(123, 26);
            this.txtapellidop.TabIndex = 3;
            // 
            // txtnombre
            // 
            this.txtnombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtnombre.Location = new System.Drawing.Point(151, 79);
            this.txtnombre.Name = "txtnombre";
            this.txtnombre.Size = new System.Drawing.Size(123, 26);
            this.txtnombre.TabIndex = 2;
            // 
            // txtbuscar
            // 
            this.txtbuscar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtbuscar.Location = new System.Drawing.Point(91, 9);
            this.txtbuscar.Name = "txtbuscar";
            this.txtbuscar.Size = new System.Drawing.Size(511, 26);
            this.txtbuscar.TabIndex = 26;
            this.txtbuscar.TextChanged += new System.EventHandler(this.txtbuscar_TextChanged);
            // 
            // txtanio
            // 
            this.txtanio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtanio.Location = new System.Drawing.Point(151, 45);
            this.txtanio.Name = "txtanio";
            this.txtanio.Size = new System.Drawing.Size(123, 26);
            this.txtanio.TabIndex = 1;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(67, 48);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(38, 20);
            this.label12.TabIndex = 55;
            this.label12.Text = "Año";
            // 
            // gpoestudios
            // 
            this.gpoestudios.Controls.Add(this.btncargar);
            this.gpoestudios.Controls.Add(this.txtarchivo);
            this.gpoestudios.Controls.Add(this.label16);
            this.gpoestudios.Controls.Add(this.btncancelar1);
            this.gpoestudios.Controls.Add(this.label15);
            this.gpoestudios.Controls.Add(this.cmbmaestro);
            this.gpoestudios.Controls.Add(this.btnaceptar);
            this.gpoestudios.Controls.Add(this.label14);
            this.gpoestudios.Controls.Add(this.txtlugar);
            this.gpoestudios.Controls.Add(this.label13);
            this.gpoestudios.Controls.Add(this.txtcertificacion);
            this.gpoestudios.Location = new System.Drawing.Point(8, 41);
            this.gpoestudios.Name = "gpoestudios";
            this.gpoestudios.Size = new System.Drawing.Size(623, 212);
            this.gpoestudios.TabIndex = 60;
            this.gpoestudios.TabStop = false;
            this.gpoestudios.Text = "Estudios";
            this.gpoestudios.Enter += new System.EventHandler(this.gpoestudios_Enter);
            // 
            // btncargar
            // 
            this.btncargar.Location = new System.Drawing.Point(474, 117);
            this.btncargar.Name = "btncargar";
            this.btncargar.Size = new System.Drawing.Size(31, 23);
            this.btncargar.TabIndex = 10;
            this.btncargar.Text = "...";
            this.btncargar.UseVisualStyleBackColor = true;
            this.btncargar.Click += new System.EventHandler(this.btncargar_Click_1);
            // 
            // txtarchivo
            // 
            this.txtarchivo.Location = new System.Drawing.Point(176, 116);
            this.txtarchivo.Name = "txtarchivo";
            this.txtarchivo.Size = new System.Drawing.Size(268, 20);
            this.txtarchivo.TabIndex = 9;
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label16.Location = new System.Drawing.Point(40, 117);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(111, 20);
            this.label16.TabIndex = 8;
            this.label16.Text = "Cargar archivo";
            // 
            // btncancelar1
            // 
            this.btncancelar1.Image = global::ControlEscolar.Properties.Resources.cancelar1;
            this.btncancelar1.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btncancelar1.Location = new System.Drawing.Point(474, 82);
            this.btncancelar1.Name = "btncancelar1";
            this.btncancelar1.Size = new System.Drawing.Size(90, 32);
            this.btncancelar1.TabIndex = 7;
            this.btncancelar1.Text = "Cancelar";
            this.btncancelar1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btncancelar1.UseVisualStyleBackColor = true;
            this.btncancelar1.Click += new System.EventHandler(this.btncancelar1_Click_1);
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.Location = new System.Drawing.Point(84, 91);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(67, 20);
            this.label15.TabIndex = 6;
            this.label15.Text = "Maestro";
            // 
            // cmbmaestro
            // 
            this.cmbmaestro.FormattingEnabled = true;
            this.cmbmaestro.Location = new System.Drawing.Point(176, 90);
            this.cmbmaestro.Name = "cmbmaestro";
            this.cmbmaestro.Size = new System.Drawing.Size(268, 21);
            this.cmbmaestro.TabIndex = 5;
            this.cmbmaestro.SelectedIndexChanged += new System.EventHandler(this.cmbmaestro_SelectedIndexChanged_1);
            this.cmbmaestro.Click += new System.EventHandler(this.cmbmaestro_Click_1);
            // 
            // btnaceptar
            // 
            this.btnaceptar.Image = global::ControlEscolar.Properties.Resources.aceptar;
            this.btnaceptar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnaceptar.Location = new System.Drawing.Point(474, 39);
            this.btnaceptar.Name = "btnaceptar";
            this.btnaceptar.Size = new System.Drawing.Size(90, 31);
            this.btnaceptar.TabIndex = 4;
            this.btnaceptar.Text = "Aceptar";
            this.btnaceptar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnaceptar.UseVisualStyleBackColor = true;
            this.btnaceptar.Click += new System.EventHandler(this.btnaceptar_Click_1);
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.Location = new System.Drawing.Point(101, 64);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(50, 20);
            this.label14.TabIndex = 3;
            this.label14.Text = "Lugar";
            // 
            // txtlugar
            // 
            this.txtlugar.Location = new System.Drawing.Point(176, 64);
            this.txtlugar.Name = "txtlugar";
            this.txtlugar.Size = new System.Drawing.Size(268, 20);
            this.txtlugar.TabIndex = 2;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(64, 38);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(96, 20);
            this.label13.TabIndex = 1;
            this.label13.Text = "Certificacion";
            // 
            // txtcertificacion
            // 
            this.txtcertificacion.Location = new System.Drawing.Point(176, 38);
            this.txtcertificacion.Name = "txtcertificacion";
            this.txtcertificacion.Size = new System.Drawing.Size(268, 20);
            this.txtcertificacion.TabIndex = 0;
            // 
            // gpoinformacion1
            // 
            this.gpoinformacion1.Controls.Add(this.btneliminarcarpeta);
            this.gpoinformacion1.Controls.Add(this.btneliminarc);
            this.gpoinformacion1.Controls.Add(this.btnvolver);
            this.gpoinformacion1.Controls.Add(this.label11);
            this.gpoinformacion1.Controls.Add(this.txtbuscare);
            this.gpoinformacion1.Controls.Add(this.dtgestudiosc);
            this.gpoinformacion1.Location = new System.Drawing.Point(7, 45);
            this.gpoinformacion1.Name = "gpoinformacion1";
            this.gpoinformacion1.Size = new System.Drawing.Size(618, 205);
            this.gpoinformacion1.TabIndex = 61;
            this.gpoinformacion1.TabStop = false;
            this.gpoinformacion1.Text = "Informacion";
            this.gpoinformacion1.Enter += new System.EventHandler(this.gpoinformacion1_Enter);
            // 
            // btneliminarcarpeta
            // 
            this.btneliminarcarpeta.Image = global::ControlEscolar.Properties.Resources.delete;
            this.btneliminarcarpeta.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btneliminarcarpeta.Location = new System.Drawing.Point(292, 168);
            this.btneliminarcarpeta.Name = "btneliminarcarpeta";
            this.btneliminarcarpeta.Size = new System.Drawing.Size(115, 31);
            this.btneliminarcarpeta.TabIndex = 47;
            this.btneliminarcarpeta.Text = "Eliminar Carpeta";
            this.btneliminarcarpeta.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btneliminarcarpeta.UseVisualStyleBackColor = true;
            this.btneliminarcarpeta.Click += new System.EventHandler(this.btneliminarcarpeta_Click);
            // 
            // btneliminarc
            // 
            this.btneliminarc.Image = global::ControlEscolar.Properties.Resources.delete;
            this.btneliminarc.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btneliminarc.Location = new System.Drawing.Point(152, 168);
            this.btneliminarc.Name = "btneliminarc";
            this.btneliminarc.Size = new System.Drawing.Size(115, 31);
            this.btneliminarc.TabIndex = 46;
            this.btneliminarc.Text = "Eliminar registro";
            this.btneliminarc.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btneliminarc.UseVisualStyleBackColor = true;
            this.btneliminarc.Click += new System.EventHandler(this.btneliminarc_Click_1);
            // 
            // btnvolver
            // 
            this.btnvolver.Image = global::ControlEscolar.Properties.Resources.aceptar;
            this.btnvolver.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnvolver.Location = new System.Drawing.Point(36, 168);
            this.btnvolver.Name = "btnvolver";
            this.btnvolver.Size = new System.Drawing.Size(90, 31);
            this.btnvolver.TabIndex = 8;
            this.btnvolver.Text = "Aceptar";
            this.btnvolver.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnvolver.UseVisualStyleBackColor = true;
            this.btnvolver.Click += new System.EventHandler(this.btnvolver_Click_1);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(65, 28);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(50, 16);
            this.label11.TabIndex = 45;
            this.label11.Text = "Buscar";
            // 
            // txtbuscare
            // 
            this.txtbuscare.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtbuscare.Location = new System.Drawing.Point(151, 25);
            this.txtbuscare.Name = "txtbuscare";
            this.txtbuscare.Size = new System.Drawing.Size(414, 22);
            this.txtbuscare.TabIndex = 44;
            this.txtbuscare.TextChanged += new System.EventHandler(this.txtbuscare_TextChanged_1);
            // 
            // dtgestudiosc
            // 
            this.dtgestudiosc.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgestudiosc.Location = new System.Drawing.Point(36, 56);
            this.dtgestudiosc.Name = "dtgestudiosc";
            this.dtgestudiosc.Size = new System.Drawing.Size(558, 108);
            this.dtgestudiosc.TabIndex = 0;
            this.dtgestudiosc.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgestudiosc_CellContentClick);
            // 
            // btninformacion
            // 
            this.btninformacion.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.btninformacion.Image = global::ControlEscolar.Properties.Resources.info1;
            this.btninformacion.Location = new System.Drawing.Point(592, 114);
            this.btninformacion.Name = "btninformacion";
            this.btninformacion.Size = new System.Drawing.Size(29, 26);
            this.btninformacion.TabIndex = 58;
            this.btninformacion.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btninformacion.UseVisualStyleBackColor = true;
            this.btninformacion.Click += new System.EventHandler(this.btninformacion_Click);
            // 
            // btnmas
            // 
            this.btnmas.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.btnmas.Image = global::ControlEscolar.Properties.Resources._new;
            this.btnmas.Location = new System.Drawing.Point(557, 114);
            this.btnmas.Name = "btnmas";
            this.btnmas.Size = new System.Drawing.Size(29, 26);
            this.btnmas.TabIndex = 57;
            this.btnmas.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnmas.UseVisualStyleBackColor = true;
            this.btnmas.Click += new System.EventHandler(this.btnmas_Click);
            // 
            // btneliminar
            // 
            this.btneliminar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.btneliminar.Image = global::ControlEscolar.Properties.Resources.eliminar1;
            this.btneliminar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btneliminar.Location = new System.Drawing.Point(482, 384);
            this.btneliminar.Name = "btneliminar";
            this.btneliminar.Size = new System.Drawing.Size(120, 51);
            this.btneliminar.TabIndex = 48;
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
            this.btncancelar.Location = new System.Drawing.Point(332, 384);
            this.btncancelar.Name = "btncancelar";
            this.btncancelar.Size = new System.Drawing.Size(120, 51);
            this.btncancelar.TabIndex = 47;
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
            this.btnguardar.Location = new System.Drawing.Point(176, 384);
            this.btnguardar.Name = "btnguardar";
            this.btnguardar.Size = new System.Drawing.Size(120, 51);
            this.btnguardar.TabIndex = 46;
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
            this.btnnuevo.Location = new System.Drawing.Point(12, 384);
            this.btnnuevo.Name = "btnnuevo";
            this.btnnuevo.Size = new System.Drawing.Size(120, 51);
            this.btnnuevo.TabIndex = 0;
            this.btnnuevo.Text = "Nuevo";
            this.btnnuevo.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnnuevo.UseVisualStyleBackColor = true;
            this.btnnuevo.Click += new System.EventHandler(this.btnnuevo_Click);
            // 
            // FrmMaestro
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(648, 441);
            this.Controls.Add(this.gpoinformacion1);
            this.Controls.Add(this.gpoestudios);
            this.Controls.Add(this.btninformacion);
            this.Controls.Add(this.btnmas);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.txtanio);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.cmbciudade);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.cmbestados);
            this.Controls.Add(this.lblmatricula);
            this.Controls.Add(this.btneliminar);
            this.Controls.Add(this.btncancelar);
            this.Controls.Add(this.btnguardar);
            this.Controls.Add(this.btnnuevo);
            this.Controls.Add(this.dtgmaestros);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txttitulo);
            this.Controls.Add(this.txtcedula);
            this.Controls.Add(this.txtdireccion);
            this.Controls.Add(this.dtpn);
            this.Controls.Add(this.txtapellidom);
            this.Controls.Add(this.txtapellidop);
            this.Controls.Add(this.txtnombre);
            this.Controls.Add(this.txtbuscar);
            this.Name = "FrmMaestro";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmMaestro";
            this.Load += new System.EventHandler(this.FrmMaestro_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtgmaestros)).EndInit();
            this.gpoestudios.ResumeLayout(false);
            this.gpoestudios.PerformLayout();
            this.gpoinformacion1.ResumeLayout(false);
            this.gpoinformacion1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgestudiosc)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox cmbciudade;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox cmbestados;
        private System.Windows.Forms.Label lblmatricula;
        private System.Windows.Forms.Button btneliminar;
        private System.Windows.Forms.Button btncancelar;
        private System.Windows.Forms.Button btnguardar;
        private System.Windows.Forms.Button btnnuevo;
        private System.Windows.Forms.DataGridView dtgmaestros;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txttitulo;
        private System.Windows.Forms.TextBox txtcedula;
        private System.Windows.Forms.TextBox txtdireccion;
        private System.Windows.Forms.DateTimePicker dtpn;
        private System.Windows.Forms.TextBox txtapellidom;
        private System.Windows.Forms.TextBox txtapellidop;
        private System.Windows.Forms.TextBox txtnombre;
        private System.Windows.Forms.TextBox txtbuscar;
        private System.Windows.Forms.TextBox txtanio;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Button btnmas;
        private System.Windows.Forms.Button btninformacion;
        private System.Windows.Forms.GroupBox gpoestudios;
        private System.Windows.Forms.GroupBox gpoinformacion1;
        private System.Windows.Forms.Button btneliminarc;
        private System.Windows.Forms.Button btnvolver;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtbuscare;
        private System.Windows.Forms.DataGridView dtgestudiosc;
        private System.Windows.Forms.Button btncargar;
        private System.Windows.Forms.TextBox txtarchivo;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Button btncancelar1;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.ComboBox cmbmaestro;
        private System.Windows.Forms.Button btnaceptar;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox txtlugar;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox txtcertificacion;
        private System.Windows.Forms.Button btneliminarcarpeta;
    }
}