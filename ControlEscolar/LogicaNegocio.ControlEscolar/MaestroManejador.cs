using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using AccesoDatos.ControlEscolar;

namespace LogicaNegocio.ControlEscolar
{
   public class MaestroManejador
    {
   
        private MaestroAccesoDatos _maestroAcceso = new MaestroAccesoDatos();
       
        public void recuperar(string filtro)
        {
            _maestroAcceso.recuperarDato( filtro);
        }
        public void Guardar(Maestros maestros,string txtaño)
        {
            _maestroAcceso.Guardar(maestros,txtaño);
           
        }
        public void Eliminar(int matricula)
        {
          
            _maestroAcceso.Eliminar(matricula);
        }
        public List<Maestros> GetMAestros(string filtro)
        {
          
            var listMAestro = _maestroAcceso.Getmaestro(filtro);
            return listMAestro;
        }
    }
}
