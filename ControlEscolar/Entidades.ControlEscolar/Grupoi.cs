using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.ControlEscolar
{
    public class Grupoi
    {
        private int _idgrupo;
        private string _nombre_grupo;

        public int Idgrupo { get => _idgrupo; set => _idgrupo = value; }
        public string Nombre_grupo { get => _nombre_grupo; set => _nombre_grupo = value; }
    }
}
