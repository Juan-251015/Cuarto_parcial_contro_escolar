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
using LogicaNegocio.ControlEscolar;
using System.IO;
using MySql.Data.MySqlClient;
namespace ControlEscolar
{
    public partial class Frmescuela : Form
    {
        MySqlConnection con;
        private EscuelaManejador _escuelaManejador;
        private string ruta;
        private OpenFileDialog _archivo;
        private Image Nothing=null;
        private Escuela _escuela;
        public Frmescuela()
        {
            InitializeComponent();
            _escuelaManejador = new EscuelaManejador();
            _archivo = new OpenFileDialog();
            _escuela = new Escuela();
        }
        private void Frmescuela_Load(object sender, EventArgs e)
        {
          
            ruta = Application.StartupPath + "\\ LOGO \\";
            controlar_botones(true, false, false, true);
            controlar_cajas(false);
            mostrar();
            ocultar();
            modificarEscuela();
            btncargarimagen.Enabled = false;
            btncancelarlogo.Enabled = false;
            lblid.Visible = false;
        }
        private void guardarEscuela()
        {
            _escuelaManejador.Guardar(new Escuela
            {
                Idescuela = Convert.ToInt32(lblid.Text),
            Nombreescuela = txtnombre.Text,
           Rfc = txtrfc.Text,
           Domicilio = txtdomicilio.Text,
           Telefono = txttelefono.Text,
            Correo = txtcorreo.Text,
            Pagina = txtpagina.Text,
          Director = txtdirector.Text,
            Logo = txtlogo.Text
            }  
        );
        }      
        private void ocultar()
        {
            txtlogo.Visible = false;
            txtpeso.Visible = false;
        }
        private void btncargarimagen_Click(object sender, EventArgs e)
        {
            _archivo.Filter = "Imagen tipo (*.jpg)|*.jpg|(*.png)|*.png|(*.tif)|*.tif";
            _archivo.Title = "cargar imagen";
            _archivo.ShowDialog();
            if (_archivo.FileName != "")
            {
                var archivo = new FileInfo(_archivo.FileName);
              txtlogo.Text   = archivo.Name;
                string direccion = _archivo.FileName;
                pblogo.ImageLocation = direccion;
                pblogo.SizeMode = PictureBoxSizeMode.StretchImage;
                var f = archivo.Length;
                txtpeso.Text = f.ToString();
                if (int.Parse(txtpeso.Text)>5000000)
                {
                    MessageBox.Show("no puede insertar una imagen mayos a 5 megas");
                    txtpeso.Clear();
                    txtlogo.Clear();
                    pblogo.Image = Nothing;
                }
            }
        }
        public void cargar()
        {
            _archivo.Filter = "Imagen tipo (*.jpg)|*.jpg|(*.png)|*.png";
        }
        private void guardarimagenJPG()
        {
            MessageBox.Show(ruta);
            cargar();
            try
            {
                if (_archivo.FileName != null)
                {
                    if (_archivo.FileName != "")
                    {
                        var document = new FileInfo(_archivo.FileName);
                        if (Directory.Exists(ruta))
                        {

                            //codigo para aggregar el archivo
                            if (Directory.Exists(ruta) == false)
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
            catch (Exception )
            {
                throw;
            }          
        }
        private void btncancelarlogo_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿estas seguro que deceas eliminar la imagen? los cambios se realizaran al finalizar", "eliminar", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                try
                {
                    txtlogo.Text = "";
                    pblogo.Image = Nothing;
                    btncargarimagen.Focus();                    
                }
                catch (Exception)
                {
                    throw;
                }               
            }             
        }
        private void btnguardar_Click(object sender, EventArgs e)
        {
            MessageBox.Show(txtlogo.Text);
            guardarEscuela();
            guardarimagenJPG();
            controlar_botones(true, true, true, true);             
            modificarEscuela();
            btncancelar.Enabled = false;
            btncancelarlogo.Enabled = false;
            btnguardar.Enabled = false;
            controlar_cajas(false);
            btncargarimagen.Enabled = false;
        }
        private void mostrar()
        {
        

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
            txtpagina.Enabled = activar;
            txtrfc.Enabled = activar;
            txttelefono.Enabled = activar;
            txtdomicilio.Enabled = activar;
            txtcorreo.Enabled = activar;
            txtdirector.Enabled = activar;
            pblogo.Enabled = activar;
        }
        private void btnnuevo_Click(object sender, EventArgs e)
        {
            controlar_botones(false, true, true, false);
            controlar_cajas(true);
            txtnombre.Focus();
            pblogo.Image = Nothing;
        }
        private void btncancelar_Click(object sender, EventArgs e)
        {          
            modificarEscuela();
            controlar_botones(true, false, false, true);
            controlar_cajas(false);
            btncargarimagen.Enabled = false;
            btncancelarlogo.Enabled = false;
        }
        private void limpiar()
        {
            lblid.Text = 0.ToString() ;
            txtnombre.Clear();
            txtrfc.Clear();
            txtdomicilio.Clear();
            txttelefono.Clear();
            txtcorreo.Clear();
            txtpagina.Clear();
            txtdirector.Clear();
            pblogo.Image = Nothing;
        }
        private void btneliminar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("estas seguro que deceas eliminar este registro", "eliminar", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                try
                {
                    eliminarescuela(int.Parse(lblid.Text));
                    mostrar();
                    limpiar();
                    MessageBox.Show("no ahi registros, inserta uno");
                    controlar_botones(true, false, false, false);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    btneliminar.Enabled = false;
                }              
            }
        }
        private void eliminarescuela(int id)
        {          
            _escuelaManejador.Eliminar(int.Parse(lblid.Text));           
            if (Directory.Exists(ruta))
            {
                Directory.Delete(ruta, true);
            }
        }    
        private void dtgescuela_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
        private void dtgescuela_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            
            
        }
        private void modificarEscuela()
        {            
            con = new MySqlConnection("Server=localhost;" + "User=root; password=; database=empresa1");
            con.Open();
            MySqlCommand com = new MySqlCommand();
            com.Connection = con;
            com.CommandText = ("select * from escuela");
            MySqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                lblid.Text = dr["idescuela"].ToString();
                txtnombre.Text = dr["nombreescuela"].ToString();
                txtrfc.Text = dr["rfc"].ToString();
                txtdomicilio.Text = dr["domicilio"].ToString();
                txttelefono.Text = dr["telefono"].ToString();
                txtcorreo.Text = dr["correo"].ToString();
                txtpagina.Text = dr["pagina"].ToString();
                txtdirector.Text = dr["director"].ToString();
                txtlogo.Text = dr["logo"].ToString();
                var logito = dr["logo"].ToString();

                string direccion = ruta + logito;
                pblogo.ImageLocation = direccion;
                pblogo.SizeMode = PictureBoxSizeMode.StretchImage;
            }
            else
            {
                MessageBox.Show("Sin registro, Inserta un registro");               
            }                        
        }
        private void btnnuevo_Click_1(object sender, EventArgs e)
        {
            controlar_cajas(true);
            controlar_botones(false, true, true, false);
            btncargarimagen.Enabled = true;
            btncancelarlogo.Enabled = true;
        }     
    }
}
