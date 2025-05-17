using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Dao
{
    public class DatosLocalidades
    {
        AccesoDatos datos = new AccesoDatos();
        public DataTable getLocalidades(string id)
        {
            DataTable tabla = datos.ObtenerTabla("Localidad", "SELECT IdLocalidad_Lo, NombreLocalidad_Lo FROM Localidad  INNER JOIN Provincias ON Localidad.IdProvincia_Lo = Provincias.IdProvincia_Pr WHERE IdProvincia_Lo = '" + id + "' ");
            return tabla;
        }
    }
}
