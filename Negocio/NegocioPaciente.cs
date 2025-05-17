using Dao;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;
using Dao;


namespace Negocio
{
    public class NegocioPaciente
    {
        DatosPaciente datos = new DatosPaciente();
        public DataTable GetTablaPaciente()
        {
            return datos.GetTablaPaciente();
        }

        public DataTable GetTablaPacienteInactivos()
        {
            return datos.GetTablaPacienteInactivos();
        }

        public DataTable GetTablaFiltro(string filtro)
        {
            return datos.GetTablaPorFiltro(filtro);
        }
        public DataTable GetTablaBusquedaDni(string Dni)
        {
            return datos.GetTablaPorBusquedaDni(Dni);
        }
        public DataTable ObtenerPacientesPorEdad()
        {
            return datos.GetPacientesPorEdad();
        }

        public bool ActualizarPaciente(Paciente pac)
        {
            DatosPaciente datos = new DatosPaciente();
            int cantidadFilas = 0;
            cantidadFilas = datos.ActualizarPacientes(pac);
            if (cantidadFilas == 1)
            {
                return true;
            }
            else return false;
        }

        public bool ExistePaciente(string dni)
        {
            DatosPaciente datos = new DatosPaciente();
            return datos.ExistePaciente(dni);
        }


        public bool AgregarPaciente(string DNI, string Nombre, string Apellido, string sexo, string Nacionalidad, string FechaNacimiento, int Provincia, int Localidad, string Direccion, string CorreoElectronico, string Telefono)
        {
            Paciente paciente = new Paciente();
            int cantidadfilas = 0;

            paciente.set_DNI(DNI);
            paciente.set_Nombre(Nombre);
            paciente.set_Apellido(Apellido);
            paciente.set_Sexo(sexo);
            paciente.set_Nacionalidad(Nacionalidad);
            paciente.set_FechaNacimiento(FechaNacimiento);
            paciente.set_Provincia(Provincia);
            paciente.set_Localidad(Localidad);
            paciente.set_Direccion(Direccion);
            paciente.set_Email(CorreoElectronico);
            paciente.set_Telefono(Telefono);

            if (datos.ExistePaciente(paciente.get_DNI()) == false)
            {
                paciente.set_Estado(1);
                cantidadfilas = datos.AgregarPaciente(paciente);

            }
            if (cantidadfilas == 1)
            {
                return true;
            }
            else
            {

                return false;
            }
        }

        //Filtrar por sexo
        public DataTable GetTablaSexo(string Sexo)
        {
            return datos.GetTablaPorSexo(Sexo);
        }

        //Por Nacionalidad
        public DataTable GetTablaNacionalidad(string Nacionalidad)
        {
            return datos.GetTablaPorNacionalidad(Nacionalidad);
        }

        //Por Sexo y Nacionalidad
        public DataTable GetTablaFiltros(string Sexo, string Nacionalidad)
        {
            return datos.GetTablaPorFiltros(Sexo, Nacionalidad);
        }

      
    }
}