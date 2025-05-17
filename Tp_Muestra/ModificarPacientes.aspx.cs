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
    public partial class tablaCliente : System.Web.UI.Page
    {
        NegocioPaciente paciente = new NegocioPaciente();
        Paciente Pac = new Paciente();
        NegocioUsuario negUs = new NegocioUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGridView();
            }
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string nombre = Session["Usuario"].ToString();
            string user = negUs.GetNombreUsuario(nombre);
            lblUsuario.Text = "Admin: " + user;
        }

        public void CargarGridView()
        {
            DataTable tabla = paciente.GetTablaPaciente();
            gvPacientes.DataSource = tabla;
            gvPacientes.DataBind();
        }

        public void CargarGridViewInactivos()
        {
            DataTable tabla = paciente.GetTablaPacienteInactivos();
            gvPacientes.DataSource = tabla;
            gvPacientes.DataBind();
        }

        protected void gvPacientes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvPacientes.EditIndex = -1;
            if (ddlTabla.SelectedValue == "Activos")
            {
                CargarGridView();
            }
            else if (ddlTabla.SelectedValue == "Inactivos")
            {
                CargarGridViewInactivos();
            }
        }

        protected void gvPacientes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvPacientes.EditIndex = e.NewEditIndex;
            if (ddlTabla.SelectedValue == "Activos")
            {
                CargarGridView();

            }
            else if (ddlTabla.SelectedValue == "Inactivos")
            {
                CargarGridViewInactivos();
            }
        }

        protected void gvPacientes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            String s_Nombre = ((TextBox)gvPacientes.Rows[e.RowIndex].FindControl("txt_NombreE")).Text;
            String s_Apellido = ((TextBox)gvPacientes.Rows[e.RowIndex].FindControl("txt_ApellidoE")).Text;
            String s_Dni = ((Label)gvPacientes.Rows[e.RowIndex].FindControl("lbl_DniE")).Text;
            String s_Sexo = ((Label)gvPacientes.Rows[e.RowIndex].FindControl("lbl_SexoE")).Text;
            String s_Nacionalidad = ((Label)gvPacientes.Rows[e.RowIndex].FindControl("lbl_NacionalidadE")).Text;
            String s_FechaNacimiento = ((Label)gvPacientes.Rows[e.RowIndex].FindControl("lbl_FechaNE")).Text;
            String S_Telefono = ((TextBox)gvPacientes.Rows[e.RowIndex].FindControl("txt_Telefono")).Text;
            String s_CorreoElectronico = ((TextBox)gvPacientes.Rows[e.RowIndex].FindControl("txt_CorreoElectronico")).Text;
            bool s_Estado = ((CheckBox)gvPacientes.Rows[e.RowIndex].FindControl("Cb_EstadoE")).Checked;

            Pac.set_Nombre(s_Nombre);
            Pac.set_Apellido(s_Apellido);
            Pac.set_DNI(s_Dni);
            Pac.set_Sexo(s_Sexo);
            Pac.set_Nacionalidad(s_Nacionalidad);
            Pac.set_FechaNacimiento(s_FechaNacimiento);
            Pac.set_Email(s_CorreoElectronico);
            Pac.set_Telefono(S_Telefono);
            Pac.set_Estado(s_Estado ? 1 : 0);

            Session["Paciente"] = Pac;


            if (s_Estado == false)
            {
                lblConfirmacion.Visible = true;
                btnAceptar.Visible = true;
                btnCancelar.Visible = true;
            }
            else
            {
                paciente.ActualizarPaciente(Pac);
            }

            gvPacientes.EditIndex = -1;
          
             if (ddlTabla.SelectedValue == "Inactivos")
            {
                CargarGridViewInactivos();
            }
            else
            {
                CargarGridView();
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Paciente pac = Session["Paciente"] as Paciente;

            paciente.ActualizarPaciente(pac);
            lblConfirmacion.Visible = false;
            btnAceptar.Visible = false;
            btnCancelar.Visible = false;
            CargarGridView();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            lblConfirmacion.Visible = false;
            btnAceptar.Visible = false;
            btnCancelar.Visible = false;
        }

        protected void btnPacientesAct_Click(object sender, EventArgs e)
        {
            CargarGridView();
        }

        protected void btnPacientesInactivos_Click(object sender, EventArgs e)
        {
            CargarGridViewInactivos();
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            if (ddlTabla.SelectedValue == "Activos")
            {
                CargarGridView();

            }
            else if (ddlTabla.SelectedValue == "Inactivos")
            {
                CargarGridViewInactivos();
            }
        }
    }
}