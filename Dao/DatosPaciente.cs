using Entidades;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    public class DatosPaciente
    {
        AccesoDatos datos = new AccesoDatos();
        public DataTable GetTablaPaciente()
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable Paciente = datos.ObtenerTabla("Paciente", "SELECT Nombre_Pa AS Nombre ,Apellido_Pa AS Apellido, Dni_Pa AS DNI, Sexo_Pa AS Sexo, Nacionalidad_Pa AS Nacionalidad, FechaNacimiento_Pa AS FechaNacimiento, CorreoElectronico_Pa AS CorreoElectronico, Telefono_Pa AS Telefono, Estado_Pa AS Estado FROM Paciente Where Estado_Pa = 1");
            return Paciente;
        }

        public DataTable GetTablaPacienteInactivos()
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable Paciente = datos.ObtenerTabla("Paciente", "SELECT Nombre_Pa AS Nombre ,Apellido_Pa AS Apellido, Dni_Pa AS DNI, Sexo_Pa AS Sexo, Nacionalidad_Pa AS Nacionalidad, FechaNacimiento_Pa AS FechaNacimiento, CorreoElectronico_Pa AS CorreoElectronico, Telefono_Pa AS Telefono, Estado_Pa AS Estado FROM Paciente Where Estado_Pa = 0");
            return Paciente;
        }

        public DataTable GetTablaPorFiltro(string filtro)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable Paciente = datos.ObtenerTabla("Paciente", "SELECT Nombre_Pa AS Nombre , Apellido_Pa AS Apellido, Dni_Pa AS DNI, Sexo_Pa AS Sexo, Nacionalidad_Pa AS Nacionalidad, FechaNacimiento_Pa AS FechaNacimiento, CorreoElectronico_Pa AS CorreoElectronico, Telefono_Pa AS Telefono, Estado_Pa AS Estado FROM Paciente WHERE Estado_Pa = 1 AND Sexo_Pa LIKE '%" + filtro + "%' ");

            return Paciente;
        }

        public DataTable GetTablaPorBusquedaDni(string Dni)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable Paciente = datos.ObtenerTabla("Paciente", "SELECT Nombre_Pa AS Nombre , Apellido_Pa AS Apellido, Dni_Pa AS DNI, Sexo_Pa AS Sexo, Nacionalidad_Pa AS Nacionalidad, FechaNacimiento_Pa AS FechaNacimiento, CorreoElectronico_Pa AS CorreoElectronico, Telefono_Pa AS Telefono, Estado_Pa AS Estado FROM Paciente WHERE Estado_Pa = 1 And Dni_Pa LIKE '%" + Dni + "%' ");

            return Paciente;
        }

        public DataTable GetPacientesPorEdad()
        {
            string consultaSQL = @"
        SELECT 
            CASE 
                WHEN DATEDIFF(YEAR, FechaNacimiento_Pa, GETDATE()) BETWEEN 0 AND 12 THEN 'Niños (0-12)'
                WHEN DATEDIFF(YEAR, FechaNacimiento_Pa, GETDATE()) BETWEEN 13 AND 18 THEN 'Adolescentes (13-18)'
                WHEN DATEDIFF(YEAR, FechaNacimiento_Pa, GETDATE()) BETWEEN 19 AND 60 THEN 'Adultos (19-60)'
                ELSE 'Ancianos (60+)' 
            END AS RangoEdad,
            COUNT(*) AS Cantidad
        FROM Paciente
        GROUP BY 
            CASE 
                WHEN DATEDIFF(YEAR, FechaNacimiento_Pa, GETDATE()) BETWEEN 0 AND 12 THEN 'Niños (0-12)'
                WHEN DATEDIFF(YEAR, FechaNacimiento_Pa, GETDATE()) BETWEEN 13 AND 18 THEN 'Adolescentes (13-18)'
                WHEN DATEDIFF(YEAR, FechaNacimiento_Pa, GETDATE()) BETWEEN 19 AND 60 THEN 'Adultos (19-60)'
                ELSE 'Ancianos (60+)' 
            END";

            return datos.ObtenerTabla("Paciente", consultaSQL);
        }


        public int ActualizarPacientes(Paciente pac)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosActualizarPaciente(ref comando, pac);
            return datos.EjecutarProcedimientoAlmacenado(comando, "spActualizarPaciente");
        }

        private void ArmarParametrosActualizarPaciente(ref SqlCommand comando, Paciente Pac)
        {
            SqlParameter sqlParametro = new SqlParameter();
            sqlParametro = comando.Parameters.Add("@Nombre_PAC", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Nombre();
            sqlParametro = comando.Parameters.Add("@Apellido_PAC", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Apellido();
            sqlParametro = comando.Parameters.Add("@DNI_PAC", SqlDbType.Char);
            sqlParametro.Value = Pac.get_DNI();
            sqlParametro = comando.Parameters.Add("@Sexo_PAC", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Sexo();
            sqlParametro = comando.Parameters.Add("@Nacionalidad_PAC", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Nacionalidad();
            sqlParametro = comando.Parameters.Add("@FechaNacimiento_PAC", SqlDbType.Date);
            sqlParametro.Value = Pac.get_FechaNacimiento();
            sqlParametro = comando.Parameters.Add("@Email_PAC", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Email();
            sqlParametro = comando.Parameters.Add("@Telefono_PAC", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Telefono();
            sqlParametro = comando.Parameters.Add("@Estado_PAC", SqlDbType.Bit);
            sqlParametro.Value = Pac.get_Estado();
        }

        public Boolean ExistePaciente(string Dni)
        {
            string consulta = "SELECT * FROM PACIENTE WHERE Estado_Pa=1 and Dni_Pa LIKE '%" + Dni + "%'";
            return datos.Existe(consulta);
        }

        public int AgregarPaciente(Paciente paciente)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosAgregarPaciente(ref comando, paciente);
            return datos.EjecutarProcedimientoAlmacenado(comando, "spAgregarPaciente");
        }


        private void ArmarParametrosAgregarPaciente(ref SqlCommand comando, Paciente Pac)
        {
            SqlParameter sqlParametro = new SqlParameter();
            sqlParametro = comando.Parameters.Add("@Nombre_PAC", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Nombre();
            sqlParametro = comando.Parameters.Add("@Apellido_PAC", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Apellido();
            sqlParametro = comando.Parameters.Add("@DNI_PAC", SqlDbType.Char);
            sqlParametro.Value = Pac.get_DNI();
            sqlParametro = comando.Parameters.Add("@Sexo_PAC", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Sexo();
            sqlParametro = comando.Parameters.Add("@Nacionalidad_PAC", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Nacionalidad();
            sqlParametro = comando.Parameters.Add("@Localidad_PAC", SqlDbType.Int);
            sqlParametro.Value = Pac.get_Localidad();
            sqlParametro = comando.Parameters.Add("@Provincia_PAC", SqlDbType.Int);
            sqlParametro.Value = Pac.get_Provincia();
            sqlParametro = comando.Parameters.Add("@FechaNacimiento_PAC", SqlDbType.Date);
            sqlParametro.Value = Pac.get_FechaNacimiento();
            sqlParametro = comando.Parameters.Add("@Direccion_Pac", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Direccion();
            sqlParametro = comando.Parameters.Add("@Email_PAC", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Email();
            sqlParametro = comando.Parameters.Add("@Telefono_PAC", SqlDbType.VarChar);
            sqlParametro.Value = Pac.get_Telefono();
            sqlParametro = comando.Parameters.Add("@Estado_PAC", SqlDbType.Bit);
            sqlParametro.Value = Pac.get_Estado();
        }

        public DataTable GetTablaPorSexo(string Sexo)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable Paciente = datos.ObtenerTabla("Paciente", "SELECT Nombre_Pa AS Nombre , Apellido_Pa AS Apellido, Dni_Pa AS DNI, Sexo_Pa AS Sexo, Nacionalidad_Pa AS Nacionalidad, FechaNacimiento_Pa AS FechaNacimiento, CorreoElectronico_Pa AS CorreoElectronico, Telefono_Pa AS Telefono, Estado_Pa AS Estado FROM Paciente WHERE Estado_Pa = 1 AND Sexo_Pa LIKE '%" + Sexo + "%' ");
            return Paciente;
        }

        public DataTable GetTablaPorNacionalidad(string Nacionalidad)
        {
            DataTable Paciente = datos.ObtenerTabla("Paciente", " SELECT Nombre_Pa AS Nombre , Apellido_Pa AS Apellido, Dni_Pa AS DNI, Sexo_Pa AS Sexo, Nacionalidad_Pa AS Nacionalidad, FechaNacimiento_Pa AS FechaNacimiento, CorreoElectronico_Pa AS CorreoElectronico, Telefono_Pa AS Telefono, Estado_Pa AS Estado  FROM Paciente WHERE Estado_Pa = 1 AND Nacionalidad_Pa = '" + Nacionalidad + "'");
            return Paciente;

        }

        public DataTable GetTablaPorFiltros(string Sexo, string Nacionalidad)
        {
            DataTable Paciente = datos.ObtenerTabla("Paciente", "SELECT Nombre_Pa AS Nombre , Apellido_Pa AS Apellido, Dni_Pa AS DNI, Sexo_Pa AS Sexo, Nacionalidad_Pa AS Nacionalidad, FechaNacimiento_Pa AS FechaNacimiento, CorreoElectronico_Pa AS CorreoElectronico, Telefono_Pa AS Telefono, Estado_Pa AS Estado FROM Paciente WHERE Estado_Pa = 1 AND Nacionalidad_Pa LIKE '%" + Nacionalidad + "%' AND Sexo_Pa LIKE '%" + Sexo + "%'  ");
            return Paciente;
        }
    }
}
