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
    public partial class frmAlumnos : Form
    {
        DataSet ds = new DataSet();
        private AlumnoManejado _alumnoManejador;
        private estadoManejador _estadoManejador;
        private CiudadManejador _ciudadManejador;
        private GrrpoiManejador _grrpoiManejador;

        Alumnos _alumnos;
        public frmAlumnos()
        {
            InitializeComponent();
            _alumnoManejador = new AlumnoManejado();
            _estadoManejador = new estadoManejador();
            _ciudadManejador = new CiudadManejador();
            _grrpoiManejador = new GrrpoiManejador();
            _alumnos = new Alumnos();
        }

        private void frmAlumnos_Load(object sender, EventArgs e)
        {
            buscaalumno("");
            controlar_botones(true, false, false, true);
            controlar_cajas(false);
            limpiar();
            _estadoManejador.Getestado(cmbestados);
            grupocomobo(" ");
            gpogrupo.Visible = false;

        }
        private void buscaalumno(string filtro)
        {
       
            dtgalumnos.DataSource = _alumnoManejador.GetAlumnos(filtro);
        }

        private void controlar_botones(bool nuevo, bool guardar, bool cancelar, bool eliminar)
        {
            btnnuevo.Enabled = nuevo;
            btnguardar.Enabled = guardar;
            btncancelar.Enabled = cancelar;
            btneliminar.Enabled = eliminar;
        }
        private void guardarA()
        {
           
            _alumnoManejador.Guardar(new Alumnos
            {
                Matricula = Convert.ToInt32(lblmatricula.Text),
                Nombre = txtnombre.Text,
                Apellidopaterno = txtapellidop.Text,
                Apellidomaterno = txtapellidom.Text,
                Fechanacimiento=dtpn.Text,
                Domicilio=txtdomicilio.Text,
                Email=txtemail.Text,
                Sexo=txtsexo.Text,    
                Fkestado=cmbestados.Text,
                Fkciudad=cmbciudade.Text,
                Grupoo = cmbgrupo.SelectedValue.ToString()

            }

            );
          
            
        }
     
        private void limpiar()
        {
            lblmatricula.Text = 0.ToString();
            txtnombre.Clear();
            txtapellidop.Clear();
            txtapellidom.Clear();
            txtdomicilio.Clear();
            txtemail.Clear();
            txtsexo.Clear();
            
        }
        private void eliminarAlumno()
        {

            var matricula = dtgalumnos.CurrentRow.Cells["matricula"].Value;
            _alumnoManejador.Eliminar(Convert.ToInt32(matricula));
        }
        private void modificarAlumno()
        {
            controlar_cajas(true);
            controlar_botones(false, true, true, false);
            lblmatricula.Text = dtgalumnos.CurrentRow.Cells["matricula"].Value.ToString();
            txtnombre.Text = dtgalumnos.CurrentRow.Cells["nombre"].Value.ToString();
            txtapellidop.Text = dtgalumnos.CurrentRow.Cells["apellidopaterno"].Value.ToString();
            txtapellidom.Text = dtgalumnos.CurrentRow.Cells["apellidomaterno"].Value.ToString();
            dtpn.Text = dtgalumnos.CurrentRow.Cells["fechanacimiento"].Value.ToString();
            txtdomicilio.Text = dtgalumnos.CurrentRow.Cells["domicilio"].Value.ToString();
            txtemail.Text = dtgalumnos.CurrentRow.Cells["email"].Value.ToString();
            txtsexo.Text = dtgalumnos.CurrentRow.Cells["sexo"].Value.ToString();
            cmbciudade.Text = dtgalumnos.CurrentRow.Cells["fkciudad"].Value.ToString();
           // cmbestados.Text = dtgalumnos.CurrentRow.Cells["fkestados"].Value.ToString();

        }
        private void controlar_cajas(bool activar)
        {
            txtnombre.Enabled = activar;
            txtapellidop.Enabled = activar;
            txtapellidom.Enabled = activar;
            dtpn.Enabled = activar;
            txtdomicilio.Enabled = activar;
            txtemail.Enabled = activar;
            txtsexo.Enabled = activar;
            dtpn.Enabled = activar;
            cmbestados.Enabled = activar;
            cmbciudade.Enabled = activar;
        }

        private void btnnuevo_Click(object sender, EventArgs e)
        {
            controlar_botones(false, true, true, false);
            controlar_cajas(true);
            txtnombre.Focus();
        }

        private void cargar_alumno()
        {
            _alumnos.Nombre = txtnombre.Text;
            _alumnos.Apellidopaterno = txtapellidop.Text;
            _alumnos.Apellidomaterno = txtapellidom.Text;
            _alumnos.Email = txtemail.Text;
            _alumnos.Domicilio = txtdomicilio.Text;
            _alumnos.Fechanacimiento = dtpn.Text;
            _alumnos.Fkestado = cmbestados.Text;
            _alumnos.Fkciudad = cmbciudade.Text;
        }
        private void btnguardar_Click(object sender, EventArgs e)
        {
           
            cargar_alumno();
            controlar_botones(true, false, false, true);
            controlar_cajas(false);
            if (ValidarAlumno())
            {
                try
                {
                    guardarA();
                    limpiar();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);

                }
            }
         
            buscaalumno("");
        }
        private bool ValidarAlumno()
        {
            var tupla = _alumnoManejador.ValidarAlumnos(_alumnos);
            var valido = tupla.Item1;
            var mensaje = tupla.Item2;

            if (!valido)
            {
                MessageBox.Show(mensaje, "error de validacion", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return valido;

        }

        private void btncancelar_Click(object sender, EventArgs e)
        {

            controlar_botones(true, false, false, true);
            controlar_cajas(false);

            limpiar();
        }

        private void btneliminar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("estas seguro que deceas eliminar este registro", "eliminar", MessageBoxButtons.YesNo) == DialogResult.Yes)

            {
                try
                {
                    eliminarAlumno();
                    buscaalumno("");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);

                }
            }
        }

        private void txtbuscar_TextChanged(object sender, EventArgs e)
        {
            buscaalumno(txtbuscar.Text);
        }

        private void cmbciudade_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        private void cmbestados_SelectionChangeCommitted(object sender, EventArgs e)
        {
          //  _ciudadManejador.Getciudades(cmbciudade, cmbestados);
        }

        private void cmbestados_SelectedIndexChanged(object sender, EventArgs e)
        {
            _ciudadManejador.Getciudades(cmbciudade,cmbestados);
        }

        private void cmbciudade_SelectionChangeCommitted(object sender, EventArgs e)
        {
           // _ciudadManejador.Getciudades(cmbciudade,Convert.ToString( cmbciudade.SelectedValue));
        }

        private void dtgalumnos_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dtgalumnos_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                modificarAlumno();
                buscaalumno("");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);

            }

        }
        private void grupocomobo(string filtro)
        {
            cmbgrupo.DataSource = _grrpoiManejador.Getgrupo(filtro);
            cmbgrupo.ValueMember = "Idgrupo";
            cmbgrupo.DisplayMember = "Nombre_grupo";
        }

        private void cmbgrupo_Click(object sender, EventArgs e)
        {
            grupocomobo(" ");
            grupocomobo("");
        }

        private void btnagregargrupo_Click(object sender, EventArgs e)
        {
            gpogrupo.Visible = true;
            visible(false);
        }
        private void visible(bool activar)
        {
            txtsexo.Visible = activar;
            txtnombre.Visible = activar;
            txtapellidop.Visible = activar;
            txtapellidom.Visible = activar;
            dtpn.Visible = activar;
            cmbestados.Visible = activar; txtdomicilio.Visible = activar;
            txtemail.Visible = activar;
            cmbgrupo.Visible = activar;
            cmbciudade.Visible = activar;
            dtgalumnos.Visible = activar;
            btnnuevo.Visible = activar;
            btnguardar.Visible = activar;
            btncancelar.Visible = activar;
            btneliminar.Visible = activar;
            label1.Visible = activar;
            label2.Visible = activar;
            label3.Visible = activar;
            label4.Visible = activar;
            label5.Visible = activar;
            label6.Visible = activar;
            label7.Visible = activar;
            label8.Visible = activar;
            label9.Visible = activar;
            label10.Visible = activar;
            label11.Visible = activar;
        }

        private void btnaceptar_Click(object sender, EventArgs e)
        {
            _grrpoiManejador.Guardar(new Grupoi
            {
                Idgrupo = Convert.ToInt32(lblidgrupo.Text),
                Nombre_grupo = txtgrupo.Text,

            });
            gpogrupo.Visible = false;
            visible(true);
            txtgrupo.Clear();
        }

        private void btncancelargrupo_Click(object sender, EventArgs e)
        {
            gpogrupo.Visible = false;
            visible(true);
        }
    }
}
