using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
using System.Data;
namespace Tp_Muestra
{

   
    public partial class TablaTurno : System.Web.UI.Page
    { 
        NegocioMedico medico= new NegocioMedico();
        NegocioTurnos turnos = new NegocioTurnos();
        NegocioUsuario negUs= new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombre =Session["Usuario"].ToString();
            string user = negUs.GetNombreUsuario(nombre);
            lblUsuario.Text = "Doctor/a: "+ user;

            if (!IsPostBack)
            {
                CargarGridView();
            }
        }


        public void CargarGridView()
        {
            string user = (String)Session["Usuario"];
            DataTable tabla = turnos.GetTablaTurnosMedico(user);
            gvTurnos.DataSource = tabla;  
            gvTurnos.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string user = (String)Session["Usuario"];
            string paciente=txtBusquedaPaciente.Text;

            DataTable tabla = turnos.GetBusquedaPacienteDoctorEnSesion(paciente,user);
            gvTurnos.DataSource = tabla;    
            gvTurnos.DataBind();
            txtBusquedaPaciente.Text = "";
        }

        protected void btnMostrarTodo_Click(object sender, EventArgs e)
        {

            CargarGridView();
            txtBusquedaPaciente.Text = "";
        }
    }
}