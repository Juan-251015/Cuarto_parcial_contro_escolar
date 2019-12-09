using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos.ControlEscolar;
using Entidades.ControlEscolar;

namespace LogicaNegocio.ControlEscolar
{
    public class GrupoManejador
    {

        GrupoAccessoDatos _grupomanejador = new GrupoAccessoDatos();

        public void Guardar(Grupo grupo)
        {
            _grupomanejador.Guardar(grupo);
        }
        public void Eliminar(int matricula)
        {
            _grupomanejador.Eliminar(matricula);
        }
        public List<Alumnos> GetAlumnosgrpo(string filtro)
        {
            var listgrupo = _grupomanejador.GetAlumnosGrupo(filtro);
            return listgrupo;
        }
    }
}
