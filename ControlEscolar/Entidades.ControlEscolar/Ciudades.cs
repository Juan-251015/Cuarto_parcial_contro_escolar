using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.ControlEscolar
{
   public class Ciudades
    {
        private int _codigo;
        private string _nombre;
        private string _codigo_estado;

        public int Codigo { get => _codigo; set => _codigo = value; }
        public string Nombre { get => _nombre; set => _nombre = value; }
        public string Codigo_estado { get => _codigo_estado; set => _codigo_estado = value; }
    }
}
