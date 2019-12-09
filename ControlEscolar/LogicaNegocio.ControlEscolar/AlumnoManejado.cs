using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using AccesoDatos.ControlEscolar;
using System.Windows.Forms;
using System.Text.RegularExpressions;

namespace LogicaNegocio.ControlEscolar
{
    public class AlumnoManejado
    {
        private AlumnoAccesoDatos _alumnoManejador = new AlumnoAccesoDatos();

        private bool nombreValido(string nombre)
        {
            var regex = new Regex(@"^[A-Za-z]+( [A-Za-z]+)*$");
            var match = regex.Match(nombre);
            if (match.Success)
            {
                return true;
            }

            return false;
        }
        private bool emailValido(string email)
        {
            var regex = new Regex(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");
            //var regex= new Regex(@”\w + ([-+.’]\w +) *@\w +)*\.\w + ([-.]\w +)*”);
            var match = regex.Match(email);
            if (match.Success)
            {
                return true;

            }
            return false;
        }
        public Tuple<bool, string> ValidarAlumnos(Alumnos alumnos)
        {
            string mensaje = "";
            bool valido = true;
            if (alumnos.Nombre.Length == 0 )
            {
                mensaje = mensaje + "el nombre del alumno es necesario \n";
                valido = false;
            }
            else if (alumnos.Nombre.Length > 20)
            {
                mensaje = mensaje + "el nombre del alumno solo permite un maximo de 20 caracteres \n";
                valido = false;
            }
            else if (!nombreValido(alumnos.Nombre))
            {
                mensaje = mensaje + "escribe un formato valido para el nombre del alumno \n";
                valido = false;
            }

            if (alumnos.Apellidopaterno.Length == 0)
            {
                mensaje = mensaje + "el apellido paterno del alumno es necesario \n";
                valido = false;
            }
            else if (alumnos.Apellidopaterno.Length > 20)
            {
                mensaje = mensaje + "el apellido paterno del alumno solo permite un maximo de 20 caracteres \n";
                valido = false;
            }
          


            if (!emailValido(alumnos.Email))
            {
                mensaje = mensaje + "escribe un formato valido para el email del alumno \n";
                valido = false;
            }

            return Tuple.Create(valido, mensaje);

        }

        public void Guardar(Alumnos alumno)
        {
            _alumnoManejador.Guardar(alumno);
        }
        public void Eliminar(int matricula)
        {
            _alumnoManejador.Eliminar(matricula);
        }
        public List<Alumnos>GetAlumnos(string filtro)
        {
            var listAlumnos = _alumnoManejador.GetAlumnos(filtro);
            return listAlumnos;
        }
    }
}
