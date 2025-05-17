using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Turnos
    {
        int IdTurno_TUR;
        string DniPaciente_TUR;
        int Especialidad_TUR;
        string LegajoMedico_TUR;
        string Dia_TUR;
        string Hora_TUR;
        string Observaciones_TUR;
        int Asistencia_TUR;

        public Turnos() { }

        public int get_IdTurno_TUR()
        {
            return IdTurno_TUR;
        }
        public void set_IdTurno_TUR(int IdTurno_TUR)
        {
            this.IdTurno_TUR = IdTurno_TUR;
        }

        public string get_DniPaciente_TUR()
        {
            return DniPaciente_TUR;
        }
        public void set_DniPaciente_TUR(string DniPaciente_TUR)
        {
            this.DniPaciente_TUR = DniPaciente_TUR;
        }

        public int get_Especialidad_TUR()
        {
            return Especialidad_TUR;
        }
        public void set_Especialidad_TUR(int Especialidad_TUR)
        {
            this.Especialidad_TUR = Especialidad_TUR;
        }

        public string Get_LegajoMedico_TUR()
        {
            return LegajoMedico_TUR;
        }
        public void set_LegajoMedico_TUR(string LegajoMedico_TUR)
        {
            this.LegajoMedico_TUR = LegajoMedico_TUR;
        }

        public string get_Dia_TUR()
        {
            return Dia_TUR;
        }
        public void set_Dia_TUR(string Dia_TUR)
        {
            this.Dia_TUR = Dia_TUR;
        }

        public string get_Hora_TUR()
        {
            return Hora_TUR;
        }
        public void set_Hora_TUR(string Hora_TUR)
        {
            this.Hora_TUR = Hora_TUR;
        }

        public int get_Asistencia_TUR()
        {
            return Asistencia_TUR;
        }
        public void set_Asistencia_TUR(int Asistencia)
        {
            this.Asistencia_TUR = Asistencia;
        }

        public string get_Observaciones_TUR()
        {
            return Observaciones_TUR;
        }
        public void set_Observaciones_TUR(string Observaciones_TUR)
        {
            this.Observaciones_TUR = Observaciones_TUR;
        }
    }
}
