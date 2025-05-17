using System.Data;

namespace Dao
{
    public class DatosProvincia
    {
        AccesoDatos datos = new AccesoDatos();
        public DataTable CargarDDlProvincias()
        {
            string consulta = "SELECT IDProvincia_Pr, NombreProvincia_Pr FROM Provincias";
            DataTable tabla = datos.ObtenerTabla("Provincias", consulta);
            return tabla;
        }
    }
}
