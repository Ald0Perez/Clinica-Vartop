using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Localidades
    {
        int IDLocalidad_Lo;
        int IDProvincia_Lo;
        string Nombre_Lo;

        public Localidades() { }

        public int get_Id_Localidad()
        {
            return IDLocalidad_Lo;
        }
        public void set_Id_Localidad(int id) { 
       
            this.IDLocalidad_Lo = id;
        }

        public int get_Id_Provincia_lo() { 
        return IDProvincia_Lo;
        }
        public void set_Id_Provincia(int id)
        {
            this.IDProvincia_Lo = id;
        }

        public string get_Nombre_Localidad()
        {
            return Nombre_Lo;
        }
        public void set_Nombre_Localidad(string desc)
        {
            this.Nombre_Lo = desc;
        }
    }
}
