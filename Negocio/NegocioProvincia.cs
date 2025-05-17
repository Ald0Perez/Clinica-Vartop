using Dao;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NegocioProvincia
    {
        DatosProvincia datos = new DatosProvincia();
        public DataTable CargarDdlProvincias()
        {
            DataTable tabla = datos.CargarDDlProvincias();
            return tabla;
        }
    }
}
