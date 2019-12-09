using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.ControlEscolar
{
   public class Estudios
    {
        private int _idestudios;
        private string _estudio;
        private string _ligar;
        private string _maestro;
        private string _carchivo;

        public int Idestudios { get => _idestudios; set => _idestudios = value; }
        public string Estudio { get => _estudio; set => _estudio = value; }
        public string Ligar { get => _ligar; set => _ligar = value; }
        public string Maestro { get => _maestro; set => _maestro = value; }
        public string Carchivo { get => _carchivo; set => _carchivo = value; }
    }
}
