using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Entidades.ControlEscolar;
using AccesoDatos.ControlEscolar;
using LogicaNegocio.ControlEscolar;
using System.IO;
namespace ControlEscolar
{
    public partial class FrmMaestro : Form 
    {
        private EstudioAccesoDatos _e;
        private OpenFileDialog _archivo;
        private MaestroAccesoDatos mm;
        private MaestroManejador _maestroAccesoDatos;
        private CiudadManejador _ciudadManejador;
        private EstudioMajenador _estudioMajenador;
        private estadoManejador _estadoManejador;
        private string ruta;
        private string ruta2;
        private string ruta3;
        public string c1;

        
        public FrmMaestro()
        {
            InitializeComponent();
            _e = new EstudioAccesoDatos();
            _maestroAccesoDatos = new MaestroManejador();
            _ciudadManejador = new CiudadManejador();
            _estadoManejador = new estadoManejador();
            _estudioMajenador = new EstudioMajenador();
            mm = new MaestroAccesoDatos();
            _archivo = new OpenFileDialog();
        
            



        }

        private void FrmMaestro_Load(object sender, EventArgs e)
        {
            _estadoManejador.Getestado(cmbestados);
            gpoestudios.Visible = false;
            gpoinformacion1.Visible = false;
         
            buscaalumno("");
            controlar_botones(true, false, false, true);
            controlar_cajas(false);
            ex(" ");
        }
        private void guardarA()
        {


            _maestroAccesoDatos.Guardar(new Maestros
            {
                Idmaestro = int.Parse(lblmatricula.Text),
              
                Nombre=txtnombre.Text,
                Apellidop=txtapellidop.Text,
                Apellidom=txtapellidom.Text,
                Direccion=txtdireccion.Text,
                Estado=cmbestados.Text,
                Ciudad=cmbciudade.Text,
                NumeroCedula=txtcedula.Text,
                FechaNacimiento=dtpn.Text,
                Titulo=txttitulo.Text
            }
            ,txtanio.Text);
            

        }
        private void eliminarMAestro()
        {
            var numero = dtgmaestros.CurrentRow.Cells["idmaestro"].Value;
            _maestroAccesoDatos.Eliminar(Convert.ToInt32( numero));
           
            
        }
        private void btnaceptar_Click(object sender, EventArgs e)
        {
            
         
        }
        private void btnaceptar_Click_1(object sender, EventArgs e)
        {
            ruta = Application.StartupPath + "\\" + cmbmaestro.Text + "\\";
            _estudioMajenador.Guardar(new Estudios
            {
                Estudio = txtcertificacion.Text,
                Ligar = txtlugar.Text,
                Maestro = cmbmaestro.SelectedValue.ToString(),
                Carchivo = txtarchivo.Text,
            }, new Maestros
            {
                Nombre = cmbmaestro.Text
            });
            limpiarc();
            guardarimagenJPG();
            gpoestudios.Visible = false;
            gpoinformacion1.Visible = true;
            buscaestudio("");
            txtbuscare.Text = " ";
            txtbuscare.Text = "";
            
            c1 = cmbmaestro.Text;
        }
        private void eliminarestudio()
        {
            var numero = dtgestudiosc.CurrentRow.Cells["idestudios"].Value;
            _estudioMajenador.Eliminar(Convert.ToInt32( numero));
            cargar();

            if (Directory.Exists(ruta))
            {
                var obtenerarchivo = Directory.GetFiles(ruta, _archivo.Filter);
              
                if (obtenerarchivo.Length !=0)
                {
                    Directory.Delete(ruta,true);

                }
            }
       
                                
        }
        private void eliminarcarpeta()
        {
            var numero2 = dtgestudiosc.CurrentRow.Cells["Maestro"].Value;

            ruta2 = Application.StartupPath + "\\" + numero2;
            MessageBox.Show(ruta2);


            if (Directory.Exists(ruta2))
            {

                MessageBox.Show("entro");
                MessageBox.Show(ruta2);
                Directory.Delete(ruta2, true);
                
            }
        }
        private void eliminarArchivo()
        {
            var numero = dtgestudiosc.CurrentRow.Cells["Carchivo"].Value;
            var numero2 = dtgestudiosc.CurrentRow.Cells["Maestro"].Value;
            MessageBox.Show(numero.ToString());
            ruta3 = Application.StartupPath + "\\" + numero2 +"\\"+ numero;
            if(Directory.Exists(ruta3))
            {
                MessageBox.Show("entro");
                MessageBox.Show(ruta3);
                File.Delete(ruta3);
            }
        }
        private void buscaalumno(string filtro)
        {
            dtgmaestros.DataSource = _maestroAccesoDatos.GetMAestros(filtro);
        }
        public void buscaestudio(string filtro)
        {
            
        }
        private void txtbuscar_TextChanged(object sender, EventArgs e)
        {
            buscaalumno(txtbuscar.Text);
        }

        private void btnguardar_Click(object sender, EventArgs e)
        {
            
            _maestroAccesoDatos.recuperar(txtanio.Text);
            guardarA();
            controlar_botones(true, false, false, true);
            controlar_cajas(false);
            buscaalumno("");
            limpiar();
        }

        private void btneliminar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("estas seguro que deceas eliminar este registro", "eliminar", MessageBoxButtons.YesNo) == DialogResult.Yes)

            {
                try
                {
                    eliminarMAestro();
                    buscaalumno("");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);

                }
            }
        }

        private void cmbestados_SelectedIndexChanged(object sender, EventArgs e)
        {
            _ciudadManejador.Getciudades(cmbciudade, cmbestados);
        }

        private void btnmas_Click(object sender, EventArgs e)
        {
            gpoestudios.Enabled = true;
            gpoestudios.Visible = true;

            dtgmaestros.Visible = false;
           
           
        }

        private void cmbmaestro_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        private void ex(string filtro)
        {
            cmbmaestro.DataSource = _maestroAccesoDatos.GetMAestros(filtro);
            cmbmaestro.ValueMember = "idmaestro";
            cmbmaestro.DisplayMember = "nombre";
        }

      
      
      
        private void guardarimagenJPG()
        {
            cargar();   

           
            if (_archivo.FileName != null)
            {
                if (_archivo.FileName != "")
                {
                    var document = new FileInfo(_archivo.FileName);
                    if (Directory.Exists(ruta))
                    {

                        //codigo para aggregar el archivo
                        if (Directory.Exists(ruta)==false)
                        {


                            var obtenerArchivps = Directory.GetFiles(ruta, _archivo.Filter);


                            FileInfo archivoanterior;
                            if (obtenerArchivps.Length != 0)
                            {
                                //codigo para remplazar imagen
                                archivoanterior = new FileInfo(obtenerArchivps[0]);

                                if (archivoanterior.Exists)
                                {
                                    archivoanterior.Delete();
                                    document.CopyTo(ruta + document.Name);

                                }
                            }
                        }
                        else
                        {
                            document.CopyTo(ruta + document.Name);
                        }
                    }
                    else
                    {
                        Directory.CreateDirectory(ruta);
                        document.CopyTo(ruta + document.Name);
                    }
                }
            }
        }
        private void cmbciudade_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btncancelar_Click(object sender, EventArgs e)
        {
            limpiar();
            controlar_botones(true, false, false, true);
            controlar_cajas(false);

        }
        public void limpiar()
        {
            txtanio.Clear();
            txtnombre.Clear();
            txtapellidop.Clear();
            txtapellidom.Clear();
            txtcedula.Clear();
            txtcertificacion.Clear();
            txttitulo.Clear();
            txtdireccion.Clear();
            
        }
        private void btncancelar1_Click(object sender, EventArgs e)
        {
            limpiarc();
            gpoestudios.Visible = false;
            controlar_botones(true, false, false, true);
            controlar_cajas(true);
            dtgmaestros.Visible = true;
            
        }
        public void limpiarc()
        {
            txtcertificacion.Clear();
            txtlugar.Clear();
            
        }
        private void btnnuevo_Click(object sender, EventArgs e)
        {
            controlar_cajas(true);
            controlar_botones(false, true, true, false);
        }
        private void controlar_botones(bool nuevo, bool guardar, bool cancelar, bool eliminar)
        {
            btnnuevo.Enabled = nuevo;
            btnguardar.Enabled = guardar;
            btncancelar.Enabled = cancelar;
            btneliminar.Enabled = eliminar;
        }
        private void controlar_cajas(bool activar)
        {
            txtnombre.Enabled = activar;
            txtapellidop.Enabled = activar;
            txtapellidom.Enabled = activar;
            dtpn.Enabled = activar;
            txtcedula.Enabled = activar;
            txtdireccion.Enabled = activar;       
            dtpn.Enabled = activar;
            cmbestados.Enabled = activar;
            cmbciudade.Enabled = activar;
            txttitulo.Enabled = activar;
            txtanio.Enabled = activar;
        }

        private void txtbuscare_TextChanged(object sender, EventArgs e)
        {
            buscaestudio(txtbuscare.Text);
        }

        private void btneliminarc_Click(object sender, EventArgs e)
        {
           
           
        }

        private void btninformacion_Click(object sender, EventArgs e)
        {
            gpoinformacion1.Visible = true;
            txtbuscare.Text = " ";
            txtbuscare.Text = "";
            dtgmaestros.Visible = false;
            
        }

        private void btnvolver_Click(object sender, EventArgs e)
        {
            
        }

        private void btncargar_Click(object sender, EventArgs e)
        {
           
        }
        private void btncargar_Click_1(object sender, EventArgs e)
        {
            _archivo.Filter = "Imagen tipo (*.jpg)|*.jpg|(*.pdf)|*.pdf|(*.xlsl)|*.xlsl";
            _archivo.Title = "cargar imagen";
            _archivo.ShowDialog();
            if (_archivo.FileName != "")
            {
                var archivo = new FileInfo(_archivo.FileName);
                txtarchivo.Text = archivo.Name;

            }
        }
        public void cargar()
        {

            _archivo.Filter = "Imagen tipo (*.jpg)|*.jpg|(*.pdf)|*.pdf|(*.xlsl)|*.xlsl";
           
        }

        private void cmbmaestro_Click(object sender, EventArgs e)
        {
           
        }

        private void btncancelar1_Click_1(object sender, EventArgs e)
        {
            gpoinformacion1.Visible = false;
            gpoestudios.Visible = false;
            controlar_botones(true, false, false, true);
            controlar_cajas(true);
            dtgmaestros.Visible = true;
            label8.Visible = false;
            lblmatricula.Visible = false;
        }

        private void btnvolver_Click_1(object sender, EventArgs e)
        {
            gpoinformacion1.Visible = false;
            controlar_botones(true, false, false, true);
            controlar_cajas(true);
            dtgmaestros.Visible = true;
            label8.Visible = true;
            lblmatricula.Visible = true;
        }

        private void cmbmaestro_SelectedIndexChanged_1(object sender, EventArgs e)
        {

        }

        private void cmbmaestro_Click_1(object sender, EventArgs e)
        {
             ex(" ");
            ex("");
        }

        private void txtbuscare_TextChanged_1(object sender, EventArgs e)
        {
            dtgestudiosc.DataSource = _estudioMajenador.GetEstudios(txtbuscare.Text);
        }

        private void dtgestudiosc_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btneliminarc_Click_1(object sender, EventArgs e)
        {
            if (MessageBox.Show("estas seguro que deceas eliminar este registro", "eliminar", MessageBoxButtons.YesNo) == DialogResult.Yes)

            {
                try
                {
                    eliminarArchivo();
                    eliminarestudio();
                    txtbuscare.Text = " ";
                    txtbuscare.Text = "";
                    
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);

                }
            }
        }

        private void gpoestudios_Enter(object sender, EventArgs e)
        {

        }

        private void btneliminarcarpeta_Click(object sender, EventArgs e)
        {
            eliminarcarpeta();
        }

        private void gpoinformacion1_Enter(object sender, EventArgs e)
        {

        }
    }
}
