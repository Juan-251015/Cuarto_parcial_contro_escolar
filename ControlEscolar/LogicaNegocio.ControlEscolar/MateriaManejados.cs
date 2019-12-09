using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades.ControlEscolar;
using AccesoDatos.ControlEscolar;

namespace LogicaNegocio.ControlEscolar
{
    public class MateriaManejados
    {
        MateriaAccesoDatos _materiaManejador = new MateriaAccesoDatos(); 
        public void Guardar(Materia m)
        {
            _materiaManejador.Guardar(m);
        }
        public void Eliminar(int id)
        {
            //eliminar
            _materiaManejador.Eliminar(id);
        }
        public List<Materia> GetMateria (string filtro)
        {
            var listMateria = _materiaManejador.GetMateria(filtro);
            //lenar lista
            return listMateria;
        }
    }
}
