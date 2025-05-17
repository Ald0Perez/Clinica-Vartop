using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tp_Muestra
{
    public partial class Informes : System.Web.UI.Page
    {
        NegocioTurnos Turnos = new NegocioTurnos();
        NegocioUsuario negUs = new NegocioUsuario();
        NegocioPaciente negPac = new NegocioPaciente();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string nombre = Session["Usuario"].ToString();
            string user = negUs.GetNombreUsuario(nombre);
            lblUsuario.Text = "Admin: " + user;

            if (!IsPostBack)
            {
                FechaInicio = DateTime.MinValue;
                FechaFin = DateTime.MinValue;
                SeleccionandoFechaInicio = true; // Comenzamos seleccionando FechaInicio
                lblFechaInicio.Text = "";
                lblFechaFin.Text = "";
                lblEligir.Text = "Elija la fecha inicio";
                lblInforme1.Text = "";
                lblInforme2.Text = "";
                lblInforme3.Text = "";
            }
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            string inicio = FechaInicio.ToString("yyyy-MM-dd");
            string fin = FechaFin.ToString("yyyy-MM-dd");
            DataTable tabla = Turnos.GetInformes(inicio, fin);
            GridView1.DataSource = tabla;
            GridView1.DataBind();

            DataTable tabla2 = Turnos.GetInformesAs(inicio, fin);
            GridView2.DataSource = tabla2;
            GridView2.DataBind();


            DataTable tabla3 = Turnos.GetInformesInas(inicio, fin);
            GridView3.DataSource = tabla3;
            GridView3.DataBind();


            DataTable tabla4 = Turnos.GetTurnoPorProv(inicio, fin);
            GridView4.DataSource = tabla4;
            GridView4.DataBind();

            CargarGridViewPorEdades();

            lblInforme1.Text = "INFORME DE ASISTENCIAS DE PACIENTES";
            lblInforme2.Text = "INFORME DE TURNOS POR PROVINCIA";
            lblInforme3.Text = "INFORME DE EDAD PACIENTES";
        }

        private DateTime FechaInicio
        {
            get { return (DateTime)(ViewState["FechaInicio"] ?? DateTime.MinValue); }
            set { ViewState["FechaInicio"] = value; }
        }

        private DateTime FechaFin
        {
            get { return (DateTime)(ViewState["FechaFin"] ?? DateTime.MinValue); }
            set { ViewState["FechaFin"] = value; }
        }

        private bool SeleccionandoFechaInicio
        {
            get { return (bool)(ViewState["SeleccionandoFechaInicio"] ?? true); }
            set { ViewState["SeleccionandoFechaInicio"] = value; }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Calendar calendario = (Calendar)sender;

            if (SeleccionandoFechaInicio)
            {
                // Guardar la fecha seleccionada como FechaInicio
                FechaInicio = calendario.SelectedDate;
                lblFechaInicio.Text = FechaInicio.Day.ToString() + "/" + FechaInicio.Month.ToString() + "/" + FechaInicio.Year.ToString();
                SeleccionandoFechaInicio = false; // Cambiar a selección de FechaFin
                lblEligir.Text = "Elija la fecha final";
            }
            else
            {
                // Guardar la fecha seleccionada como FechaFin
                FechaFin = calendario.SelectedDate;
                SeleccionandoFechaInicio = true; // Cambiar a selección de FechaInicio

                // Validar que FechaFin sea posterior o igual a FechaInicio
                if (FechaFin < FechaInicio)
                {
                    FechaFin = FechaInicio; // Aseguramos un rango válido
                }

                lblFechaFin.Text = FechaFin.Day.ToString() + "/" + FechaFin.Month.ToString() + "/" + FechaFin.Year.ToString(); ;
                lblEligir.Text = "Elija la fecha inicio";
            }
            calendario.SelectedDate = DateTime.MinValue; // Limpiar selección visual
            calendario.VisibleDate = calendario.VisibleDate;
        }

        protected void CalendarInicio_DayRender(object sender, DayRenderEventArgs e)
        {
            if (FechaInicio != DateTime.MinValue && FechaFin != DateTime.MinValue)
            {
                if (e.Day.Date >= FechaInicio && e.Day.Date <= FechaFin)
                {
                    e.Cell.BackColor = System.Drawing.Color.LightBlue;
                }
            }
        }

        public void CargarGridViewPorEdades()
        {
            DataTable tabla = negPac.ObtenerPacientesPorEdad();
            gvPacientesEdad.DataSource = tabla;
            gvPacientesEdad.DataBind();
        }
    }
}