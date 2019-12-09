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
   public  class ciudadAccesoDatos
        {
            conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);
            public List<Ciudades> Getciudades(ComboBox cciudades,ComboBox cestados)
            {
                var listciudades = new List<Ciudades>();
                //var listestados = new List<estado>();
                var ds = new DataSet();

                string consulta = "select ciudad from ciudades where fkestado= '" + cestados.Text + "'";
                ds = conexion.Obtenerdatos(consulta, "ciudades");
                cciudades.DataSource = ds.Tables[0];
                cciudades.DisplayMember = "ciudad";
            
       
                var dt = new DataTable();
                dt = ds.Tables[0];
                foreach (DataRow row in dt.Rows)
                {
                    var ciuda = new Ciudades
                    {
                  //   Codigo_estado=row["codigoCiudad"].ToString(),
                     Nombre=row["ciudad"].ToString()
                    };
                    listciudades.Add(ciuda);
                }
                return listciudades;
            }
    }
}
