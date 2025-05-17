using Entidades;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    public class DatosMedico
    {
        AccesoDatos datos = new AccesoDatos();
        public DataTable GetTablaMedicos()
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable medicos = datos.ObtenerTabla("medicos", "SELECT LegajoMedico, Nombre_Me as Nombre, Apellido_Me as Apellido," +
                " Sexo_Me as Sexo, Dni_Me as Dni,Nacionalidad_Me as Nacionalidad ,NombreEspecialidad_Es as Especialidad, " +
                "Correoelectronico_me as Correo, Telefono_Me as Telefono, HorarioApertura_Me as HorarioApertura, HorarioCierre_Me as HorarioCierre," +
                " Estado_Me as Estado, Lunes_Me as Lunes, Martes_Me as Martes, Miercoles_Me as Miercoles, Jueves_Me as Jueves, Viernes_Me as Viernes, Sabado_Me as Sabado," +
                " Domingo_Me as Domingo FROM Especialidad INNER JOIN Medicos ON Especialidad.IdEspecialidad = Medicos.Especialidad_Me where Estado_Me = '1'");
            return medicos;
        }
        public DataTable GetTablaMedicosInactivos()
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable medicos = datos.ObtenerTabla("medicos", "SELECT LegajoMedico, Nombre_Me as Nombre, Apellido_Me as Apellido," +
                " Sexo_Me as Sexo, Dni_Me as Dni,Nacionalidad_Me as Nacionalidad ,NombreEspecialidad_Es as Especialidad, " +
                "Correoelectronico_me as Correo, Telefono_Me as Telefono, HorarioApertura_Me as HorarioApertura, HorarioCierre_Me as HorarioCierre," +
                " Estado_Me as Estado, Lunes_Me as Lunes, Martes_Me as Martes, Miercoles_Me as Miercoles, Jueves_Me as Jueves, Viernes_Me as Viernes, Sabado_Me as Sabado," +
                " Domingo_Me as Domingo FROM Especialidad INNER JOIN Medicos ON Especialidad.IdEspecialidad = Medicos.Especialidad_Me where Estado_Me = '0'");
            return medicos;
        }

        public DataTable getMedicoBuscado(string legajo)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable medico = datos.ObtenerTabla("medicos", "SELECT LegajoMedico, Nombre_Me as Nombre, Apellido_Me as Apellido," +
                " Sexo_Me as Sexo, Dni_Me as Dni,Nacionalidad_Me as Nacionalidad ,NombreEspecialidad_Es as Especialidad, " +
                "Correoelectronico_me as Correo, Telefono_Me as Telefono, HorarioApertura_Me as HorarioApertura, HorarioCierre_Me as HorarioCierre," +
                " Estado_Me as Estado, Lunes_Me as Lunes, Martes_Me as Martes, Miercoles_Me as Miercoles, Jueves_Me as Jueves, Viernes_Me as Viernes, Sabado_Me as Sabado," +
                " Domingo_Me as Domingo FROM Especialidad INNER JOIN Medicos ON Especialidad.IdEspecialidad = Medicos.Especialidad_Me where Estado_Me = '1' AND LegajoMedico LIKE  '%"+legajo+"%'");
            return medico;
        }


        public DataTable getMedicosBajados()
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable medicos = datos.ObtenerTabla("medicos", "SELECT LegajoMedico,Nombre_Me as Nombre, Apellido_Me as Apellido, Sexo_Me as Sexo,NombreEspecialidad_Es as Especialidad,Correoelectronico_me as Correo, Telefono_Me as Telefono, HorarioApertura_Me as HorarioApertura, HorarioCierre_Me as HorarioCierre,Estado_Me as Estado FROM Especialidad Inner join Medicos " +
                "on Especialidad.IdEspecialidad = Medicos.Especialidad_Me where Estado_Me = '0'");
            return medicos;
        }

        public DataTable GetTablaMedicosSexo(string Sexo)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable medicos = datos.ObtenerTabla("medicos", "SELECT LegajoMedico, Nombre_Me as Nombre, Apellido_Me as Apellido, Sexo_Me as Sexo, Dni_Me as Dni,Nacionalidad_Me as Nacionalidad ,NombreEspecialidad_Es as Especialidad, Correoelectronico_me as Correo, Telefono_Me as Telefono, HorarioApertura_Me as HorarioApertura, HorarioCierre_Me as HorarioCierre, Estado_Me as Estado, Lunes_Me as Lunes, Martes_Me as Martes, Miercoles_Me as Miercoles, Jueves_Me as Jueves, Viernes_Me as Viernes, Sabado_Me as Sabado, Domingo_Me as Domingo FROM Especialidad INNER JOIN Medicos ON Especialidad.IdEspecialidad = Medicos.Especialidad_Me where Estado_Me = '1' and Sexo_Me = '"+Sexo+"'");
            return medicos;
        }


        public DataTable getDdlMedicos(string id)
        {
            DataTable tabla = datos.ObtenerTabla("medicos", "SELECT LegajoMedico , Nombre_Me+' '+Apellido_Me As Nombre From Medicos Inner Join Especialidad on Medicos.Especialidad_Me = Especialidad.IdEspecialidad Where Especialidad_Me = '"+ id + "' AND Estado_Me = 1");
            return tabla;
        }


        public Boolean ExisteMedico(string legajo)
        {
            string consulta = "SELECT * FROM MEDICOS WHERE Estado_Me=1 and LegajoMedico LIKE '%" + legajo + "%'";
            return datos.Existe(consulta);
        }
        public int AgregarMedico(Medico medico)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosAgregarMedico(ref comando, medico);
            return datos.EjecutarProcedimientoAlmacenado(comando, "spAgregarMedico");
        }

        public int ActualizarMedico(Medico medico)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosActualizarMedico(ref comando, medico);
            return datos.EjecutarProcedimientoAlmacenado(comando, "spActualizarMedico");
        }


        public DataTable GetTablaMedicosEspecialidad(string IdEspecialidad)
        {
            DataTable medicos = datos.ObtenerTabla("medicos", "SELECT LegajoMedico, Nombre_Me as Nombre, Apellido_Me as Apellido, Sexo_Me as Sexo, Dni_Me as Dni,Nacionalidad_Me as Nacionalidad ,NombreEspecialidad_Es as Especialidad, Correoelectronico_me as Correo, Telefono_Me as Telefono, HorarioApertura_Me as HorarioApertura, HorarioCierre_Me as HorarioCierre, Estado_Me as Estado, Lunes_Me as Lunes, Martes_Me as Martes, Miercoles_Me as Miercoles, Jueves_Me as Jueves, Viernes_Me as Viernes, Sabado_Me as Sabado, Domingo_Me as Domingo FROM Especialidad INNER JOIN Medicos ON Especialidad.IdEspecialidad = Medicos.Especialidad_Me where Estado_Me = '1' and Especialidad_Me = '" + IdEspecialidad + "'");

            return medicos;
        }

        private void ArmarParametrosAgregarMedico(ref SqlCommand comando, Medico med)
        {
            SqlParameter sqlParametro = new SqlParameter();
            sqlParametro = comando.Parameters.Add("@Legajo_MED", SqlDbType.Int);
            sqlParametro.Value = med.get_Legajo();
            sqlParametro = comando.Parameters.Add("@DNI_MED", SqlDbType.Int);
            sqlParametro.Value = med.get_DNI();
            sqlParametro = comando.Parameters.Add("@Nombre_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Nombre();
            sqlParametro = comando.Parameters.Add("@Apellido_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Apellido();
            sqlParametro = comando.Parameters.Add("@Sexo_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Sexo();
            sqlParametro = comando.Parameters.Add("@Nacionalidad_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Nacionalidad();
            sqlParametro = comando.Parameters.Add("@FechaNacimiento_MED", SqlDbType.Date);
            sqlParametro.Value = med.get_FechaNacimiento();
            sqlParametro = comando.Parameters.Add("@Provincia_MED", SqlDbType.Int);
            sqlParametro.Value = med.get_Provincia();
            sqlParametro = comando.Parameters.Add("@Localidad_MED", SqlDbType.Int);
            sqlParametro.Value = med.get_Localidad();
            sqlParametro = comando.Parameters.Add("@Direccion_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Direccion();
            sqlParametro = comando.Parameters.Add("@CorreoElectronico_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Email();
            sqlParametro = comando.Parameters.Add("@Telefono_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Telefono();
            sqlParametro = comando.Parameters.Add("@Especialidad_MED", SqlDbType.Int);
            sqlParametro.Value = med.get_Especialidad();
            sqlParametro = comando.Parameters.Add("@Lunes_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Lunes();
            sqlParametro = comando.Parameters.Add("@Martes_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Martes();
            sqlParametro = comando.Parameters.Add("@Miercoles_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Miercoles();
            sqlParametro = comando.Parameters.Add("@Jueves_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Jueves();
            sqlParametro = comando.Parameters.Add("@Viernes_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Viernes();
            sqlParametro = comando.Parameters.Add("@Sabado_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Sabado();
            sqlParametro = comando.Parameters.Add("@Domingo_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Domingo();
            sqlParametro = comando.Parameters.Add("@HorarioEntrada_MED", SqlDbType.Time);
            sqlParametro.Value = med.get_HorarioEntrada();
            sqlParametro = comando.Parameters.Add("@HorarioSalida_MED", SqlDbType.Time);
            sqlParametro.Value = med.get_HorarioSalida();
            sqlParametro = comando.Parameters.Add("@Estado_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Estado();
        }

        private void ArmarParametrosActualizarMedico(ref SqlCommand comando, Medico med)
        {
            SqlParameter sqlParametro = new SqlParameter();
            sqlParametro = comando.Parameters.Add("@Legajo_MED", SqlDbType.Int);
            sqlParametro.Value = med.get_Legajo();
            sqlParametro = comando.Parameters.Add("@DNI_MED", SqlDbType.Char);
            sqlParametro.Value = med.get_DNI();
            sqlParametro = comando.Parameters.Add("@Nombre_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Nombre();
            sqlParametro = comando.Parameters.Add("@Apellido_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Apellido();
            sqlParametro = comando.Parameters.Add("@Sexo_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Sexo();
            sqlParametro = comando.Parameters.Add("@Nacionalidad_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Nacionalidad();
            sqlParametro = comando.Parameters.Add("@CorreoElectronico_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Email();
            sqlParametro = comando.Parameters.Add("@Telefono_MED", SqlDbType.VarChar);
            sqlParametro.Value = med.get_Telefono();
            sqlParametro = comando.Parameters.Add("@Lunes_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Lunes();
            sqlParametro = comando.Parameters.Add("@Martes_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Martes();
            sqlParametro = comando.Parameters.Add("@Miercoles_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Miercoles();
            sqlParametro = comando.Parameters.Add("@Jueves_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Jueves();
            sqlParametro = comando.Parameters.Add("@Viernes_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Viernes();
            sqlParametro = comando.Parameters.Add("@Sabado_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Sabado();
            sqlParametro = comando.Parameters.Add("@Domingo_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Domingo();
            sqlParametro = comando.Parameters.Add("@HorarioEntrada_MED", SqlDbType.Time);
            sqlParametro.Value = med.get_HorarioEntrada();
            sqlParametro = comando.Parameters.Add("@HorarioSalida_MED", SqlDbType.Time);
            sqlParametro.Value = med.get_HorarioSalida();
            sqlParametro = comando.Parameters.Add("@Estado_MED", SqlDbType.Bit);
            sqlParametro.Value = med.get_Estado();
        }

        public bool getLunesMedicos(string legajo)
        {
            DataTable tabla = datos.ObtenerTabla("medicos", "SELECT Lunes_Me From Medicos Where LegajoMedico = '" + legajo + "' AND Lunes_Me = 1 AND Estado_Me = 1");
            return tabla.Rows.Count > 0;
        }

        public bool getMartesMedicos(string legajo)
        {
            DataTable tabla = datos.ObtenerTabla("medicos", "SELECT Martes_Me From Medicos Where LegajoMedico = '" + legajo + "' AND Martes_Me = 1 AND Estado_Me = 1");
            return tabla.Rows.Count > 0;
        }

        public bool getMiercolesMedicos(string legajo)
        {
            DataTable tabla = datos.ObtenerTabla("medicos", "SELECT Miercoles_Me From Medicos Where LegajoMedico = '" + legajo + "' AND Miercoles_Me = 1 AND Estado_Me = 1");
            return tabla.Rows.Count > 0;
        }

        public bool getJuevesMedicos(string legajo)
        {
            DataTable tabla = datos.ObtenerTabla("medicos", "SELECT Jueves_Me From Medicos Where LegajoMedico = '" + legajo + "' AND Jueves_Me = 1 AND Estado_Me = 1");
            return tabla.Rows.Count > 0;
        }

        public bool getViernesMedicos(string legajo)
        {
            DataTable tabla = datos.ObtenerTabla("medicos", "SELECT Viernes_Me From Medicos Where LegajoMedico = '" + legajo + "' AND Viernes_Me = 1 AND Estado_Me = 1");
            return tabla.Rows.Count > 0;
        }

        public bool getSabadoMedicos(string legajo)
        {
            DataTable tabla = datos.ObtenerTabla("medicos", "SELECT Sabado_Me From Medicos Where LegajoMedico = '" + legajo + "' AND Sabado_Me = 1 AND Estado_Me = 1");
            return tabla.Rows.Count > 0;
        }

        public bool getDomingoMedicos(string legajo)
        {
            DataTable tabla = datos.ObtenerTabla("medicos", "SELECT Domingo_Me From Medicos Where LegajoMedico = '" + legajo + "' AND Domingo_Me = 1 AND Estado_Me = 1");
            return tabla.Rows.Count > 0;
        }

        public DataTable getHorarioEntrada(string legajo)
        {
            DataTable tabla = datos.ObtenerTabla("medicos", "SELECT HorarioApertura_Me, HorarioCierre_Me From Medicos Where LegajoMedico = '" + legajo + "' AND Estado_Me = 1");
            return tabla ;
        }
    }
}
