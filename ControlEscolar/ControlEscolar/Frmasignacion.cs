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
    public partial class Frmasignacion : Form
    {
        AsignacionManejador _asignacionManejador;
        MaestroManejador _maestroManejador;
        GrrpoiManejador _grupomanejador;
        MateriaManejados _materiaManejador;
        public Frmasignacion()
        {
            InitializeComponent();
            _asignacionManejador = new AsignacionManejador();
            _maestroManejador = new MaestroManejador();
            _grupomanejador = new GrrpoiManejador();
            _materiaManejador = new MateriaManejados();
        }

        private void Frmasignacion_Load(object sender, EventArgs e)
        {
            controlar_botones(true, false, false, true);
            cajas(false);
            maestrocombo(" ");
            maestrocombo("");
            materiacombo(" ");
            grupocombo(" ");
            asignacioncombo(" ");
            asignacioncombo("");
        }
        private void guardar()
        {
            _asignacionManejador.Guardar(new Asignacion
            {
                ID = Convert.ToInt32(lblid.Text),
                Maestro = cmbprofesor.SelectedValue.ToString(),
                Materia = cmbmateria.SelectedValue.ToString(),
                Grupo = cmbgrupo.SelectedValue.ToString()
            });
        }
        private void maestrocombo(string filtro)
        {
            cmbprofesor.DataSource = _maestroManejador.GetMAestros(filtro);
            cmbprofesor.ValueMember = "Idmaestro";
            cmbprofesor.DisplayMember = "Nombre";
        }
        private void materiacombo(string filtro)
        {
            cmbmateria.DataSource = _materiaManejador.GetMateria(filtro);
            cmbmateria.ValueMember = "Idmateriaa";
            cmbmateria.DisplayMember = "Nombremateria";
        }
        private void grupocombo(string filtro)
        {
            cmbgrupo.DataSource = _grupomanejador.Getgrupo(filtro);
            cmbgrupo.ValueMember = "Idgrupo";
            cmbgrupo.DisplayMember = "Nombre_grupo";
        }
        private void asignacioncombo(string filtro)
        {
            cmbmaestro.DataSource = _maestroManejador.GetMAestros(filtro);
            cmbmaestro.DisplayMember = "Nombre";
        }

        private void cmbprofesor_Click(object sender, EventArgs e)
        {
            maestrocombo(" ");
            maestrocombo("");
        }

        private void cmbmateria_Click(object sender, EventArgs e)
        {
            materiacombo(" ");
            materiacombo("");
        }

        private void cmbgrupo_Click(object sender, EventArgs e)
        {
            grupocombo(" ");
            grupocombo("");
        }

        private void btnguardar_Click(object sender, EventArgs e)
        {
            guardar();
            controlar_botones(true, false, false, true);
            cajas(false);
            mostrar(" ");
            mostrar("");
            asignacioncombo(" ");
            asignacioncombo("");
        }
        private void mostrar(string filtro)
        {


            dtgasignacion.DataSource = _asignacionManejador.Getgrupo(filtro);

        }

        private void cmbmaestro_SelectedIndexChanged(object sender, EventArgs e)
        {
            mostrar(cmbmaestro.Text);
        }

        private void cmbmaestro_Click(object sender, EventArgs e)
        {
            asignacioncombo(" ");
            asignacioncombo("");
        }
        private void eliminarasignacion()
        {
            var matricula = dtgasignacion.CurrentRow.Cells["ID"].Value;
            _asignacionManejador.Eliminar(Convert.ToInt32(matricula));
        }

        private void btneliminar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("estas seguro que deceas eliminar este registro", "eliminar", MessageBoxButtons.YesNo) == DialogResult.Yes)

            {
                try
                {
                    eliminarasignacion();
                    mostrar(" ");
                    mostrar("");
                    asignacioncombo(" ");
                    asignacioncombo("");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);

                }
            }
        }

        private void btnnuevo_Click(object sender, EventArgs e)
        {
            controlar_botones(false, true, true, false);
            cajas(true);
        }
        private void cajas(bool activas)
        {
            cmbprofesor.Enabled = activas;
            cmbmateria.Enabled = activas;
            cmbgrupo.Enabled = activas;
        }
        private void iniciar()
        {
            maestrocombo(" ");
            maestrocombo("");
            materiacombo(" ");
            materiacombo("");
            grupocombo(" ");
            grupocombo("");
        }

        private void btncancelar_Click(object sender, EventArgs e)
        {
            iniciar();
            controlar_botones(true, false, false, true);
            cajas(false);
        }
        private void modificarAsignacion()
        {
            cajas(true);
            controlar_botones(false, true, true, false);
            lblid.Text = dtgasignacion.CurrentRow.Cells["ID"].Value.ToString();
            cmbprofesor.Text = dtgasignacion.CurrentRow.Cells["Maestro"].Value.ToString();
            cmbmateria.Text = dtgasignacion.CurrentRow.Cells["Materia"].Value.ToString();
            cmbgrupo.Text = dtgasignacion.CurrentRow.Cells["Grupo"].Value.ToString();


        }
        private void controlar_botones(bool nuevo, bool guardar, bool cancelar, bool eliminar)
        {
            btnnuevo.Enabled = nuevo;
            btnguardar.Enabled = guardar;
            btncancelar.Enabled = cancelar;
            btneliminar.Enabled = eliminar;
        }

        private void dtgasignacion_DoubleClick(object sender, EventArgs e)
        {
            modificarAsignacion();
        }
    }
}
