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
    public class MateriaSiguienteManejados
    {


        MateriaSiguienteAccesoDatos _materiamanejador = new MateriaSiguienteAccesoDatos();
        public void Guardar(MateriaSiguiente m)
        {
            _materiamanejador.Guardar(m);
           

        }
        public List<MateriaSiguiente> Getcombosiguiente(string filtro)
        {
            var listmateriasiguiente = _materiamanejador.GetComboSiguiente(filtro);
            return listmateriasiguiente;
        }
    }
}
