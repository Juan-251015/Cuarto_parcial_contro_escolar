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
   public class EstudioAccesoDatos
    {
        public string _ruta;
        conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);
                       
        public void Guardar(Estudios estudio,Maestros m)
        {
            if (estudio.Idestudios == 0)
            {
                MessageBox.Show(estudio.Maestro);
                //codigo para insertar
                string consulta = string.Format("insert into estudios values(null,'{0}','{1}','{2}','{3}')", estudio.Estudio, estudio.Ligar, estudio.Maestro,estudio.Carchivo);
                _ruta = Application.StartupPath + m.Nombre;
                conexion.Ejecutarconsulta(consulta);
             
            }
            else
            {
                //update o que lo modifique
                string consulta = string.Format("update v_estudios set estudio='{0}',lugar='{1}',fknombre='{2}',archivo='{3}' where idestudio={3} ", estudio.Estudio, estudio.Ligar, estudio.Maestro,estudio.Carchivo,estudio.Idestudios);
                conexion.Ejecutarconsulta(consulta);
            }
        }
        public void Eliminar(int id)
        {
            //eliminar
            string consulta = string.Format("delete from estudios where idestudios = {0}", id);
            conexion.Ejecutarconsulta(consulta);
        }
        public List<Estudios> GetCombo(ComboBox c1)
        {
         
            //List<Usuario> listusuario = new List<Usuario>();
            var listEstudiosid = new List<Estudios>(); //la variable var es generica
            var ds = new DataSet();
        
            string consulta = "select nombre from maestro";
            ds = conexion.Obtenerdatos(consulta, "maestro");
            var dt = new DataTable();
            dt = ds.Tables[0];               
            c1.DataSource = ds.Tables[0];
          
            
            foreach (DataRow row in dt.Rows)
            {
                var estudios = new Estudios
                {
              //   Idestudios=Convert.ToInt32( row["idestudio"]),
               //  Estudio=row["estudio"].ToString(),
                // Ligar=row["lugar"].ToString(),
               //  Maestro=row["idmaestro"].ToString()
                
                };
                listEstudiosid.Add(estudios);
               
            }
            //HardCodear
            //lenar lista
            return listEstudiosid;
        }
        public List<Estudios> GetEstudios(string filtro)
        {

            //List<Usuario> listusuario = new List<Usuario>();
            var listEstudios = new List<Estudios>(); //la variable var es generica
            var ds = new DataSet();
            string consulta = "select * from v_estudios where Estudio_del_maestro like '%" + filtro + "%'";
            ds = conexion.Obtenerdatos(consulta, "v_estudios");
            var dt = new DataTable();
            dt = ds.Tables[0];
          

            foreach (DataRow row in dt.Rows)
            {
                var estudios = new Estudios
                {
                      Idestudios=Convert.ToInt32( row["ID"]),
                      Estudio=row["Estudio_del_maestro"].ToString(),
                     Ligar=row["Lugar_de_estudio"].ToString(),
                    Maestro = row["Nombre_del_maestro"].ToString(),
                    Carchivo=row["Documento"].ToString()

                };
                listEstudios.Add(estudios);

            }
            //HardCodear
            //lenar lista
            return listEstudios;
        }
    }
   
}
