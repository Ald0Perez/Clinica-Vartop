using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Especialidad
    {
        int IDEspecialidad_ES;
        string Nombre_ES;

        public Especialidad() { }

        public int get_IdEspecialidad_ES()
        {
            return IDEspecialidad_ES;
        }
        public void set_IDEspecialidad_ES(int IDEspecialidad_ES)
        {
            this.IDEspecialidad_ES = IDEspecialidad_ES;
        }

        public string get_Nombre_ES()
        {
            return Nombre_ES;
        }
        public void set_Nombre_ES(string Nombre_ES)
        {
            this.Nombre_ES = Nombre_ES;
        }

    }
}
