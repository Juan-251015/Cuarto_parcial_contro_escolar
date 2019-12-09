using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using AccesoDatos.ControlEscolar;

namespace LogicaNegocio.ControlEscolar
{
    public class MateriaAnteriosManejador
    {
        MateriaAnteriosAccesoDatos _materiamanejador = new MateriaAnteriosAccesoDatos();
        MateriaAnteriosAccesoDatos _materiaAnteriosAccesoDatos = new MateriaAnteriosAccesoDatos();
        public void Guardar(MateriaAnterior m)
        {
            _materiamanejador.Guardar(m);
            
        }
        public List<MateriaAnterior> GetMAestrosAnterior(string filtro)
        {
            var listMaestroAnterior = _materiaAnteriosAccesoDatos.GetComboAnterior(filtro);
            return listMaestroAnterior;
       
        }
    }
}
