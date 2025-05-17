using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
 
        class Provincia
        {

            int IDProvincia_Pr;
            string Nombre_Pr;

            public Provincia() { }

            //id provincia
            public int get_Id_Provincia()
            {
                return IDProvincia_Pr;
            }
            public void set_Id_Provincia(int id)
            {
                this.IDProvincia_Pr = id;
            }

            //descripcion
            public string get_Nombre_Provincia()
            {
                return Nombre_Pr;
            }
            public void set_Nombre_Provincia(string desc)
            {
                this.Nombre_Pr = desc;
            }
        }
    
}
