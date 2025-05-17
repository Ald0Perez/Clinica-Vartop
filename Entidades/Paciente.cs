using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Paciente
    {//trabajo final
        string DNI_PAC;
        string Nombre_PAC;
        string Apellido_PAC;
        string Sexo_PAC;
        string Nacionalidad_PAC;
        string FechaNacimiento_PAC;
        string Direccion_PAC;
        int Provincia_PAC;
        int Localidad_PAC;
        string Email_PAC;
        string Telefono_PAC;
        int Estado_PAC;

        public Paciente() { }

        //NOMBRE
        public string get_Nombre()
        {
            return Nombre_PAC;
        }
        public void set_Nombre(string Nombre)
        {
            this.Nombre_PAC = Nombre;
        }

        //DNI
        public string get_DNI()
        {
            return DNI_PAC;
        }
        public void set_DNI(string DNI)
        {
            this.DNI_PAC = DNI;
        }

        //APELLIDO
        public string get_Apellido()
        {
            return Apellido_PAC;
        }
        public void set_Apellido(string Apellido)
        {
            this.Apellido_PAC = Apellido;
        }

        //SEXO
        public string get_Sexo()
        {
            return Sexo_PAC;
        }
        public void set_Sexo(string Sexo)
        {
            this.Sexo_PAC = Sexo;
        }

        //NACIONALIDAD
        public string get_Nacionalidad()
        {
            return Nacionalidad_PAC;
        }
        public void set_Nacionalidad(string Nacionalidad)
        {
            this.Nacionalidad_PAC = Nacionalidad;
        }

        //FECHA DE NACIMIENTO
        public string get_FechaNacimiento()
        {
            return FechaNacimiento_PAC;
        }
        public void set_FechaNacimiento(string FechaNacimiento)
        {
            this.FechaNacimiento_PAC = FechaNacimiento;
        }

        //DIRECCION
        public string get_Direccion()
        {
            return Direccion_PAC;
        }
        public void set_Direccion(string Direccion)
        {
            this.Direccion_PAC = Direccion;
        }

        //PROVINCIA
        public int get_Provincia()
        {
            return Provincia_PAC;
        }
        public void set_Provincia(int Prov)
        {
            this.Provincia_PAC = Prov;
        }

        //LOCALIDAD
        public int get_Localidad()
        {
            return Localidad_PAC;
        }
        public void set_Localidad(int Loca)
        {
            this.Localidad_PAC = Loca;
        }

        //EMAIL
        public string get_Email()
        {
            return Email_PAC;
        }
        public void set_Email(string Email)
        {
            this.Email_PAC = Email;
        }

        //TELEFONO
        public string get_Telefono()
        {
            return Telefono_PAC;
        }
        public void set_Telefono(string Telefono)
        {
            this.Telefono_PAC = Telefono;
        }


        //ESTADO
        public int get_Estado()
        {
            return Estado_PAC;
        }
        public void set_Estado(int Estado)
        {
            this.Estado_PAC = Estado;
        }
    }
}
