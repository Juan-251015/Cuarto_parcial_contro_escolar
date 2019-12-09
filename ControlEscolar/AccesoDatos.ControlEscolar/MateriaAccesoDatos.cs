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
   public class MateriaAccesoDatos
    {
        conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);


        public void Guardar(Materia materias)
        {
            if (materias.Idmateriaa == 0)
            {
                MessageBox.Show(materias.Fkmateriaa + materias.Fkmaterias);   
                //codigo para insertar
                string consulta = string.Format("insert into materia values(null,'{0}','{1}','{2}','{3}','{4}','{5}')", materias.Codigo,materias.Nombremateria,materias.Teoria,materias.Practica,materias.Fkmateriaa,materias.Fkmaterias);
                conexion.Ejecutarconsulta(consulta);
            }
            else
            {
                //update o que lo modifique
                string consulta = string.Format("update materia set codigom='{0}',nombremateriaa ='{1}',teoria='{2}',practica='{3}', fkmateriaa='{4}',fkmaterias='{5}' where idmateriaa={6}",materias.Codigo, materias.Nombremateria, materias.Teoria, materias.Practica, materias.Fkmateriaa, materias.Fkmaterias,materias.Idmateriaa);
                conexion.Ejecutarconsulta(consulta);
            }
        }
        public void Eliminar(int id)
        {
            //eliminar
            string consulta = string.Format("delete from materia where idmateriaa={0}", id);
            conexion.Ejecutarconsulta(consulta);
        }
        public List<Materia> GetMateria(string filtro)
        {
            //List<Usuario> listusuario = new List<Usuario>();
            var listMateria = new List<Materia>(); //la variable var es generica
            var ds = new DataSet();
            string consulta = "Select * from v_materias where Materia like '%" + filtro + "%'";
            ds = conexion.Obtenerdatos(consulta, "v_materias");
            var dt = new DataTable();
            dt = ds.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                var materias = new Materia
                {
                    Idmateriaa = Convert.ToInt32(row["ID"]),
                    Codigo = row["Codigo"].ToString(),
                    Nombremateria = row["Materia"].ToString(),
                    Teoria = Convert.ToInt32(row["Horas de teoria"]),
                    Practica = Convert.ToInt32(row["Horas de practica"]),
                    Fkmateriaa = row["Materia anterior"].ToString(),
                    Fkmaterias = row["Materia siguiente"].ToString(),
                    Horas=Convert.ToInt32( row["Total horas"]),

                };
                listMateria.Add(materias);
            }
            //HardCodear
            //lenar lista
            return listMateria;
        }
    }
}
