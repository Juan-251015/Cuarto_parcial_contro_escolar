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
    public class estadoManejador
    {
        estadoAccesoDatos _estadoManejador = new estadoAccesoDatos();
        public List<estado> Getestado(ComboBox c1)
        {
            var listEstados = _estadoManejador.Getestados(c1);
            return listEstados;        
        }

    }
}
