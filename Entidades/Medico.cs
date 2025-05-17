using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Medico
    {
        int Legajo_MED;
        string DNI_MED;
        string Nombre_MED;
        string Apellido_MED;
        string Sexo_MED;
        string Nacionalidad_MED;
        string FechaNacimiento_MED;
        string Direccion_MED;
        int Provincia_MED;
        int Localidad_MED;
        string Email_MED;
        string Telefono_MED;
        int Especialidad_MED;
        bool Lunes_MED;
        bool Martes_MED;
        bool Miercoles_MED;
        bool Jueves_MED;
        bool Viernes_MED;
        bool Sabado_MED;
        bool Domingo_MED;
        string HorarioEntrada_MED;
        string HorarioSalida_MED;
        string diasAtencion_MED;
        int Estado;

        public Medico() { }

        //LEGAJO
        public int get_Legajo()
        {
            return Legajo_MED;
        }
        public void set_Legajo(int Legajo)
        {
            this.Legajo_MED = Legajo;
        }

        //NOMBRE
        public string get_Nombre()
        {
            return Nombre_MED;
        }
        public void set_Nombre(string Nombre)
        {
            this.Nombre_MED = Nombre;
        }

        //DNI
        public string get_DNI()
        {
            return DNI_MED;
        }
        public void set_DNI(string DNI)
        {
            this.DNI_MED = DNI;
        }

        //APELLIDO
        public string get_Apellido()
        {
            return Apellido_MED;
        }
        public void set_Apellido(string Apellido)
        {
            this.Apellido_MED = Apellido;
        }

        //SEXO
        public string get_Sexo()
        {
            return Sexo_MED;
        }
        public void set_Sexo(string Sexo)
        {
            this.Sexo_MED = Sexo;
        }

        //NACIONALIDAD
        public string get_Nacionalidad()
        {
            return Nacionalidad_MED;
        }
        public void set_Nacionalidad(string Nacionalidad)
        {
            this.Nacionalidad_MED = Nacionalidad;
        }

        //FECHA DE NACIMIENTO
        public string get_FechaNacimiento()
        {
            return FechaNacimiento_MED;
        }
        public void set_FechaNacimiento(string FechaNacimiento)
        {
            this.FechaNacimiento_MED = FechaNacimiento;
        }

        //DIRECCION
        public string get_Direccion()
        {
            return Direccion_MED;
        }
        public void set_Direccion(string Direccion)
        {
            this.Direccion_MED = Direccion;
        }

        //ESPECIALIDAD
        public int get_Especialidad()
        {
            return Especialidad_MED;
        }
        public void set_Especialidad(int Especialidad)
        {
            this.Especialidad_MED = Especialidad;
        }

        //LUENES
        public bool get_Lunes()
        {
            return Lunes_MED;
        }
        public void set_Lunes(bool lunes)
        {
            this.Lunes_MED = lunes;
        }

        //MARTES
        public bool get_Martes()
        {
            return Martes_MED;
        }
        public void set_Martes(bool martes)
        {
            this.Martes_MED = martes;
        }

        //MIERCOLES
        public bool get_Miercoles()
        {
            return Miercoles_MED;
        }
        public void set_Miercoles(bool miercoles)
        {
            this.Miercoles_MED = miercoles;
        }

        //JUEVES
        public bool get_Jueves()
        {
            return Jueves_MED;
        }
        public void set_Jueves(bool jueves)
        {
            this.Jueves_MED = jueves;
        }

        //VIERNES
        public bool get_Viernes()
        {
            return Viernes_MED;
        }
        public void set_Viernes(bool viernes)
        {
            this.Viernes_MED = viernes;
        }

        //SABADO
        public bool get_Sabado()
        {
            return Sabado_MED;
        }
        public void set_Sabado(bool sabado)
        {
            this.Sabado_MED = sabado;
        }

        //DOMINGO
        public bool get_Domingo()
        {
            return Domingo_MED;
        }
        public void set_Domingo(bool domingo)
        {
            this.Domingo_MED = domingo;
        }


        //HORARIO DE ENTRADA
        public string get_HorarioEntrada()
        {
            return HorarioEntrada_MED;
        }
        public void set_HorarioEntrada(string HorarioEntrada)
        {
            this.HorarioEntrada_MED = HorarioEntrada;
        }

        //HORARIO DE SALIDA
        public string get_HorarioSalida()
        {
            return HorarioSalida_MED;
        }
        public void set_HorarioSalida(string HorarioSalida)
        {
            this.HorarioSalida_MED = HorarioSalida;
        }

        //PROVINCIA
        public int get_Provincia()
        {
            return Provincia_MED;
        }
        public void set_Provincia(int Prov)
        {
            this.Provincia_MED = Prov;
        }

        //LOCALIDAD
        public int get_Localidad()
        {
            return Localidad_MED;
        }
        public void set_Localidad(int Loca)
        {
            this.Localidad_MED = Loca;
        }

        //EMAIL
        public string get_Email()
        {
            return Email_MED;
        }
        public void set_Email(string Email)
        {
            this.Email_MED = Email;
        }

        //TELEFONO
        public string get_Telefono()
        {
            return Telefono_MED;
        }
        public void set_Telefono(string Telefono)
        {
            this.Telefono_MED = Telefono;
        }

        //ESTADO
        public int get_Estado()
        {
            return Estado;
        }
        public void set_Estado(int Estado)
        {
            this.Estado = Estado;
        }

        //DIAS ATENCION
        public string get_DiasAtencion()
        {
            return diasAtencion_MED;
        }
        public void set_DiasAtencion(string DiasAtencion)
        {
            this.diasAtencion_MED = DiasAtencion;
        }
    }
}
