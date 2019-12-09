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

namespace ControlEscolar
{
    public partial class frmusuario : Form
    {
        private UsuarioManejador _usuarioManejador;
        private Usuario _usuario;
        public frmusuario()
        {
            InitializeComponent();
            _usuarioManejador = new UsuarioManejador();
            _usuario = new Usuario();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            buscaUsuarios("");
            controlar_botones(true,false,false,true);
            controlar_cajas(false);
            limpiar();
        }
        private void buscaUsuarios(string filtro)
        {
            dtgusuario.DataSource = _usuarioManejador.GetUsuarios(filtro);
        }
        private void controlar_botones(bool nuevo, bool guardar, bool cancelar, bool eliminar)
        {
            btnnuevo.Enabled = nuevo;
            btnguardar.Enabled = guardar;
            Btncancelar.Enabled = cancelar;
            btneliminar.Enabled = eliminar;
        }

        private void btnnuevo_Click(object sender, EventArgs e)
        {
            controlar_botones(false, true, true, false);
            controlar_cajas(true);
            
        }
        private bool ValidarUsuario()
        {
            var tupla = _usuarioManejador.ValidarUsuario(_usuario);
            var valido = tupla.Item1;
            var mensaje = tupla.Item2;
            
            if (!valido)
            {
                MessageBox.Show(mensaje, "error de validacion", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return valido;

        }
        private void btnguardar_Click(object sender, EventArgs e)
        {
            cargar_usuario();
            if (ValidarUsuario())
            {
                controlar_botones(true, false, false, true);
                controlar_cajas(false);
                try
                {
                  
                    guardarU();
                    limpiar();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);

                }

            }
           
            
        }
        private void guardarU()
        {
            _usuarioManejador.Guardar(_usuario);
            
              
            
        }
        private void cargar_usuario()
        {
            _usuario.Idusuario = Convert.ToInt32(lblid.Text);
            _usuario.Nombre = txtnombre.Text;
            _usuario.Apellidopaterno = txtapellidop.Text;
            _usuario.Apellidomaterno = txtapellidom.Text;
            _usuario.Contrasenia = txtcontraseña.Text;
        }

        private void Btncancelar_Click(object sender, EventArgs e)
        {

            controlar_botones(true, false, false, true);
            controlar_cajas(false);

            limpiar();
        }
        private void controlar_cajas(bool activar)
        {
            txtnombre.Enabled = activar;
            txtapellidop.Enabled = activar;
            txtapellidom.Enabled = activar;
            txtcontraseña.Enabled = activar;
        }
        private void limpiar()
        {
            txtnombre.Clear();
            txtapellidop.Clear();
            txtapellidom.Clear();
            txtcontraseña.Clear();
        }

        private void txtbuscar_TextChanged(object sender, EventArgs e)
        {
            buscaUsuarios(txtbuscar.Text);
           
        }

        private void btneliminar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("estas seguro que deceas eliminar este registro","eliminar",MessageBoxButtons.YesNo)==DialogResult.Yes)

            {
                try
                {
                    eliminarUsuario();
                    buscaUsuarios("");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);

                }
            }
           
         
        }
        private void eliminarUsuario()
        {
            var idsuario = dtgusuario.CurrentRow.Cells["idusuario"].Value;
            _usuarioManejador.Eliminar(Convert.ToInt32( idsuario));
        }

        private void dtgusuario_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                modificarUsuario();
                buscaUsuarios("");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                
            }
        }
        private void modificarUsuario()
        {
            controlar_cajas(true);
            controlar_botones(false, true, true, false);
            lblid.Text = dtgusuario.CurrentRow.Cells["idusuario"].Value.ToString();
            txtnombre.Text= dtgusuario.CurrentRow.Cells["nombre"].Value.ToString();
            txtapellidop.Text= dtgusuario.CurrentRow.Cells["apellidopaterno"].Value.ToString();
            txtapellidom.Text= dtgusuario.CurrentRow.Cells["apellidomaterno"].Value.ToString();
            txtcontraseña.Text= dtgusuario.CurrentRow.Cells["contrasenia"].Value.ToString();
            
        }
    }
}
