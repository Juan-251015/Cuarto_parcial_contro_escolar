using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using AccesoDatos.ControlEscolar;

namespace LogicaNegocio.ControlEscolar
{
   public class AsignacionManejador
    {
        AsignacionAccesoDatos _asignacionManejador = new AsignacionAccesoDatos();
        public void Guardar(Asignacion asignacion)
        {
            _asignacionManejador.Guardar(asignacion);
        }
        public void Eliminar(int matricula)
        {
            _asignacionManejador.Eliminar(matricula);
        }

        public List<Asignacion> Getgrupo(string filtro)
        {
            var listAsignacion = _asignacionManejador.GetAsignacion(filtro);
            return listAsignacion;
        }
        public List<Maestros> GetMAestros(string filtro)
        {

            var listMAestro = _asignacionManejador.GetAsignacionApellidop(filtro);
            return listMAestro;
        }   
    }
}
