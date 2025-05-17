using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tp_Muestra
{
    public partial class AgregarTurnos : System.Web.UI.Page
    {

        NegocioEspecialidad NegEspec = new NegocioEspecialidad();
        NegocioMedico NegMedico = new NegocioMedico();
        NegocioTurnos NegTurnos = new NegocioTurnos();
        NegocioPaciente NegPaciente = new NegocioPaciente();
        NegocioUsuario negUs = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string nombre = Session["Usuario"].ToString();
            string user = negUs.GetNombreUsuario(nombre);
            lblUsuario.Text = "Admin: " + user;

            if (!IsPostBack)
            {
                CargarddlEspecialidad();
                CargarddlMedico();
                ddlMedicos_SelectedIndexChanged(sender, e);
                ddlHorario.Items.Insert(0, new ListItem("--Seleccione--", "0"));
            }
        }

        private void CargarddlEspecialidad()
        {
            ddlEspecialidad.DataSource = NegEspec.CargarDdlEspecialidad();
            ddlEspecialidad.DataTextField = "NombreEspecialidad_Es";
            ddlEspecialidad.DataValueField = "IdEspecialidad";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Insert(0, new ListItem("--Seleccione--", "0"));
        }

        private void CargarddlMedico()
        {
            ddlMedicos.DataSource = NegMedico.CargarddlMedico(ddlEspecialidad.SelectedValue);
            ddlMedicos.DataTextField = "Nombre";
            ddlMedicos.DataValueField = "LegajoMedico";
            ddlMedicos.DataBind();
            ddlMedicos.Items.Insert(0, new ListItem("--Seleccione--", "0"));
        }

        protected void ddlEspecialidad_SelectedIndexChanged(object sender, EventArgs e)
        {

            ddlHorario.Items.Clear();
            ddlHorario.Items.Insert(0, new ListItem("--Seleccione--", "0"));
            CargarddlMedico();
            ddlMedicos_SelectedIndexChanged(sender, e);
            Calendar1.SelectedDate = DateTime.MinValue;
            Calendar1.VisibleDate = DateTime.Now;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            // Verificar qué días trabaja el médico seleccionado
            bool lunes = NegMedico.verificarLunes(ddlMedicos.SelectedValue.ToString());
            bool martes = NegMedico.verificarMartes(ddlMedicos.SelectedValue.ToString());
            bool miercoles = NegMedico.verificarMiercoles(ddlMedicos.SelectedValue.ToString());
            bool jueves = NegMedico.verificarJueves(ddlMedicos.SelectedValue.ToString());
            bool viernes = NegMedico.verificarViernes(ddlMedicos.SelectedValue.ToString());
            bool sabado = NegMedico.verificarSabado(ddlMedicos.SelectedValue.ToString());
            bool domingo = NegMedico.verificarDomingo(ddlMedicos.SelectedValue.ToString());

            // Obtener el día de la semana actual
            DayOfWeek diaActual = e.Day.Date.DayOfWeek;

            // Variable para determinar si el día es válido
            bool esDiaValido = false;

            switch (diaActual)
            {
                case DayOfWeek.Monday:
                    esDiaValido = lunes;
                    break;
                case DayOfWeek.Tuesday:
                    esDiaValido = martes;
                    break;
                case DayOfWeek.Wednesday:
                    esDiaValido = miercoles;
                    break;
                case DayOfWeek.Thursday:
                    esDiaValido = jueves;
                    break;
                case DayOfWeek.Friday:
                    esDiaValido = viernes;
                    break;
                case DayOfWeek.Saturday:
                    esDiaValido = sabado;
                    break;
                case DayOfWeek.Sunday:
                    esDiaValido = domingo;
                    break;
            }

            // Si el día es válido y no es anterior a hoy, marcarlo
            if (esDiaValido && e.Day.Date >= DateTime.Now.Date)
            {
                e.Cell.BackColor = System.Drawing.Color.LightBlue;
            }
            else
            {
                // Días no válidos (o en el pasado)
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Gray;
            }
        }

        protected void ddlMedicos_SelectedIndexChanged(object sender, EventArgs e)
        {
            Calendar1.VisibleDate = DateTime.Now;
            Calendar1.DataBind();
            ddlHorario.Items.Clear();
            ddlHorario.Items.Insert(0, new ListItem("--Seleccione--", "0"));
            Calendar1.SelectedDate = DateTime.MinValue;
            Calendar1.VisibleDate = DateTime.Now;
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            if (Calendar1.SelectedDate == DateTime.MinValue)
            {
                lblErrorFormulario.Text = "Por favor, seleccione una fecha en el calendario.";
                return;
            }

            if (NegPaciente.ExistePaciente(txtDniPaciente.Text))
            {

                bool estado = false;
                string dniPaciente = txtDniPaciente.Text;
                int especialidad = Convert.ToInt32(ddlEspecialidad.SelectedValue);
                string legajoMedico = ddlMedicos.SelectedValue.ToString();
                string fechaSeleccionada = Calendar1.SelectedDate.ToString();
                string horarioSeleccionado = ddlHorario.SelectedValue;
                int asistencia = 0;

                estado = NegTurnos.AgregarTurno(dniPaciente, especialidad, legajoMedico, fechaSeleccionada, horarioSeleccionado, asistencia);

                if (estado)
                {
                    lblConfirmacion.Text = "Se agregó con éxito";
                    lblErrorFormulario.Text = "";
                    limpiarCampos();
                }
                else lblErrorFormulario.Text = "No se pudo agregar el turno";
            }
            else
            {
                lblErrorFormulario.Text = "No se encontró el dni del paciente";
            }
        }

        public void limpiarCampos()
        {
            txtDniPaciente.Text = "";
            Calendar1.SelectedDate = DateTime.MinValue;
            Calendar1.VisibleDate = DateTime.Now;
            ddlEspecialidad.SelectedValue = "0";
            ddlMedicos.SelectedValue = "0";
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string LegajoM = ddlMedicos.SelectedValue;
            string Dia = Calendar1.SelectedDate.ToString("yyyy-MM-dd"); // Formato estándar para la fecha

            // Obtener horarios reservados de la base de datos
            DataTable HorasReservadas = NegTurnos.GetHoraDisponible(LegajoM, Dia);

            // Obtener horarios de entrada y salida del médico
            DataTable horarios = NegMedico.getHorarioEntrada(LegajoM);
            if (horarios.Rows.Count > 0)
            {
                string horarioEntrada = horarios.Rows[0]["HorarioApertura_Me"].ToString();
                string horarioSalida = horarios.Rows[0]["HorarioCierre_Me"].ToString();

                if (!string.IsNullOrEmpty(horarioEntrada) && !string.IsNullOrEmpty(horarioSalida))
                {
                    // Convierte los horarios a TimeSpan
                    TimeSpan horaInicio = TimeSpan.Parse(horarioEntrada);
                    TimeSpan horaFin = TimeSpan.Parse(horarioSalida);

                    // Limpia el DropDownList de horarios
                    ddlHorario.Items.Clear();

                    // Itera desde la hora de inicio hasta la hora de fin, añadiendo 1 hora cada vez
                    for (TimeSpan hora = horaInicio; hora < horaFin; hora = hora.Add(TimeSpan.FromHours(1)))
                    {
                        string horaStr = hora.ToString(@"hh\:mm");

                        // Verificar si la hora actual está reservada
                        bool esReservada = HorasReservadas.AsEnumerable()
                        .Any(row => row["Horario"].ToString().Substring(0, 5) == horaStr); // Recorta la hora para que coincidan

                        // Si la hora no está reservada, agrégala al DropDownList
                        if (!esReservada)
                        {
                            ddlHorario.Items.Add(horaStr);
                        }
                    }

                    // Si no hay horarios disponibles
                    if (ddlHorario.Items.Count == 0)
                    {
                        ddlHorario.Items.Add("Sin horarios disponibles");
                    }
                }
            }
        }

        protected void txtDniPaciente_TextChanged(object sender, EventArgs e)
        {
            lblConfirmacion.Text = " ";
        }
    }
}