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
    public partial class FrmGupo : Form
    {
        GrupoManejador _grupomanejador;
        AlumnoManejado _alumnomanejador;
        GrrpoiManejador _grupoManejadori;

        public FrmGupo()
        {
            InitializeComponent();
            _grupomanejador = new GrupoManejador();
            _alumnomanejador = new AlumnoManejado();
            _grupoManejadori = new GrrpoiManejador();
        }

        private void FrmGupo_Load(object sender, EventArgs e)
        {

            grupocombo(" ");
            grupocombo("");

        }
        /*   private void guardargrupo()
           {
               _grupomanejador.Guardar(new Grupo
               {
                   Id = Convert.ToInt32(lblid.Text),
                   Nombre =cmbgrupo.Text,
                   Alumno = cmbalumno.SelectedValue.ToString(),

               });
           }*/
        /*  private void eliminargrupo()
          {
              var id = dtgmateria.CurrentRow.Cells["idgrupo"].Value;
              _grupomanejador.Eliminar(Convert.ToInt32( id));
          }

      */
        private void dtgmateria_DoubleClick(object sender, EventArgs e)
        {

        }
        private void mostrargrupo(string filtro)
        {
            dtgmateria.DataSource = _grupomanejador.GetAlumnosgrpo(cmbgrupo.Text);
        }
        private void txtbuscar_TextChanged(object sender, EventArgs e)
        {

        }
        private void btneliminar_Click(object sender, EventArgs e)
        {
            /*  if (MessageBox.Show("estas seguro que deceas eliminar este registro", "eliminar", MessageBoxButtons.YesNo) == DialogResult.Yes)

              {
                  try
                  {
                      eliminargrupo();
                     // buscamateria("");
                  }
                  catch (Exception ex)
                  {
                      MessageBox.Show(ex.Message);

                  }
              }*/
        }
        private void controlar_botones(bool nuevo, bool guardar, bool cancelar, bool eliminar)
        {

        }
        private void controlar_cajas(bool activar)
        {
            cmbgrupo.Enabled = activar;
            // cmbalumno.Enabled = activar;

        }
        private void alumnocombo(string filtro)
        {
            /*  cmbalumno.DataSource = _alumnomanejador.GetAlumnos(filtro);
              cmbalumno.ValueMember = "matricula";
              cmbalumno.DisplayMember = "nombre";
           */
        }
        private void grupocombo(string filtro)
        {
            cmbgrupo.DataSource = _grupoManejadori.Getgrupo(filtro);
            cmbgrupo.ValueMember = "Idgrupo";
            cmbgrupo.DisplayMember = "Nombre_grupo";
            /*  cmbgrupo.DataSource = _grupomanejador.GetAlumnos(filtro);
              cmbgrupo.DisplayMember = "nombre";
  */
        }

        private void cmbalumno_Click(object sender, EventArgs e)
        {
            //  alumnocombo("");
        }

        private void btnguardar_Click(object sender, EventArgs e)
        {
            //  guardargrupo();
            mostrargrupo("");
        }

        private void cmbgrupo_Click(object sender, EventArgs e)
        {
            grupocombo(" ");
            grupocombo("");
        }

        private void btnanterior_Click(object sender, EventArgs e)
        {
            //   gpogrupo.Visible = true;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //   insertar_Grupo();
            //    gpogrupo.Visible = false;
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        private void cmbgrupo_SelectedIndexChanged(object sender, EventArgs e)
        {
            mostrargrupo(cmbgrupo.Text);
        }

        private void btncancelarlogo_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿estas seguro que deceas eliminar este grupo?", "eliminar", MessageBoxButtons.YesNo) == DialogResult.Yes)

            {
                try
                {
                    eliminargrupo();
                    mostrargrupo(" ");
                    mostrargrupo("");
                    grupocombo(" ");
                    grupocombo("");
                    cmbgrupo.Text = "";
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);


                }
            }
        }
        private void eliminargrupo()
        {
            var numero1 = cmbgrupo.SelectedValue.ToString();
            _grupoManejadori.Eliminar(Convert.ToInt32(numero1));
        }

        private void btnExportar_Click(object sender, EventArgs e)
        {
            exportarDataGridviewExcel(dtgmateria);
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

        private void cmbgrupo_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            mostrargrupo(cmbgrupo.Text);
        }

        private void btncancelarlogo_Click_1(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿estas seguro que deceas eliminar este grupo?", "eliminar", MessageBoxButtons.YesNo) == DialogResult.Yes)

            {
                try
                {
                    eliminargrupo();
                    mostrargrupo(" ");
                    mostrargrupo("");
                    grupocombo(" ");
                    grupocombo("");
                    cmbgrupo.Text = "";
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);


                }
            }
        }

        private void btnExportar_Click_1(object sender, EventArgs e)
        {
            exportarDataGridviewExcel(dtgmateria);
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
        /*   private void insertar_Grupo()
{
_grupoManejadori.Guardar(new Grupoi
{
Idgrupo=Convert.ToInt32( lblidgrupo.Text),
Nombre_grupo=txtgrupo.Text,

});*/

    }
}
