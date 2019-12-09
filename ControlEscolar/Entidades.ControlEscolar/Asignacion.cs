using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.ControlEscolar
{
    public class Asignacion
    {
        private int _iD;
        private string _maestro;
        private string _materia;
        private string _grupo;

        public int ID { get => _iD; set => _iD = value; }
        public string Maestro { get => _maestro; set => _maestro = value; }
        public string Materia { get => _materia; set => _materia = value; }
        public string Grupo { get => _grupo; set => _grupo = value; }
    }
}
