using Entidades;
using System.Data;
using System.Data.SqlClient;
namespace Dao
{
    public class DatosTurnos
    {
        AccesoDatos datos = new AccesoDatos();
        public DataTable GetTablaTurnosIndividual(string legajo)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable turnos = datos.ObtenerTabla("turnos", "SELECT IdTurno as 'Id Turno', LegajoMedico_Tr as 'Legajo Medico', DniPaciente_Tr as 'Dni Paciente',  " + "CONVERT(varchar, Fecha, 103) as 'Fecha', Horario, Descripcion, Asistencia FROM TURNOS WHERE LegajoMedico_Tr = '" + legajo + "' ");
            return turnos;
        }

        public DataTable GetHoraDisponibles(string LegajoM, string Dia)
        {
            DataTable HoraDisponible = datos.ObtenerTabla("Turnos", " SELECT Horario FROM Turnos  WHERE LegajoMedico_Tr = '"+LegajoM+"' AND Fecha ='"+Dia+"'");
           return HoraDisponible; 
        }


        public DataTable GetTablaBusquedaPaciente(string dni)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable paciente = datos.ObtenerTabla("paciente", "SELECT * FROM TURNOS WHERE DniPaciente_Tr LIKE '%" + dni + "%' ");
            return paciente;
        }

        public DataTable GetTablaBusquedaPacienteDoctorEnSesion(string dni, string legajo)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable paciente = datos.ObtenerTabla("Turnos", "SELECT IdTurno,LegajoMedico_Tr as LegajoMedico,DniPaciente_Tr as DniPaciente,Fecha,Horario,Descripcion,Asistencia FROM TURNOS WHERE DniPaciente_Tr LIKE '%" + dni + "%' AND LegajoMedico_Tr = '" + legajo + "'");
            return paciente;
        }
        public DataTable GetObservacionPaciente(string legajo)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable observacion = datos.ObtenerTabla("observacion", "SELECT  IdTurno as IdTurno,DniPaciente_Tr as Dni,Descripcion,  Asistencia FROM TURNOS  WHERE  LegajoMedico_Tr = '" + legajo + "'");
            return observacion;
        }

        public DataTable GetObservacionPacienteBuscado(string legajo, string paciente)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable observacion = datos.ObtenerTabla("observacion", "SELECT  IdTurno as IdTurno,DniPaciente_Tr as Dni,Descripcion,  Asistencia FROM TURNOS  WHERE  LegajoMedico_Tr = '" + legajo + "' and DniPaciente_Tr LIKE '%" + paciente + "%'");
            return observacion;
        }

        public DataTable GetTablaTurnos()
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable turnos = datos.ObtenerTabla("turnos", "SELECT IdTurno as 'Id Turno', LegajoMedico_Tr as 'Legajo Medico', DniPaciente_Tr as 'Dni Paciente', Especialidad, "+ "CONVERT(varchar, Fecha, 103) as 'Fecha', Horario, Descripcion, Asistencia FROM TURNOS");
            return turnos;
        }

        public int ActualizarTurnos(Turnos tur)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosActualizarTurnos(ref comando, tur);
            return datos.EjecutarProcedimientoAlmacenado(comando, "spActualizarTurno");
        }

        public int AgregarTurno(Turnos turno)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosParaTurnos(ref comando, turno);
            return datos.EjecutarProcedimientoAlmacenado(comando, "spAgregarTurno");
        }

        public void ArmarParametrosParaTurnos(ref SqlCommand comando, Turnos tur)
        {
            SqlParameter sqlParametro = new SqlParameter();
            sqlParametro = comando.Parameters.Add("@DniPac_Tur", SqlDbType.Char);
            sqlParametro.Value = tur.get_DniPaciente_TUR();
            sqlParametro = comando.Parameters.Add("@EspecialidadMed_Tur", SqlDbType.Int);
            sqlParametro.Value = tur.get_Especialidad_TUR();
            sqlParametro = comando.Parameters.Add("@LegajoMed_Tur", SqlDbType.Char);
            sqlParametro.Value = tur.Get_LegajoMedico_TUR();
            sqlParametro = comando.Parameters.Add("@Fecha_Tur", SqlDbType.Date);
            sqlParametro.Value = tur.get_Dia_TUR();
            sqlParametro = comando.Parameters.Add("@Horario_Tur", SqlDbType.Time);
            sqlParametro.Value = tur.get_Hora_TUR();
            sqlParametro = comando.Parameters.Add("@Asistencia_Tur", SqlDbType.Bit);
            sqlParametro.Value = tur.get_Asistencia_TUR();
        }

        public void ArmarParametrosActualizarTurnos(ref SqlCommand comando, Turnos tur)
        {
            SqlParameter sqlParametro = new SqlParameter();
            sqlParametro = comando.Parameters.Add("@IdTurno", SqlDbType.Int);
            sqlParametro.Value = tur.get_IdTurno_TUR();
            sqlParametro = comando.Parameters.Add("@Asistencia", SqlDbType.Bit);
            sqlParametro.Value = tur.get_Asistencia_TUR();
            sqlParametro = comando.Parameters.Add("@Descripcion", SqlDbType.Text);
            sqlParametro.Value = tur.get_Observaciones_TUR();
        }

        public DataTable GetInforme(string inicio, string fin)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable datosinf = datos.ObtenerTabla("Turnos", "SELECT Distinct TotalInasistencia, TotalAsistencia, CAST((TotalInasistencia * 100.0) / NULLIF((TotalInasistencia + TotalAsistencia), 0) AS DECIMAL(5, 2)) AS PorcentajeInasistencia, CAST((TotalAsistencia * 100.0) / NULLIF((TotalInasistencia + TotalAsistencia), 0) AS DECIMAL(5, 2)) AS PorcentajeAsistencia FROM( SELECT (SELECT COUNT(Asistencia) FROM Turnos WHERE Asistencia = 0 AND Fecha BETWEEN '" + inicio+"' AND '"+fin+ "') AS TotalInasistencia, (SELECT COUNT(Asistencia) FROM Turnos WHERE Asistencia = 1 AND Fecha BETWEEN '"+inicio+"' AND '"+fin+"') AS TotalAsistencia) AS Totales;");

            return datosinf;
        }

        public DataTable GetInformeAs(string inicio, string fin)
        {

            AccesoDatos datos = new AccesoDatos();
            DataTable datosinf = datos.ObtenerTabla("Turnos", "Select Distinct Nombre_Pa as Asistieron from Paciente inner join Turnos on Paciente.Dni_Pa= Turnos.DniPaciente_Tr where Fecha between '" + inicio + "' AND '" + fin + "' and Asistencia=1");

            return datosinf;
        }
        public DataTable GetInformeInas(string inicio, string fin)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable datosinf = datos.ObtenerTabla("Turnos", "Select Distinct Nombre_Pa as NoAsistieron from Paciente inner join Turnos on Paciente.Dni_Pa= Turnos.DniPaciente_Tr where Fecha between '" + inicio + "' AND '" + fin + "' and Asistencia=0");
            return datosinf;
        }

        public DataTable GetTurnoPorProv(string inicio, string fin)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable datosinf = datos.ObtenerTabla("Turnos", "select count(Dni_Pa) as cantidad, Provincias.NombreProvincia_Pr as Provincia from (Turnos inner join Paciente on Turnos.DniPaciente_Tr = Paciente.Dni_Pa ) inner join Provincias on Paciente.Provincia_Pa = Provincias.IdProvincia_Pr where Turnos.Fecha between '" + inicio + "' AND '" + fin + "' group by NombreProvincia_Pr");
            return datosinf;
        }
    }
}
