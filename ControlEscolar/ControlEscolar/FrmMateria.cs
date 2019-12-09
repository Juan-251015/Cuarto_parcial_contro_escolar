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
    public partial class FrmMateria : Form
    {
        MateriaManejados _materiaManejador;
        MateriaAnteriosManejador _materiaanteriorManejador;
        MateriaSiguienteManejados _materiasiguienteManejador;
        public FrmMateria()
        {
            InitializeComponent();
            _materiaManejador = new MateriaManejados();
            _materiaanteriorManejador = new MateriaAnteriosManejador();
            _materiasiguienteManejador = new MateriaSiguienteManejados();
        }

        private void FrmMateria_Load(object sender, EventArgs e)
        {
            controlar_botones(true, false, false, true);
            controlar_cajas(false);
            gpoanterior.Visible = false;
            gpomateriasiguiente.Visible = false;
            materiaanteriorcombo(" ");
            materiasiguientecombo(" ");
            buscamateria(" ");
            buscamateria("");
        }
        private void guardarMateria()
        {
                
            _materiaManejador.Guardar(new Materia
            {
                Idmateriaa = Convert.ToInt32(lblid.Text),
                Codigo = txtcodigo.Text,
                Nombremateria = txtmateria.Text,
                Teoria = int.Parse( txtteoria.Text),
                Practica =int.Parse( txtpractica.Text),
                Fkmateriaa = cmbanterior.SelectedValue.ToString(),
                Fkmaterias =cmbsiguiente.SelectedValue.ToString(),
            });
            
        }
        private void guardarMateriaAnterior()
        {
            try
            {
                _materiaanteriorManejador.Guardar(new MateriaAnterior
                {
                    Idmateria = Convert.ToInt32(lblid.Text),
                    Codigoa = txtcodigoanterior.Text,
                    Nombremateria = txtmateriaanterior.Text,
                    Teoria = int.Parse(txtteoriaanterior.Text),
                    Practica = int.Parse(txtpracticaanterior.Text)
                });
            }
            catch (Exception )
            {

                MessageBox.Show("no ahi registros añadidos, ingresa datos correspondientes");
             
            }
           
        }
        private void guardarmateriaSiguiente()
        {
            try
            {
                _materiasiguienteManejador.Guardar(new MateriaSiguiente
                {
                    Idmaterias = Convert.ToInt32(lblid.Text),
                    Codigos = txtcodigo.Text,
                    Materiasiguiente = txtnombresiguiente.Text,
                    Teoria = int.Parse(txtteoriasiguiente.Text),
                    Practica = int.Parse(txtpracticasiguiente.Text)
                });
            }
            catch (Exception)
            {

                MessageBox.Show("no ahi registros añadidos, ingresa datos correspondientes");
            }
         
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
            txtmateria.Enabled = activar;
            txtcodigo.Enabled = activar;
            txtteoria.Enabled = activar;
            txtpractica.Enabled = activar;
            cmbanterior.Enabled = activar;
            cmbsiguiente.Enabled = activar;
        }
        private void materiaanteriorcombo(string filtro)
        {
            cmbanterior.DataSource = _materiaanteriorManejador.GetMAestrosAnterior(filtro);
            cmbanterior.ValueMember = "idmateria";
            cmbanterior.DisplayMember = "nombremateria";
        }
        private void materiasiguientecombo(string filtro)
        {
            cmbsiguiente.DataSource = _materiasiguienteManejador.Getcombosiguiente(filtro);
            cmbsiguiente.ValueMember = "Idmaterias";
            cmbsiguiente.DisplayMember = "Materiasiguiente";
        }

        private void cmbanterior_Click(object sender, EventArgs e)
        {
            materiaanteriorcombo(" ");
            materiaanteriorcombo("");
        }

        private void cmbsihuiente_Click(object sender, EventArgs e)
        {
            
        }

        private void btnnuevo_Click(object sender, EventArgs e)
        {
            controlar_cajas(true);
            controlar_botones(false, true, true, false);
        }

        private void txtbuscar_TextChanged(object sender, EventArgs e)
        {
            buscamateria(txtbuscar.Text);
        }
        private void buscamateria(string filtro)
        {
            dtgmateria.DataSource = _materiaManejador.GetMateria(filtro);
        }

        private void btnanterior_Click(object sender, EventArgs e)
        {
            gpoanterior.Visible = true;
            controlar_botones(false, false, false, false);
        }

        private void btnsiguiente_Click(object sender, EventArgs e)
        {
            gpomateriasiguiente.Visible = true;
            controlar_botones(false, false, false, false);
        }

        private void btnaceptaranterior_Click(object sender, EventArgs e)
        {
            guardarMateriaAnterior();
            gpoanterior.Visible = false;
            controlar_botones(true, true, true, true);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            guardarmateriaSiguiente();
            gpomateriasiguiente.Visible = false;
            controlar_botones(true, true, true, true);
        }

        private void btnguardar_Click(object sender, EventArgs e)
        {
            guardarMateria();
            buscamateria(" ");
            buscamateria("");
            limpiar();
        }
        private void limpiar()
        {
            txtcodigo.Clear();
            txtmateria.Clear();
            txtpractica.Clear();
            txtteoria.Clear();

        }

        private void cmbsiguiente_Click(object sender, EventArgs e)
        {
            materiasiguientecombo(" ");
            materiasiguientecombo("");
            
        }

        private void btneliminar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("estas seguro que deceas eliminar este registro", "eliminar", MessageBoxButtons.YesNo) == DialogResult.Yes)

            {
                try
                {
                    eliminarmateria();
                    buscamateria("");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);

                }
            }
        }
        private void eliminarmateria()
        {
            var numero = dtgmateria.CurrentRow.Cells["idmateriaa"].Value;
            _materiaManejador.Eliminar(Convert.ToInt32( numero));
        }

        private void btncancelaranterior_Click(object sender, EventArgs e)
        {
            gpoanterior.Visible = false;
            controlar_botones(true, true, true, true);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            gpomateriasiguiente.Visible = false;
            controlar_botones(true, true, true, true);
        }
     

        private void dtgmateria_DoubleClick(object sender, EventArgs e)
        {
           
        }
    }
}
