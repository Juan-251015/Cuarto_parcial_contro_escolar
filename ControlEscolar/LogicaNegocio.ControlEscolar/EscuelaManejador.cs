using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using AccesoDatos.ControlEscolar;

namespace LogicaNegocio.ControlEscolar
{
  public  class EscuelaManejador
    {
        private EscuelaAccessoDatos _escuelaAcceso = new EscuelaAccessoDatos();
        public void Guardar(Escuela escuela)
        {
            _escuelaAcceso.Guardar(escuela);

        }
        public void Eliminar(int id)
        {
            _escuelaAcceso.Eliminar(id);
        }
        public List<Escuela> GetEscuela()
        {
            var listescuela = _escuelaAcceso.GetEscuela();
            return listescuela;
            
        }
    }
}
