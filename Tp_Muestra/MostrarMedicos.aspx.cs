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
    public partial class MostrarMedicos : System.Web.UI.Page
    {       
        NegocioUsuario negUs = new NegocioUsuario();
        Medico med = new Medico();
        NegocioEspecialidad negEsp = new NegocioEspecialidad();
        NegocioMedico medico = new NegocioMedico();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                CargarGridView();
                CargarDDLEspecialidades();
            }

            string nombre = Session["Usuario"].ToString();
            string user = negUs.GetNombreUsuario(nombre);
            lblUsuario.Text = "Admin: " + user;
        }



        public void CargarGridView()
        {


            DataTable tabla = medico.GetMedicos();
            gvMedicos.DataSource = tabla;
            gvMedicos.DataBind();


        }

        private void CargarDDLEspecialidades()
        {


            ddlEspecialidad.DataSource = negEsp.CargarDdlEspecialidad();
            ddlEspecialidad.DataTextField = "NombreEspecialidad_Es";
            ddlEspecialidad.DataValueField = "IdEspecialidad";

            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Insert(0, new ListItem("Seleccione", "0"));
        }
   

     



        public void cargarGridViewEspecialidad(string IdEspecialidad)
        {
            DataTable tabla = medico.GetMedicosEspecialidad(IdEspecialidad);
            gvMedicos.DataSource = tabla;
            gvMedicos.DataBind();
        }


     

        protected void btnBuscar_Click1(object sender, EventArgs e)
        {
            if (txtLegajo.Text.Trim().Length == 0)
            {

                CargarGridView();
                lblAviso.Text = "Para buscar un medico especifico llene el campo";
            }
            else
            {
                string legajo = txtLegajo.Text;
                DataTable tabla = medico.getMedicoBuscado(legajo);
                gvMedicos.DataSource = tabla;
                gvMedicos.DataBind();
                LimpiarCampos();


            }
        }

        protected void btnFiltrar_Click1(object sender, EventArgs e)
        {

           

            if (ddlEspecialidad.SelectedValue == "0")
            {
                CargarGridView();

            }

            else if (ddlEspecialidad.SelectedValue != "Seleccione")
            {
                cargarGridViewEspecialidad(ddlEspecialidad.SelectedValue);
            }

        }

        protected void btnRestablecer_Click(object sender, EventArgs e)
        {
            CargarGridView();
            
        }
        public void LimpiarCampos()
        {
            txtLegajo.Text = "";
            lblAviso.Text = "";
        }
    }
}
