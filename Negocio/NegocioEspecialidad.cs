using Dao;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NegocioEspecialidad
    {
        DatosEspecialidad datos = new DatosEspecialidad();
        public DataTable CargarDdlEspecialidad()
        {
            DataTable tabla = datos.CargarDDl();
            return tabla;
        }
    }
}
