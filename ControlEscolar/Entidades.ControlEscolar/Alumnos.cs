using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.ControlEscolar
{
  public class Alumnos
    {
        private int _matricula;
        private string _nombre;
        private string _apellidopaterno;
        private string _apellidomaterno;
        private string _fechanacimiento;
        private string _domicilio;
        private string _email;
        private string _sexo;
        private string _fkestado;
        private string _fkciudad;
        private string _grupoo;

        public int Matricula { get => _matricula; set => _matricula = value; }
        public string Nombre { get => _nombre; set => _nombre = value; }
        public string Apellidopaterno { get => _apellidopaterno; set => _apellidopaterno = value; }
        public string Apellidomaterno { get => _apellidomaterno; set => _apellidomaterno = value; }
        public string Fechanacimiento { get => _fechanacimiento; set => _fechanacimiento = value; }
        public string Domicilio { get => _domicilio; set => _domicilio = value; }
        public string Email { get => _email; set => _email = value; }
        public string Sexo { get => _sexo; set => _sexo = value; }
        public string Fkestado { get => _fkestado; set => _fkestado = value; }
        public string Fkciudad { get => _fkciudad; set => _fkciudad = value; }
        public string Grupoo { get => _grupoo; set => _grupoo = value; }
    }
}
