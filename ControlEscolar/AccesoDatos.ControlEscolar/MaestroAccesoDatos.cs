using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using System.Data;
using System.Windows.Forms;
using System.IO;

namespace AccesoDatos.ControlEscolar
{
    public class MaestroAccesoDatos
    {
        conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);
        public string _ruta;
    
        public string ultimonumero,rr,recuperarnm,datosdeconsulta0,d2,d3,nuevonumero;
        public string filtro2;
       public int numero;


       


        public void recuperarDato(string filtro)
        {
            var ds0 = new DataSet();
            var dt0 = new DataTable();
            var ds = new DataSet();
            var dt = new DataTable();
            filtro2 = filtro;
            string consulta0 = string.Format("select cnumero from maestro where cnumero like '%" + "D" + filtro + "%' ");
            ds0 = conexion.Obtenerdatos(consulta0, "maestro");
            dt0 = ds0.Tables[0];
            foreach (DataRow row in dt0.Rows)
            {
                datosdeconsulta0 = row["cnumero"].ToString();
            }
            string consulta1 = string.Format("select cnumero from maestro where cnumero like '%" + "D" + filtro + "%' order by idmaestro desc limit 1;");
            ds = conexion.Obtenerdatos(consulta1, "maestro");
            dt = ds.Tables[0];

            foreach (DataRow row in dt.Rows)
            {
                ultimonumero = row["cnumero"].ToString();
            }        
            if (datosdeconsulta0 == null)
            {
                d3 = "D" + filtro;                
                numero = 0;
                nuevonumero =d3 + numero;               
            }
            else 
            {
                
                d3 = datosdeconsulta0.Substring(0, 5);

                if ("D" + filtro == d3)
                {
                    rr = ultimonumero;
                    recuperarnm = ultimonumero.Substring(5);
                    numero = Convert.ToInt32(recuperarnm) + 1;
                    nuevonumero = "D" + filtro + numero;
                }
                else
                {
                    numero = 0;
                    nuevonumero = "D" + filtro + numero;
                }
            }
            MessageBox.Show(nuevonumero);
        }
        public void Guardar(Maestros maestro,string tstaño )
        {         
            if (maestro.Idmaestro == 0)
            {
               
                    //codigo para insertar
                    string consulta = string.Format("insert into maestro values(null,'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}')", nuevonumero, maestro.Nombre, maestro.Apellidop, maestro.Apellidom, maestro.Direccion, maestro.Estado, maestro.Ciudad, maestro.NumeroCedula, maestro.FechaNacimiento, maestro.Titulo);
                    conexion.Ejecutarconsulta(consulta);              
            }
            else
            {
                //update o que lo modifique
                string consulta = string.Format("update maestro set cnumero='{0}' nombre='{1}',apellidopaterno ='{2}',apellidomaterno='{3}',direccion='{4}', fkestados='{5}',fkciudades='{6}',numerocedula='{7}',fechanacimiento='{8}',titulo='{9}' where idmaestro={10}", maestro.Numerocontrolm,maestro.Nombre, maestro.Apellidop, maestro.Apellidom, maestro.Direccion, maestro.Estado, maestro.Ciudad, maestro.NumeroCedula, maestro.FechaNacimiento,maestro.Titulo,maestro.Idmaestro);
                conexion.Ejecutarconsulta(consulta);             
            }
        }
        public void Eliminar(int matricula)
        {
            //eliminar
            string consulta = string.Format("delete from maestro where idmaestro = {0}", matricula);
            conexion.Ejecutarconsulta(consulta);
        }
        public List<Maestros> Getmaestro(string filtro)
        {
            //List<Usuario> listusuario = new List<Usuario>();
            var listmaestrp = new List<Maestros>(); //la variable var es generica
            var ds = new DataSet();
            string consulta = "Select * from maestro where nombre like '%" + filtro + "%'";
            ds = conexion.Obtenerdatos(consulta, "maestro");
            var dt = new DataTable();
            dt = ds.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                var maestro = new Maestros
                {
                    Idmaestro=Convert.ToInt32( row["idmaestro"]),
                    Numerocontrolm=row["cnumero"].ToString(),
                    Nombre = row["nombre"].ToString(),
                    Apellidop = row["apellidopaterno"].ToString(),
                    Apellidom = row["apellidomaterno"].ToString(),
                   Direccion=row["direccion"].ToString(),
                   Estado=row["fkestados"].ToString(),
                   Ciudad=row["fkciudades"].ToString(),
                   NumeroCedula=row["numerocedula"].ToString(),
                   FechaNacimiento=row["fechanacimiento"].ToString(),
                   Titulo=row["titulo"].ToString()

                };
                listmaestrp.Add(maestro);           
            }
            //HardCodear
            //lenar lista
            return listmaestrp;           
        }
    }
}
