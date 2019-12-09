using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.ControlEscolar
{
   public class Maestros
    {
        private int _idmaestro;
        private string _numerocontrolm;
        private string _nombre;
        private string _apellidop;
        private string _apellidom;
        private string _direccion;
        private string _ciudad;
        private string _estado;
        private string _numeroCedula;
        private string _titulo;
        private string _fechaNacimiento;

        public int Idmaestro { get => _idmaestro; set => _idmaestro = value; }
        public string Numerocontrolm { get => _numerocontrolm; set => _numerocontrolm = value; }
        public string Nombre { get => _nombre; set => _nombre = value; }
        public string Apellidop { get => _apellidop; set => _apellidop = value; }
        public string Apellidom { get => _apellidom; set => _apellidom = value; }
        public string Direccion { get => _direccion; set => _direccion = value; }
        public string Ciudad { get => _ciudad; set => _ciudad = value; }
        public string Estado { get => _estado; set => _estado = value; }
        public string NumeroCedula { get => _numeroCedula; set => _numeroCedula = value; }
        public string Titulo { get => _titulo; set => _titulo = value; }
        public string FechaNacimiento { get => _fechaNacimiento; set => _fechaNacimiento = value; }
    }
}
