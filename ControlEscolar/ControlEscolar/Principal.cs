using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace ControlEscolar
{
    public partial class Principal : Form
    {
        public Principal()
        {
            InitializeComponent();
            
        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void usuarioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmusuario usuario = new frmusuario();
            usuario.ShowDialog();
        }

        private void alumnosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmAlumnos a = new frmAlumnos();
            a.ShowDialog();
        }

        private void cerrarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿Estas seguro que deceas salir del programa?", "Cerrar programa", MessageBoxButtons.YesNo) == DialogResult.Yes)

            {
                try
                {
                    Application.Exit();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);

                }
            }
          
        }

        private void maestrosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmMaestro m = new FrmMaestro();
            m.ShowDialog();
        }

        private void Principal_Load(object sender, EventArgs e)
        {

        }

        private void escuelasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Frmescuela es = new Frmescuela();
            es.ShowDialog();
        }

        private void materiasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmMateria ma = new FrmMateria();
            ma.ShowDialog();
        }

        private void grupoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmGupo fg = new FrmGupo();
            fg.ShowDialog();
        }

        private void asignacionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Frmasignacion fas = new Frmasignacion();
            fas.ShowDialog();
        }

        private void calificacionesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Frmcalificaciones fc = new Frmcalificaciones();
            fc.ShowDialog();
        }
    }
}
