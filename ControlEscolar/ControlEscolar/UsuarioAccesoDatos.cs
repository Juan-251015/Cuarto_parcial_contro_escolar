using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using System.Data;

namespace AccesoDatos.ControlEscolar
{
    
    public class UsuarioAccesoDatos
    {
        conecxionAccesoDatos conexion;
        public UsuarioAccesoDatos()
        {
            conexion = new conecxionAccesoDatos("localhost", "root", "", "empresa1", 3306);
        }
        public void Guardar(Usuario usuario)
        {
            if (usuario.Idusuario == 0)
            {
                //codigo para insertar
                string consulta = string.Format("insert into usuario values(null,'{0}','{1}','{2}','{3}')", usuario.Nombre, usuario.Apellidopaterno, usuario.Apellidomaterno, usuario.Contrasenia);
                conexion.Ejecutarconsulta(consulta);
            }
            else
            {
                //update o que lo modifique
                string consulta = string.Format("update usuario set nombre='{0}',apellidopaterno ='{1}',apellidomaterno='{2}',contrasenia='{3}' where idusuario={4}", usuario.Nombre, usuario.Apellidopaterno, usuario.Apellidomaterno, usuario.Contrasenia, usuario.Idusuario);
                conexion.Ejecutarconsulta(consulta);
            }
        }
        public void Eliminar(int Idusuario)
        {
            //eliminar
            string consulta = string.Format("delete from usuario where idusuario={0}", Idusuario);
            conexion.Ejecutarconsulta(consulta);
        }
        public List<Usuario> GetUsuarios(string filtro)
        {
            //List<Usuario> listusuario = new List<Usuario>();
            var listusuario = new List<Usuario>(); //la variable var es generica
            var ds = new DataSet();
            string consulta = "Select * from usuario where nombre like '%" + filtro + "%'";
            ds = conexion.Obtenerdatos(consulta, "usuario");
            var dt = new DataTable();
            dt = ds.Tables[0];
            foreach (DataRow row in dt.Rows)
            {
                var usuario = new Usuario
                {
                    Idusuario = Convert.ToInt32(row["Idusuario"]),
                    Nombre = row["nombre"].ToString(),
                    Apellidopaterno = row["apellidopaterno"].ToString(),
                    Apellidomaterno = row["apellidomaterno"].ToString(),
                    Contrasenia = row["contrasenia"].ToString(),
                };
                listusuario.Add(usuario);
            }
            //HardCodear
            //lenar lista
            return listusuario;
        }
    }
}
