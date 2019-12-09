using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.ControlEscolar
{
    public class Usuario
    {
        private int _Idusuario;
        private string _nombre;
        private string _apellidopaterno;
        private string _apellidomaterno;
        private string _contrasenia;

        public int Idusuario { get => _Idusuario; set => _Idusuario = value; }
        public string Nombre { get => _nombre; set => _nombre = value; }
        public string Apellidopaterno { get => _apellidopaterno; set => _apellidopaterno = value; }
        public string Apellidomaterno { get => _apellidomaterno; set => _apellidomaterno = value; }
        public string Contrasenia { get => _contrasenia; set => _contrasenia = value; }
    }
}
