using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using System.Data;
using MySql.Data.MySqlClient;
using System.Windows.Forms;

namespace AccesoDatos.ControlEscolar
{
    public class AlumnoAccesoDatos
    {
        conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);


        public void Guardar(Alumnos alumnos)
        {
            if (alumnos.Matricula == 0)
            {
                //codigo para insertar
                string consulta = string.Format("insert into alumnos values(null,'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}')", alumnos.Nombre, alumnos.Apellidopaterno, alumnos.Apellidomaterno, alumnos.Fechanacimiento, alumnos.Domicilio, alumnos.Email, alumnos.Sexo, alumnos.Fkestado, alumnos.Fkciudad, alumnos.Grupoo);
                conexion.Ejecutarconsulta(consulta);
            }
            else
            {
                //update o que lo modifique
                string consulta = string.Format("update alumnos set nombre='{0}',apellidopaterno ='{1}',apellidomaterno='{2}',fechanacimiento='{3}', domicilio='{4}',email='{5}',sexo='{6}',fkestados='{7}',fkciudad='{8}',fkgrupo='{9}' where matricula={10}", alumnos.Nombre, alumnos.Apellidopaterno, alumnos.Apellidomaterno, alumnos.Fechanacimiento, alumnos.Domicilio, alumnos.Email, alumnos.Sexo, alumnos.Fkestado, alumnos.Fkciudad, alumnos.Grupoo, alumnos.Matricula);
                conexion.Ejecutarconsulta(consulta);
            }
        }

        public void Eliminar(int matricula)
        {
            //eliminar
            string consulta = string.Format("delete from alumnos where matricula={0}", matricula);
            conexion.Ejecutarconsulta(consulta);
        }
        public List<Alumnos> GetAlumnos(string filtro)
        {
            //List<Usuario> listusuario = new List<Usuario>();
            var listAlumnos = new List<Alumnos>(); //la variable var es generica
            var ds = new DataSet();
            string consulta = "Select * from v_alumnos where Nombrealumno like '%" + filtro + "%'";
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
