using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using System.Windows.Forms;
using System.Data;

namespace AccesoDatos.ControlEscolar
{
    public class MateriaAnteriosAccesoDatos
    {
        conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);


        public void Guardar(MateriaAnterior materia)
        {
            if (materia.Idmateria == 0)
            {
                //codigo para insertar
                string consulta = string.Format("insert into materiaanterior values(null,'{0}','{1}','{2}','{3}')", materia.Codigoa, materia.Nombremateria, materia.Teoria, materia.Practica);
                conexion.Ejecutarconsulta(consulta);
            }
            else
            {
                //update o que lo modifique
                string consulta = string.Format("update materiaanterior set codigoa='{0}',nombremateria ='{1}',teoria='{2}',practica='{3}' where idmateria={4}", materia.Codigoa, materia.Nombremateria, materia.Teoria, materia.Practica, materia.Idmateria);
                conexion.Ejecutarconsulta(consulta);
            }

        }
        public List<MateriaAnterior> GetComboAnterior(string filtro)
        {

            //List<Usuario> listusuario = new List<Usuario>();
            var listMateriaAnterior= new List<MateriaAnterior>(); //la variable var es generica
            var ds = new DataSet();

            string consulta = "select * from materiaanterior where nombremateria like '%"+filtro+"%'";
            ds = conexion.Obtenerdatos(consulta, "materiaanterior");
            var dt = new DataTable();
            dt = ds.Tables[0];       
            foreach (DataRow row in dt.Rows)
            {
                var materiaant = new MateriaAnterior
                {
                    Idmateria=Convert.ToInt32(row["idmateria"]),
                   Codigoa=row["codigoa"].ToString(),
                   Nombremateria=row["nombremateria"].ToString(),
                   Teoria=Convert.ToInt32( row["teoria"]),
                   Practica=Convert.ToInt32(row["practica"])
                };
                listMateriaAnterior.Add(materiaant);
            }
            //HardCodear
            //lenar lista
            return listMateriaAnterior;
        }
    }
}
