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
    public class estadoAccesoDatos
    {
        conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);
        public List<estado> Getestados(ComboBox c1)
        {
            var listestados = new List<estado>();
            var ds = new DataSet();
       
            string consulta = "select codigo from estados";         
            ds = conexion.Obtenerdatos(consulta, "estados");
            c1.DataSource = ds.Tables[0].DefaultView;
            c1.DisplayMember = "codigo";

            var dt = new DataTable();
            dt = ds.Tables[0];     
            foreach (DataRow row in dt.Rows)
            {
                var estado = new estado
                {
                    Codigo = row["codigo"].ToString(),
                   // Nombre = row["nombre"].ToString()
            };
                listestados.Add(estado);
            }
            return listestados;
        }
    }
}


