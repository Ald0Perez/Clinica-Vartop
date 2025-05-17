using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;


namespace Negocio
{

    public class NegocioTurnos
    {

        DatosTurnos datos = new DatosTurnos();
        NegocioPaciente negPac = new NegocioPaciente();

        public DataTable GetTablaTurnosMedico(string legajo)
        {
            return datos.GetTablaTurnosIndividual(legajo);
        }

        public DataTable GetHoraDisponible(String LegajoM, String Dia)
        {
            return datos.GetHoraDisponibles(LegajoM,Dia);
        }
        public DataTable GetInformes(string inicio, string fin)
        {
            return datos.GetInforme(inicio, fin);
        }
        public DataTable GetInformesAs(string inicio, string fin)
        {
            return datos.GetInformeAs(inicio, fin);

        }
        public DataTable GetInformesInas(string inicio, string fin)
        {
            return datos.GetInformeInas(inicio, fin);
        }

        public DataTable GetBusquedaPaciente(String dni)
        {
            return datos.GetTablaBusquedaPaciente(dni);
        }
        public DataTable GetBusquedaPacienteDoctorEnSesion(string dni, string legajo)
        {
            return datos.GetTablaBusquedaPacienteDoctorEnSesion(dni,legajo);
        }

        public DataTable GetObservacionPaciente(string legajo)
        {
            return datos.GetObservacionPaciente(legajo);
        }

        public DataTable GetObservacionPacienteBuscado(string legajo, string paciente)
        {
            return datos.GetObservacionPacienteBuscado(legajo, paciente);
        }

        public DataTable GetTablaTurno()
        {
            return datos.GetTablaTurnos();
        }

        public bool ActualizarTurno(Turnos tur)
        {
            DatosTurnos datos = new DatosTurnos();
            int cantidadFilas = 0;
            cantidadFilas = datos.ActualizarTurnos(tur);
            if (cantidadFilas == 1)
            {
                return true;
            }
            else return false;
        }

        public bool AgregarTurno(string dniPaciente, int especialidad, string legajoMedico, string fechaSeleccionada, string horarioSeleccionado, int asistencia)
        {
            Turnos turno = new Turnos();
            int cantidadFilas = 0;

            turno.set_DniPaciente_TUR(dniPaciente);
            turno.set_Especialidad_TUR(especialidad);
            turno.set_LegajoMedico_TUR(legajoMedico);
            turno.set_Dia_TUR(fechaSeleccionada);
            turno.set_Hora_TUR(horarioSeleccionado);
            turno.set_Asistencia_TUR(asistencia);

            cantidadFilas = datos.AgregarTurno(turno);
            
            if (cantidadFilas == 1) return true;
            else return false;
        }

        public DataTable GetTurnoPorProv(string inicio, string fin)
        {
            return datos.GetTurnoPorProv(inicio, fin);

        }
    }
}