using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using System.Data;

namespace AccesoDatos.ControlEscolar
{
    public class GrupoAccessoDatos
    {
        conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);
        public void Guardar(Grupo grupo)
        {
            if (grupo.Id == 0)
            {
                //codigo para insertar
                string consulta = string.Format("insert into grupo values(null,'{0}','{1}')", grupo.Nombre, grupo.Alumno);
                conexion.Ejecutarconsulta(consulta);
            }
            else
            {
                //update o que lo modifique
                string consulta = string.Format("update grupo set nombre='{0}',fkalumno ='{1}' where idgrupo={2}", grupo.Nombre, grupo.Alumno, grupo.Id);
                conexion.Ejecutarconsulta(consulta);
            }
        }
        public void Eliminar(int id)
        {
            //eliminar
            string consulta = string.Format("delete from grupo where idgrupo={0}", id);
            conexion.Ejecutarconsulta(consulta);
        }
        public List<Alumnos> GetAlumnosGrupo(string filtro)
        {
            //List<Usuario> listusuario = new List<Usuario>();
            var listAlumnos = new List<Alumnos>(); //la variable var es generica
            var ds = new DataSet();
            string consulta = "Select * from v_alumnos where Grupo like '%" + filtro + "%'";
            ds = conexion.Obtenerdatos(consulta, "v_alumnos");
            var dt = new DataTable();
            dt = ds.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                var alumno = new Alumnos
                {
                    Matricula = Convert.ToInt32(row["Matricula"]),
                    Nombre = row["Nombrealumno"].ToString(),
                    Apellidopaterno = row["Apellidopaterno"].ToString(),
                    Apellidomaterno = row["Apellidomaterno"].ToString(),
                    Fechanacimiento = row["Fechanacimiento"].ToString(),
                    Domicilio = row["domicilio"].ToString(),
                    Email = row["Correo"].ToString(),
                    Sexo = row["sexo"].ToString(),
                    Fkestado = row["Estados"].ToString(),
                    Fkciudad = row["ciudad"].ToString(),
                    Grupoo = row["Grupo"].ToString()
                };
                listAlumnos.Add(alumno);
            }
            //HardCodear
            //lenar lista
            return listAlumnos;
        }

    }
}
