using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using System.Data;

namespace AccesoDatos.ControlEscolar
{
    public class CalificacionesAccesoDatos
    {
        conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);


        public void Guardar(Calificaciones calificacion)
        {
            if (calificacion.ID == 0)
            {
                //codigo para insertar
                string consulta = string.Format("insert into calificaciones values(null,'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", calificacion.Alumno, calificacion.ApellidoMaterno, calificacion.ApellidoMaterno, calificacion.Materia, calificacion.Parcial1, calificacion.Parcial2, calificacion.Parcia31, calificacion.Parcial4);
                conexion.Ejecutarconsulta(consulta);
            }
            else
            {
                //update o que lo modifique
                string consulta = string.Format("update calificaciones set alumno='{0}',apellidop='{1}',apellidom='{2}',fkmateria ='{3}',parcial1='{4}',parcial2='{5}', parcial3='{6}',parcial4='{7}' where idcalificacion={8}", calificacion.Alumno, calificacion.ApellidoPaterno, calificacion.ApellidoMaterno, calificacion.Materia, calificacion.Parcial1, calificacion.Parcial2, calificacion.Parcia31, calificacion.Parcial4, calificacion.ID);
                conexion.Ejecutarconsulta(consulta);
            }
        }

        public void Eliminar(int idcalificacion)
        {
            //eliminar
            string consulta = string.Format("delete from calificacion where idcalificacion={0}", idcalificacion);
            conexion.Ejecutarconsulta(consulta);
        }
        public List<Calificaciones> GetCalificacion(string filtro)
        {
            //List<Usuario> listusuario = new List<Usuario>();
            var listCalificacion = new List<Calificaciones>(); //la variable var es generica
            var ds = new DataSet();
            string consulta = "Select * from v_calificacion where Nombre_del_alumno like '%" + filtro + "%'";
            ds = conexion.Obtenerdatos(consulta, "v_calificacion");
            var dt = new DataTable();
            dt = ds.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                var alumno = new Calificaciones
                {
                    ID = Convert.ToInt32(row["ID"]),
                    Alumno = row["Nombre_del_alumno"].ToString(),
                    ApellidoPaterno = row["Apellido_paterno"].ToString(),
                    ApellidoMaterno = row["Apellido_materno"].ToString(),
                    Materia = row["Materia"].ToString(),
                    Parcial1 = Convert.ToDouble(row["Parcial_1"]),
                    Parcial2 = Convert.ToDouble(row["Parcial_2"]),
                    Parcia31 = Convert.ToDouble(row["Parcial_3"]),
                    Parcial4 = Convert.ToDouble(row["Parcial_4"]),
                    Promedio = Convert.ToDouble(row["Promedio"]),
                };
                listCalificacion.Add(alumno);
            }
            //HardCodear
            //lenar lista
            return listCalificacion;
        }
        public List<Alumnos> GetAlumnos(string filtro)
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
