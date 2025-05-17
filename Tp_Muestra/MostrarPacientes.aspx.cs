using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Tp_Muestra
{
    public partial class VerPacientes : System.Web.UI.Page
    {

        NegocioPaciente paciente = new NegocioPaciente();
        NegocioUsuario negUs = new NegocioUsuario();
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

            DataTable tabla = paciente.GetTablaPaciente();
            gvPacientes.DataSource = tabla;
            gvPacientes.DataBind();
        }

        public void CargarGridViewPorSexo()
        {

            string Sexo = ddlSexo.SelectedValue;
            DataTable tabla = paciente.GetTablaSexo(Sexo);
            gvPacientes.DataSource = tabla;
            gvPacientes.DataBind();

        }

        public void CargarGridViewPorNacionalidad()
        {

            string Nacionalidad = ddlNacionalidad.SelectedValue;
            DataTable tabla = paciente.GetTablaNacionalidad(Nacionalidad);
            gvPacientes.DataSource = tabla;
            gvPacientes.DataBind();

        }

        public void CargarGridViewPorFiltros()
        {

            string Sexo = ddlSexo.SelectedValue;
            string Nacionalidad = ddlNacionalidad.SelectedValue;

            DataTable tabla = paciente.GetTablaFiltros(Sexo, Nacionalidad);
            gvPacientes.DataSource = tabla;
            gvPacientes.DataBind();

        }


        public void CargarGridViewBusquedaDni()
        {
            string dni = txtDNI.Text;

            DataTable tabla = paciente.GetTablaBusquedaDni(dni);
            gvPacientes.DataSource = tabla;
            gvPacientes.DataBind();



        }


        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            CargarGridViewBusquedaDni();
            limpiarcampos();
        }

        protected void btnMostrarTodo_Click(object sender, EventArgs e)
        {
            CargarGridView();
            limpiarcampos();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            if (ddlSexo.SelectedValue != "0" && ddlNacionalidad.SelectedValue != "0")
            {
                CargarGridViewPorFiltros();

            }
            else if (ddlSexo.SelectedValue != "0")
            {
                CargarGridViewPorSexo();
            }
            else if (ddlNacionalidad.SelectedValue != "0")
            {
                CargarGridViewPorNacionalidad();
            }
            else
            {
                CargarGridView();
            }




            limpiarcampos();
        }


        public void limpiarcampos()
        {
            txtDNI.Text = "";


        }

        
    }
}