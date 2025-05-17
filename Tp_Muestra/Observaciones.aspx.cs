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
    public partial class Observaciones : System.Web.UI.Page
    {
        NegocioUsuario negUs = new NegocioUsuario();
        NegocioTurnos turnos = new NegocioTurnos();
        Turnos tur = new Turnos();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
             CargarGridView();
            lblUsuario.Text =(string)Session["Usuario"];
            }

            string nombre = Session["Usuario"].ToString();
            string user = negUs.GetNombreUsuario(nombre);
            lblUsuario.Text = "Doctor/a: " + user;

        }
        

        public void CargarGridView()
        {
            string user = (String)Session["Usuario"];
            DataTable tabla = turnos.GetObservacionPaciente( user);
            gvObservaciones.DataSource = tabla;
            gvObservaciones.DataBind();
        }

        public void CargarGridViewPacienteBuscado()
        {
            string dni = txtPaciente.Text;
            string user = (String)Session["Usuario"];
            DataTable tabla = turnos.GetObservacionPacienteBuscado(user,dni);
            gvObservaciones.DataSource = tabla;
            gvObservaciones.DataBind();
        }

        protected void gvObservaciones_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvObservaciones.EditIndex=e.NewEditIndex;
            CargarGridView();
        }

        protected void gvObservaciones_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvObservaciones.EditIndex = -1;
            CargarGridView();
        }

        protected void gvObservaciones_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String s_ID = ((Label)gvObservaciones.Rows[e.RowIndex].FindControl("lbl_idTurnos")).Text;
            String s_Observacion = ((TextBox)gvObservaciones.Rows[e.RowIndex].FindControl("txtDescripcion")).Text;
            bool s_Asistencia = ((CheckBox)gvObservaciones.Rows[e.RowIndex].FindControl("cb_eit_Asistencia")).Checked;

            tur.set_IdTurno_TUR(Convert.ToInt32(s_ID));
            tur.set_Observaciones_TUR(s_Observacion);
            tur.set_Asistencia_TUR(s_Asistencia ? 1 : 0);

            turnos.ActualizarTurno(tur);

            gvObservaciones.EditIndex = -1;
            CargarGridView();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            CargarGridViewPacienteBuscado();
            txtPaciente.Text = "";
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            CargarGridView();
            txtPaciente.Text = "";
        }
    }
}