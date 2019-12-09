using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using AccesoDatos.ControlEscolar;
using System.Windows.Forms;
namespace LogicaNegocio.ControlEscolar
{
   public class EstudioMajenador
    {
     
        EstudioAccesoDatos _estudioMAnejador = new EstudioAccesoDatos();
        EstudioAccesoDatos _maestroManejador = new EstudioAccesoDatos();
        public void Guardar(Estudios estudios,Maestros m)
        {
          
            _estudioMAnejador.Guardar(estudios,m);
        }

        public void Eliminar(int id)
        {

            _estudioMAnejador.Eliminar(id);
        }
        public List<Estudios> GetCombo(ComboBox c1)
        {
            var listEstudio = _estudioMAnejador.GetCombo(c1);
            return listEstudio;
        }
        public List<Estudios> GetEstudios(string filtro)
        {
            var listEstudio = _estudioMAnejador.GetEstudios(filtro);
            return listEstudio;
        }
      
      
    }
}
