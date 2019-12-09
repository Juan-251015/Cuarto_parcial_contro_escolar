using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using System.Data;
using System.Windows.Forms;
namespace AccesoDatos.ControlEscolar
{
    public class MateriaSiguienteAccesoDatos
    {
        conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);
        public void Guardar(MateriaSiguiente materia)
        {
           

            if (materia.Idmaterias == 0)
            {
                //codigo para insertar
                string consulta = string.Format("insert into materiasiguiente values(null,'{0}','{1}','{2}','{3}')", materia.Codigos, materia.Materiasiguiente, materia.Teoria, materia.Practica);
                conexion.Ejecutarconsulta(consulta);
            }
            else
            {
                //update o que lo modifique
                string consulta = string.Format("update materiasiguiente set codigos='{0}',nombrematerias ='{1}',teoria='{2}',practica='{3}' where idmaterias={4}", materia.Codigos, materia.Materiasiguiente, materia.Teoria, materia.Practica,materia.Idmaterias);
                conexion.Ejecutarconsulta(consulta);
            }

        }
        public List<MateriaSiguiente> GetComboSiguiente(string filtro)
        {

            //List<Usuario> listusuario = new List<Usuario>();
            var listMateriaSiguiente = new List<MateriaSiguiente>(); //la variable var es generica
            var ds = new DataSet();

            string consulta = "select * from materiasiguiente where nombrematerias like '%"+filtro+"%' ";
            ds = conexion.Obtenerdatos(consulta, "materiasiguiente");


            var dt = new DataTable();
            dt = ds.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                var materias = new MateriaSiguiente
                {
                 Idmaterias = Convert.ToInt32(row["idmaterias"]),
                   Codigos = row["codigos"].ToString(),
                    Materiasiguiente = row["nombrematerias"].ToString(),
                   Teoria = Convert.ToInt32(row["teoria"]),
                    Practica = Convert.ToInt32(row["practica"])
                };
                listMateriaSiguiente.Add(materias);

            }
            //HardCodear
            //lenar lista
            return listMateriaSiguiente;
        }
    }
}
