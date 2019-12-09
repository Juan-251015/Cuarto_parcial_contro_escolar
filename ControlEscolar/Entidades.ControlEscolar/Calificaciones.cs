using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.ControlEscolar
{
    public class Calificaciones
    {
        private int _iD;
        private string _alumno;
        private string _materia;
        private string _apellidoPaterno;
        private string _apellidoMaterno;
        private double _parcial1;
        private double _parcial2;
        private double _parcia31;
        private double _parcial4;
        private double _promedio;

        public int ID { get => _iD; set => _iD = value; }
        public string Alumno { get => _alumno; set => _alumno = value; }
        public string Materia { get => _materia; set => _materia = value; }
        public string ApellidoPaterno { get => _apellidoPaterno; set => _apellidoPaterno = value; }
        public string ApellidoMaterno { get => _apellidoMaterno; set => _apellidoMaterno = value; }
        public double Parcial1 { get => _parcial1; set => _parcial1 = value; }
        public double Parcial2 { get => _parcial2; set => _parcial2 = value; }
        public double Parcia31 { get => _parcia31; set => _parcia31 = value; }
        public double Parcial4 { get => _parcial4; set => _parcial4 = value; }
        public double Promedio { get => _promedio; set => _promedio = value; }
    }
}
