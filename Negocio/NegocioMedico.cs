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
    public   class NegocioMedico
    {
        DatosMedico datos = new DatosMedico();
        AccesoDatos ds = new AccesoDatos();

        public DataTable GetMedicos()
        {
            return datos.GetTablaMedicos();
        }

        public DataTable GetMedicosInactivos()
        {
            return datos.GetTablaMedicosInactivos();
        }

        public DataTable getMedicoBuscado(string legajo)
        {
            return datos.getMedicoBuscado(legajo);
        }
        public string NombreMedico(string legajo)
        {
            string nombre = "SELECT Nombre_Me from Medicos where LegajoMedico = '" + legajo + "'";
            return nombre;
        }
        public DataTable GetMedicosBajados()
        {
            return datos.getMedicosBajados();
        }

        public DataTable GetMedicosSexo(string sexo)
        {
            return datos.GetTablaMedicosSexo(sexo);
        }

        public bool ActualizarMedico(Medico Med)
        {
            DatosMedico datos = new DatosMedico();
            int cantidadFilas = 0;
            cantidadFilas = datos.ActualizarMedico(Med);
            if (cantidadFilas == 1)
            {
                return true;
            }
            else return false;
        }

        public DataTable CargarddlMedico(string id)
        {
            return datos.getDdlMedicos(id);
        }


        public bool AgregarMedico(int legajo, string dni, string nombre, string apellido, string sexo, string nacionalidad, string fechaNacimiento, int provincia, int localidad, string direccion, string email, string telefono, int especialidad, string horarioEntrada, string horarioSalida, bool lunes, bool martes, bool miercoles, bool jueves, bool viernes, bool sabado, bool domingo)
        {
            Medico medico = new Medico();
            int cantidadFilas = 0;

            medico.set_Legajo(legajo);
            medico.set_DNI(dni);
            medico.set_Nombre(nombre);
            medico.set_Apellido(apellido);
            medico.set_Sexo(sexo);
            medico.set_Nacionalidad(nacionalidad);
            medico.set_FechaNacimiento(fechaNacimiento);
            medico.set_Provincia(provincia);
            medico.set_Localidad(localidad);
            medico.set_Direccion(direccion);
            medico.set_Email(email);
            medico.set_Telefono(telefono);
            medico.set_Especialidad(especialidad);
            medico.set_Lunes(lunes);
            medico.set_Martes(martes);
            medico.set_Miercoles(miercoles);
            medico.set_Jueves(jueves);
            medico.set_Viernes(viernes);
            medico.set_Sabado(sabado);
            medico.set_Domingo(domingo);
            medico.set_HorarioEntrada(horarioEntrada);
            medico.set_HorarioSalida(horarioSalida);

            if (datos.ExisteMedico(medico.get_Legajo().ToString()) == false)
            {
                medico.set_Estado(1);
                cantidadFilas = datos.AgregarMedico(medico);

            }
            if (cantidadFilas == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool verificarLunes(string legajo)
        {
            return datos.getLunesMedicos(legajo);
        }

        public bool verificarMartes(string legajo)
        {
            return datos.getMartesMedicos(legajo);
        }

        public bool verificarMiercoles(string legajo)
        {
            return datos.getMiercolesMedicos(legajo);
        }

        public bool verificarJueves(string legajo)
        {
            return datos.getJuevesMedicos(legajo);
        }

        public bool verificarViernes(string legajo)
        {
            return datos.getViernesMedicos(legajo);
        }

        public bool verificarSabado(string legajo)
        {
            return datos.getSabadoMedicos(legajo);
        }

        public bool verificarDomingo(string legajo)
        {
            return datos.getDomingoMedicos(legajo);
        }

        public DataTable getHorarioEntrada(string legajo)
        {
            return datos.getHorarioEntrada(legajo);
        }


        public DataTable GetMedicosEspecialidad(string IdEspecialidad)
        {
            return datos.GetTablaMedicosEspecialidad(IdEspecialidad);
        }
    }
}
