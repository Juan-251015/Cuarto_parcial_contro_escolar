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
    public class EscuelaAccessoDatos
    {
        conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);
        public string obtenerconsulta0;
        public void Guardar(Escuela escuela)
        {
            var ds = new DataSet();
            var dt = new DataTable();
            string consultta1 = string.Format("select idescuela from escuela");
            ds = conexion.Obtenerdatos(consultta1, "escuela");
            dt = ds.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                obtenerconsulta0 = row["idescuela"].ToString();
            }

            
                if (obtenerconsulta0 == null)
                {
                    //codigo para insertar

                    string consulta = string.Format("insert into escuela values(null,'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", escuela.Nombreescuela, escuela.Rfc, escuela.Domicilio, escuela.Telefono, escuela.Correo, escuela.Pagina, escuela.Director, escuela.Logo);
                    conexion.Ejecutarconsulta(consulta);
                }
            else if (escuela.Idescuela != 0)
            {
                //update o que lo modifique
                string consulta = string.Format("update escuela set nombreescuela='{0}',rfc ='{1}',domicilio='{2}',telefono='{3}', correo='{4}',pagina='{5}',director='{6}',logo='{7}' where idescuela={8}", escuela.Nombreescuela, escuela.Rfc, escuela.Domicilio, escuela.Telefono, escuela.Correo, escuela.Pagina, escuela.Director, escuela.Logo, escuela.Idescuela);
                conexion.Ejecutarconsulta(consulta);
            }

            else if (obtenerconsulta0 != null )
                {
                    MessageBox.Show("solamente se puede ingresar un registro");
                
                }
              
            
          
         
        }
        public void Eliminar(int id)
        {
            //eliminar
            string consulta = string.Format("delete from escuela where idescuela={0}",id);
            conexion.Ejecutarconsulta(consulta);
        }
        public List<Escuela> GetEscuela()
        {
            //List<Usuario> listusuario = new List<Usuario>();
            var listescuela = new List<Escuela>(); //la variable var es generica
            var ds = new DataSet();
            string consulta = "Select * from escuela";
            ds = conexion.Obtenerdatos(consulta, "escuela");
            var dt = new DataTable();
            dt = ds.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                var escuelita = new Escuela
                {

                    Idescuela = Convert.ToInt32(row["idescuela"]),
                    Nombreescuela=row["nombreescuela"].ToString(),
                    Rfc = row["rfc"].ToString(),
                    Domicilio = row["domicilio"].ToString(),
                    Telefono=row["telefono"].ToString(),
                    Correo=row["correo"].ToString(),
                    Pagina=row["pagina"].ToString(),
                    Director=row["director"].ToString(),
                    Logo=row["logo"].ToString()
                     

                };
                listescuela.Add(escuelita);
               
            }
            //HardCodear
            //lenar lista
            return listescuela;
        }

    }
}
