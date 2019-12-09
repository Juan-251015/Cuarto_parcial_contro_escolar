using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using AccesoDatos.ControlEscolar;

namespace LogicaNegocio.ControlEscolar
{
  public   class calificacionesManejador
    {
        CalificacionesAccesoDatos _calificaciones = new CalificacionesAccesoDatos();
        public void Guardar(Calificaciones calificacion)
        {
            _calificaciones.Guardar(calificacion);
        }
        public void Eliminar(int matricula)
        {
            _calificaciones.Eliminar(matricula);
        }
        public List<Calificaciones> GetCalificacion(string filtro)
        {
            var listcalificaciones = _calificaciones.GetCalificacion(filtro);
            return listcalificaciones;
        }
        public List<Alumnos> GetAlumnos(string filtro)
        {
            var listAlumnos = _calificaciones.GetAlumnos(filtro);
            return listAlumnos;
        }
    }
}
