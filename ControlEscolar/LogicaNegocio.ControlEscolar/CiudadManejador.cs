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
   public class CiudadManejador
    {
        ciudadAccesoDatos _ciudadManejador = new ciudadAccesoDatos();
        public List<Ciudades> Getciudades(ComboBox cciudades,ComboBox filtro)
        {
            var listciudades = _ciudadManejador.Getciudades(cciudades,filtro);
            return listciudades;
        }
    }
}
