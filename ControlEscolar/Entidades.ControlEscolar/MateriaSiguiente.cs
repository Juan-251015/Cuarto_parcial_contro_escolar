using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.ControlEscolar
{
   public class MateriaSiguiente
    {
        private int _idmaterias;
        private string _codigos;
        private string _materiasiguiente;
        private int _teoria;
        private int _practica;

        public int Idmaterias { get => _idmaterias; set => _idmaterias = value; }
        public string Codigos { get => _codigos; set => _codigos = value; }
        public string Materiasiguiente { get => _materiasiguiente; set => _materiasiguiente = value; }
        public int Teoria { get => _teoria; set => _teoria = value; }
        public int Practica { get => _practica; set => _practica = value; }
    }
}
