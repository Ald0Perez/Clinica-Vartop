using Entidades;
using System;
using System.Data;

namespace Dao
{
    public class DatosEspecialidad
    {
        AccesoDatos datos = new AccesoDatos();
        public Especialidad getEspecialidad(Especialidad ES)
        {
            DataTable tabla = datos.ObtenerTabla("Especialidad", "SELECT * FROM Especialidad");

            ES.set_IDEspecialidad_ES(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            ES.set_Nombre_ES(tabla.Rows[0][1].ToString());

            return ES;
        }

        public DataTable CargarDDl()
        {
            string consulta = "SELECT IdEspecialidad, NombreEspecialidad_Es FROM Especialidad";
            DataTable tabla = datos.ObtenerTabla("Especialidad", consulta);
            return tabla;
        }

        public bool ExisteEspecialidad(int IDEspecialidad)
        {
            string consulta = "Select * from Especialidad WHERE IDEspecialidad_ES =" + IDEspecialidad;
            return datos.Existe(consulta);
        }
    }
}