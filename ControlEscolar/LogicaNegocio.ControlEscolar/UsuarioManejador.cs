using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using AccesoDatos.ControlEscolar;
using System.Text.RegularExpressions;

namespace LogicaNegocio.ControlEscolar
{
    public class UsuarioManejador
    {
        private UsuarioAccesoDatos _usuarioAccesoDatos = new UsuarioAccesoDatos(); 
        
        private bool nombreValido(string nombre)
        {
            var regex = new Regex(@"^[A-Za-z]+( [A-Za-z]+)*$");
            var match = regex.Match(nombre);
            if (match.Success)
            {
                return true;
            }           
                return false;
        }

        public Tuple<bool,string>ValidarUsuario(Usuario usuario)
        {
            string mensaje ="";
            bool valido = true;
            if (usuario.Nombre.Length == 0)
            {
                mensaje = mensaje + "el nombre de usuario es necesario \n";
                valido = false;
            }
            else if (usuario.Nombre.Length > 20)
            {
                mensaje = mensaje + "el nombre de usuario solo permite un maximo de 20 caracteres \n";
                valido = false;
            }
            else if(!nombreValido(usuario.Nombre))
            {
                mensaje=mensaje + "escribe un formato valido para el nombre del usuario";
                valido = false;
            }

            if (usuario.Apellidopaterno.Length == 0)
            {
                mensaje = mensaje + "el apellido paterno de usuario es necesario \n";
                valido = false;
            }
            else if(usuario.Apellidopaterno.Length>20)
            {
                mensaje = mensaje + "el apellido paterno del usuario solo permite un maximo de 20 caracteres \n";
                valido = false;
            }

            return Tuple.Create(valido, mensaje);

        }
        public void Guardar(Usuario usuario)
        {
            _usuarioAccesoDatos.Guardar(usuario);
        }
        public void Eliminar(int Idusuario)
        {
            //eliminar
            _usuarioAccesoDatos.Eliminar(Idusuario);
        }
        public List<Usuario> GetUsuarios(string filtro)
        {
            var listusuario = _usuarioAccesoDatos.GetUsuarios(filtro);
            //lenar lista
            return listusuario;
        }
    }
}
