using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using LogicaNegocio.ControlEscolar;
using Entidades.ControlEscolar;
using Microsoft.Office.Interop.Excel;

namespace ControlEscolar
{
    public partial class Frmcalificaciones : Form
    {
        GrrpoiManejador _grupoManejador;
        calificacionesManejador _calificacionmanejador;
        MateriaManejados _materiamanejador;
        public Frmcalificaciones()
        {
            InitializeComponent();
            _grupoManejador = new GrrpoiManejador();
            _calificacionmanejador = new calificacionesManejador();
            _materiamanejador = new MateriaManejados();
        }

        private void Frmcalificaciones_Load(object sender, EventArgs e)
        {
            grupoCombo(" ");
            grupoCombo("");
            materiacombo(" ");
            materiacombo("");
            gpocalificaciones.Visible = false;
            txtparcial1.Enabled = false;
            txtparcial2.Enabled = false;
            txtparcial3.Enabled = false;
            txtparcial4.Enabled = false;
            cmbmateria.Enabled = false;

        }
        private void grupoCombo(string filtro)
        {
            cmbgrupo.DataSource = _grupoManejador.Getgrupo(filtro);
            cmbgrupo.ValueMember = "Idgrupo";
            cmbgrupo.DisplayMember = "Nombre_grupo";
        }

        private void cmbgrupo_Click(object sender, EventArgs e)
        {
            grupoCombo(" ");
            grupoCombo("");
        }
        private void materiacombo(string filtro)
        {
            cmbmateria.DataSource = _materiamanejador.GetMateria(filtro);
            cmbmateria.ValueMember = "Idmateriaa";
            cmbmateria.DisplayMember = "Nombremateria";
        }
        private void mostrar(string filtro)
        {
            dtgalumnos.DataSource = _calificacionmanejador.GetAlumnos(filtro);
        }

        private void cmbgrupo_SelectedIndexChanged(object sender, EventArgs e)
        {
            mostrar(cmbgrupo.Text);
        }
        private void seleccionarAlumno()
        {
            var Nombre = dtgalumnos.CurrentRow.Cells["Nombre"].Value.ToString();
            var apellidop = dtgalumnos.CurrentRow.Cells["Apellidopaterno"].Value.ToString();
            var apellidom = dtgalumnos.CurrentRow.Cells["Apellidomaterno"].Value.ToString();
            txtnombre.Text = Nombre;
            txtapellidopaterno.Text = apellidop;
            txtapellidomaterno.Text = apellidom;
            txtnombre.Enabled = false;
            txtapellidopaterno.Enabled = false;
            txtapellidomaterno.Enabled = false;
            cmbgrupo.Visible = false;
            dtgalumnos.Visible = false;
            label1.Visible = false;
        }

        private void dtgalumnos_DoubleClick(object sender, EventArgs e)
        {
            seleccionarAlumno();
            gpocalificaciones.Visible = true;
            mostrarCalificaiones(txtnombre.Text);
        }

        private void cmbmateria_Click(object sender, EventArgs e)
        {
            materiacombo(" ");
            materiacombo("");
        }
        private void guardar()
        {
            _calificacionmanejador.Guardar(new Calificaciones
            {
                ID = Convert.ToInt32(lblid.Text),
                Alumno = txtnombre.Text,
                ApellidoPaterno = txtapellidopaterno.Text,
                ApellidoMaterno = txtapellidomaterno.Text,
                Materia = cmbmateria.SelectedValue.ToString(),
                Parcial1 = Convert.ToDouble(txtparcial1.Text),
                Parcial2 = Convert.ToDouble(txtparcial2.Text),
                Parcia31 = Convert.ToDouble(txtparcial3.Text),
                Parcial4 = Convert.ToDouble(txtparcial4.Text),
            });
        }

        private void button2_Click(object sender, EventArgs e)
        {
            guardar();
            mostrarCalificaiones(txtnombre.Text);
            txtparcial1.Clear();
            txtparcial2.Clear();
            txtparcial3.Clear();
            txtparcial4.Clear();
        }
        private void mostrarCalificaiones(string filtro)
        {
            dtgcalificacion.DataSource = _calificacionmanejador.GetCalificacion(filtro);
        }

        private void btncancelar_Click(object sender, EventArgs e)
        {
            gpocalificaciones.Visible = false;
            cmbgrupo.Visible = true;
            dtgalumnos.Visible = true;
            label1.Visible = true;

            txtparcial1.Enabled =false;
            txtparcial2.Enabled =false;
            txtparcial3.Enabled =false;
            txtparcial4.Enabled =false;
            cmbmateria.Enabled = false;
        }

        private void btnagregar_Click(object sender, EventArgs e)
        {

            FrmMateria fm = new FrmMateria();
            fm.ShowDialog(); 
        }
        private void modificarCalificacion()
        {
            lblid.Text = dtgcalificacion.CurrentRow.Cells["ID"].Value.ToString();
            cmbmateria.Text = dtgcalificacion.CurrentRow.Cells["Materia"].Value.ToString();
            txtparcial1.Text = dtgcalificacion.CurrentRow.Cells["Parcial1"].Value.ToString();
            txtparcial2.Text = dtgcalificacion.CurrentRow.Cells["Parcial2"].Value.ToString();
            txtparcial3.Text = dtgcalificacion.CurrentRow.Cells["Parcia31"].Value.ToString();
            txtparcial4.Text = dtgcalificacion.CurrentRow.Cells["Parcial4"].Value.ToString();

        }

        private void dtgcalificacion_DoubleClick(object sender, EventArgs e)
        {
            modificarCalificacion();
        }

        private void btnExportar_Click(object sender, EventArgs e)
        {
            exportarDataGridviewExcel(dtgcalificacion);
        }
        private void exportarDataGridviewExcel(DataGridView dtg1)
        {
            try
            {
                SaveFileDialog fichero = new SaveFileDialog();
                fichero.Filter = "Excel (*.xls)|*.xls";
                if (fichero.ShowDialog() == DialogResult.OK)
                {
                    Microsoft.Office.Interop.Excel.Application aplicacion;
                    Workbook libros_trabajo;
                    Worksheet hoja_trabajo;
                    aplicacion = new Microsoft.Office.Interop.Excel.Application();
                    libros_trabajo = aplicacion.Workbooks.Add();
                    hoja_trabajo = (Microsoft.Office.Interop.Excel.Worksheet)libros_trabajo.Worksheets.get_Item(1);
                    for (int i = 0; i < dtg1.Rows.Count; i++)
                    {
                        for (int j = 0; j < dtg1.Columns.Count; j++)
                        {
                            hoja_trabajo.Cells[i + 1, j + 1] = dtg1.Rows[i].Cells[j].Value.ToString();
                        }
                    }
                    libros_trabajo.SaveAs(fichero.FileName, Microsoft.Office.Interop.Excel.XlFileFormat.xlWorkbookNormal);
                    libros_trabajo.Close(true);
                    aplicacion.Quit();
                    MessageBox.Show("Reporte terminado", "Reporte", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
            }
            catch (Exception)
            {

                MessageBox.Show("Fallo la creacion de archivo, intenta de nuevo con otro nombre");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            cmbmateria.Enabled = true;
            txtparcial1.Enabled = true;
            txtparcial2.Enabled=true;
            txtparcial3.Enabled=true;
            txtparcial4.Enabled=true;
            txtparcial1.Focus();
        }
    }
}
