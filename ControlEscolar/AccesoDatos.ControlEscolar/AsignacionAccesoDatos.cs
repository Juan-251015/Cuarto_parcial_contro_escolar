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
   public class AsignacionAccesoDatos
    {
        conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);
        public void Guardar(Asignacion asignacion)
        {
            if (asignacion.ID == 0)
            {
                MessageBox.Show(asignacion.Maestro);
                //codigo para insertar
                string consulta = string.Format("insert into asignacion values(null,'{0}','{1}','{2}')", asignacion.Maestro, asignacion.Materia, asignacion.Grupo);
                conexion.Ejecutarconsulta(consulta);
            }
            else
            {
                //update o que lo modifique
                string consulta = string.Format("update asignacion set fkmaestro='{0}',fkmateria ='{1}',fkgrupo='{2}' where idasignacion={3}", asignacion.Maestro, asignacion.Materia, asignacion.Grupo, asignacion.ID);
                conexion.Ejecutarconsulta(consulta);
            }
        }
        public void Eliminar(int id)
        {
            //eliminar
            string consulta = string.Format("delete from asignacion where idasignacion={0}", id);
            conexion.Ejecutarconsulta(consulta);
        }
        public List<Asignacion> GetAsignacion(string filtro)
        {
            //List<Usuario> listusuario = new List<Usuario>();
            var listAlumnos = new List<Asignacion>(); //la variable var es generica
            var ds = new DataSet();
            string consulta = "Select * from v_asignacion where Nombre_del_maestro like '%" + filtro + "%'";
            ds = conexion.Obtenerdatos(consulta, "v_asignacion");
            var dt = new DataTable();
            dt = ds.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                var alumno = new Asignacion
                {
                    ID = Convert.ToInt32(row["ID"]),
                    Maestro = row["Nombre_del_maestro"].ToString(),
                    Materia = row["Nombre_de_la_materia"].ToString(),
                    Grupo = row["Grupo"].ToString(),

                };
                listAlumnos.Add(alumno);
            }
            //HardCodear
            //lenar lista
            return listAlumnos;
        }
        public List<Maestros> GetAsignacionApellidop(string filtro)
        {
            //List<Usuario> listusuario = new List<Usuario>();
            var listmaestrp = new List<Maestros>(); //la variable var es generica
            var ds = new DataSet();
            string consulta = "Select apellidopaterno from maestro where nombre like '%" + filtro + "%'";
            ds = conexion.Obtenerdatos(consulta, "maestro");
            var dt = new DataTable();
            dt = ds.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                var maestro = new Maestros
                {
                    //  Idmaestro = Convert.ToInt32(row["idmaestro"]),
                    // Numerocontrolm = row["cnumero"].ToString(),
                    // Nombre = row["nombre"].ToString(),
                    Apellidop = row["apellidopaterno"].ToString(),
                    // Apellidom = row["apellidomaterno"].ToString(),
                    //Direccion = row["direccion"].ToString(),
                    //Estado = row["fkestados"].ToString(),
                    //Ciudad = row["fkciudades"].ToString(),
                    //NumeroCedula = row["numerocedula"].ToString(),
                    //FechaNacimiento = row["fechanacimiento"].ToString(),
                    //Titulo = row["titulo"].ToString()

                };
                listmaestrp.Add(maestro);
            }
            //HardCodear
            //lenar lista
            return listmaestrp;
        }
    }
}
