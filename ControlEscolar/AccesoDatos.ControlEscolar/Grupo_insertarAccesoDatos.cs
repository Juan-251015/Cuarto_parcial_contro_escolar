using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using System.Data;

namespace AccesoDatos.ControlEscolar
{
    public class Grupo_insertarAccesoDatos
    {
        conecxionAccesoDatos conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);
        public void Guardar(Grupoi grupo)
        {
            if (grupo.Idgrupo == 0)
            {
                //codigo para insertar
                string consulta = string.Format("insert into grupoi values(null,'{0}')", grupo.Nombre_grupo);
                conexion.Ejecutarconsulta(consulta);
            }
            else
            {
                //update o que lo modifique
                string consulta = string.Format("update grupoi set nombreGrupo='{0}' where idgrupoi={1}", grupo.Nombre_grupo, grupo.Idgrupo);
                conexion.Ejecutarconsulta(consulta);
            }
        }
        public void Eliminar(int id)
        {
            //eliminar
            string consulta = string.Format("delete from grupoi where idgrupoi={0}", id);
            conexion.Ejecutarconsulta(consulta);
        }
        public List<Grupoi> GetGrupoi(string filtro)
        {
            //List<Usuario> listusuario = new List<Usuario>();
            var listGrupo = new List<Grupoi>(); //la variable var es generica
            var ds = new DataSet();

            string consulta = "Select * from grupoi where nombreGrupo like '%" + filtro + "%'";
            ds = conexion.Obtenerdatos(consulta, "grupoi");
            var dt = new DataTable();
            dt = ds.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                var grupito = new Grupoi
                {
                    Idgrupo = Convert.ToInt32(row["idgrupoi"]),
                    Nombre_grupo = row["nombreGrupo"].ToString(),


                };
                listGrupo.Add(grupito);
            }
            //HardCodear
            //lenar lista
            return listGrupo;
        }

    }
}
