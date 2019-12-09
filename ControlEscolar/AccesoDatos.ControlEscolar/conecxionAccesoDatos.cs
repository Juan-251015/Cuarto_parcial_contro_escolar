using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;

namespace AccesoDatos.ControlEscolar
{
    public class conecxionAccesoDatos
    {
        private MySqlConnection conn;
        //ctor"con doble tabulacion" para un constructor rapido
        public conecxionAccesoDatos(string servidor, string usuario, string password, string database, uint puerto)
        {
            MySqlBaseConnectionStringBuilder cadenaconexion = new MySqlConnectionStringBuilder();
            cadenaconexion.Server = servidor;
            cadenaconexion.UserID = usuario;
            cadenaconexion.Password = password;
            cadenaconexion.Database = database;
            cadenaconexion.Port = puerto;
            conn = new MySqlConnection(cadenaconexion.ToString());
        }

        public void Ejecutarconsulta(string consulta)
        {
            conn.Open();
            var command = new MySqlCommand(consulta, conn);
            command.ExecuteNonQuery();
            conn.Close();
        }
        public DataSet Obtenerdatos(string consulta, string tabla)
        {
            var ds = new DataSet();
            MySqlDataAdapter da = new MySqlDataAdapter(consulta, conn);
            da.Fill(ds, tabla);
            return ds;
        }
       
       
    }
}
