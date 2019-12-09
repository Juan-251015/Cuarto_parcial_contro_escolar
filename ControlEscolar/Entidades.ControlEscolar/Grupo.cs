using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades.ControlEscolar
{
   public class Grupo
    {
        private int _id;
        private string _nombre;
        private string _alumno;

        public int Id { get => _id; set => _id = value; }
        public string Nombre { get => _nombre; set => _nombre = value; }
        public string Alumno { get => _alumno; set => _alumno = value; }
    }
}
