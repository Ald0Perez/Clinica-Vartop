using System;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    public class AccesoDatos
    {
        string rutaBDClinica = "Data Source=localhost\\sqlexpress;Initial Catalog = Tp_Final_Grupo10; Integrated Security = True";
        private SqlConnection ObtenerConexion()
        {
            var cn = new SqlConnection(rutaBDClinica);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        private SqlDataAdapter ObtenerAdaptador(string consultaSql, SqlConnection cn)
        {
            try
            {
                return new SqlDataAdapter(consultaSql, cn);
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public DataTable ObtenerTabla(string nombreTabla, string sql)
        {
            using (var ds = new DataSet())
            using (var conexion = ObtenerConexion())
            {
                var adp = ObtenerAdaptador(sql, conexion);
                adp.Fill(ds, nombreTabla);
                return ds.Tables[nombreTabla];
            }
        }


        public int EjecutarProcedimientoAlmacenado(SqlCommand comando, string nombreSP)
        {
            using (var conexion = ObtenerConexion())
            {
                comando.Connection = conexion;
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = nombreSP;
                return comando.ExecuteNonQuery();
            }
        }

        public bool Existe(string consulta)
        {
            using (var conexion = ObtenerConexion())
            using (var cmd = new SqlCommand(consulta, conexion))
            using (var datos = cmd.ExecuteReader())
            {
                return datos.Read();
            }
        }

    }
}
