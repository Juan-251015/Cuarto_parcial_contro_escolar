using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.ControlEscolar
{
   public  class Materia
    {
        private int _idmateriaa;
        private string _codigo;
        private string _nombremateria;
        private int _teoria;
        private int _practica;
        private string _fkmateriaa;
        private string _fkmaterias;
        private int _horas;

        public int Idmateriaa { get => _idmateriaa; set => _idmateriaa = value; }
        public string Codigo { get => _codigo; set => _codigo = value; }
        public string Nombremateria { get => _nombremateria; set => _nombremateria = value; }
        public int Teoria { get => _teoria; set => _teoria = value; }
        public int Practica { get => _practica; set => _practica = value; }
        public string Fkmateriaa { get => _fkmateriaa; set => _fkmateriaa = value; }
        public string Fkmaterias { get => _fkmaterias; set => _fkmaterias = value; }
        public int Horas { get => _horas; set => _horas = value; }
    }
}
