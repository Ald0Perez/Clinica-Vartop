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
    public partial class VerTurnosAdmin : System.Web.UI.Page
    {
        Turnos tur = new Turnos();
        NegocioUsuario negUs = new NegocioUsuario();
        NegocioTurnos Turnos = new NegocioTurnos();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string nombre = Session["Usuario"].ToString();
            string user = negUs.GetNombreUsuario(nombre);
            lblUsuario.Text = "Admin: " + user;

            if (!IsPostBack)
            {
                CargarGridView();
            }

        }


        public void CargarGridView()
        {
            DataTable tabla = Turnos.GetTablaTurno();
            gvTurnoAdmin.DataSource = tabla;
            gvTurnoAdmin.DataBind();
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string paciente = txtBusquedaPacienteAdmin.Text;

            DataTable tabla = Turnos.GetBusquedaPaciente(paciente);
            gvTurnoAdmin.DataSource = tabla;
            gvTurnoAdmin.DataBind();
            txtBusquedaPacienteAdmin.Text = "";
        }

        protected void btnMostrarTodo_Click(object sender, EventArgs e)
        {
            CargarGridView();
            txtBusquedaPacienteAdmin.Text = "";
        }
    }

}