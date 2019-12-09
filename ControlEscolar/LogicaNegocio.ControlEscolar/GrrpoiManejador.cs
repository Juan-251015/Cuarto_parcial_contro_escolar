using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using AccesoDatos.ControlEscolar;

namespace LogicaNegocio.ControlEscolar
{
    public class GrrpoiManejador
    {
        Grupo_insertarAccesoDatos _grupomanejador = new Grupo_insertarAccesoDatos();

        public void Guardar(Grupoi grupo)
        {
            _grupomanejador.Guardar(grupo);
        }
        public void Eliminar(int matricula)
        {
            _grupomanejador.Eliminar(matricula);
        }

        public List<Grupoi> Getgrupo(string filtro)
        {
            var listgrupo = _grupomanejador.GetGrupoi(filtro);
            return listgrupo;
        }
    }
}
