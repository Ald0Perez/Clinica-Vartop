using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        string Nombre;
        string Contraseña;
        int Legajo;

        public Usuario() { }


        public int get_Legajo()
        {
            return Legajo;
        }
        public void set_Legajo(int Legajo)
        {
            this.Legajo = Legajo;
        }


        public string get_Nombre()
        {
            return Nombre;
        }
        public void set_Nombre(string usu)
        {
            this.Nombre = usu;
        }

        public string get_Contraseña()
        {
            return Contraseña;
        }
        public void set_Contraseña(string c)
        {
            this.Contraseña = c;
        }

    }
}
