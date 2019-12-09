using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Entidades.ControlEscolar
{
   public class MateriaAnterior
    {
        private int _idmateria;
        private string _codigoa;
        private string _nombremateria;
        private int _teoria;
        private int _practica;

        public int Idmateria { get => _idmateria; set => _idmateria = value; }
        public string Codigoa { get => _codigoa; set => _codigoa = value; }
        public string Nombremateria { get => _nombremateria; set => _nombremateria = value; }
        public int Teoria { get => _teoria; set => _teoria = value; }
        public int Practica { get => _practica; set => _practica = value; }
    }    
}
