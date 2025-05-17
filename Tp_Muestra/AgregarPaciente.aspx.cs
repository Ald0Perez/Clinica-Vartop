using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tp_Muestra
{
    public partial class AgregarPaciente : System.Web.UI.Page
    {
        NegocioProvincia negProvincia = new NegocioProvincia();
        NegocioLocalidad negLocalidad = new NegocioLocalidad();
        NegocioPaciente negPaciente = new NegocioPaciente();
        NegocioUsuario negUs = new NegocioUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                ddlProvincia.SelectedIndex = -1;
                CargarDDLProv();
                cargarDdl31Dias();
                cargarDdlAnio();
                CargarDDLLocalidades();
            }
            string nombre = Session["Usuario"].ToString();
            string user = negUs.GetNombreUsuario(nombre);
            lblUsuario.Text = "Admin: " + user;
        }

        private void CargarDDLProv()
        {
            ddlProvincia.DataSource = negProvincia.CargarDdlProvincias();
            ddlProvincia.DataTextField = "NombreProvincia_Pr";
            ddlProvincia.DataValueField = "IdProvincia_Pr";
            ddlProvincia.DataBind();
            ddlProvincia.Items.Insert(0, new ListItem("--Seleccione--", "0"));
        }
        private void CargarDDLLocalidades()
        {
            ddlLocalidad.DataSource = negLocalidad.getLocalidades(ddlProvincia.SelectedValue);
            ddlLocalidad.DataTextField = "NombreLocalidad_Lo";
            ddlLocalidad.DataValueField = "IdLocalidad_Lo";
            ddlLocalidad.DataBind();
            ddlLocalidad.Items.Insert(0, new ListItem("--Seleccione--", "0"));
        }

        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarDDLLocalidades();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            lblAgregar.Text = "";
            txtErrorFormulario.Text = "";

            bool estado=false;
            string dni = txtDNI.Text;
            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            string sexo = ddlSexo.SelectedValue;
            if (ddlSexo.SelectedValue == "1") sexo = "F";
            else if (ddlSexo.SelectedValue == "2") sexo = "M";
            string nacionalidad = ddlNacionalidad.SelectedValue.ToString();
            string fechanacimiento = ddlAño.SelectedValue.ToString() + "-" + ddlMes.SelectedValue.ToString() + "-" + ddlDia.SelectedValue.ToString();
            int provincia = Convert.ToInt32(ddlProvincia.SelectedValue);
            int localidad = Convert.ToInt32(ddlLocalidad.SelectedValue);
            string direccion = txtDireccion.Text;
            string email = txtCorreoElectronico.Text;
            string telefono = txtTelefono.Text;
            estado = negPaciente.AgregarPaciente(dni, nombre, apellido, sexo, nacionalidad, fechanacimiento, provincia, localidad,direccion, email, telefono);
            if (estado == true)
            {
                lblAgregar.Text = "Se agrego correctamente el Paciente";
                txtErrorFormulario.Text = "";
            }
            else
            {
                txtErrorFormulario.Text = "Error al agregar Paciente";
                lblAgregar.Text = "";
            }
            LimpiarCampos();
        }


        public void LimpiarCampos()
        {
            txtDNI.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtCorreoElectronico.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            ddlProvincia.SelectedIndex = 0;
            ddlLocalidad.SelectedIndex = 0;
            ddlSexo.SelectedIndex = 0;
            ddlNacionalidad.SelectedIndex = 0;
            ddlDia.SelectedIndex = 0;
            ddlMes.SelectedIndex = 0;
            ddlAño.SelectedIndex = 0;
        }

        public void cargarDdl31Dias()
        {
            ddlDia.Items.Clear();
            for (int i = 0; i <= 31; i++)
            {
                if (i == 0) ddlDia.Items.Add("--Seleccione--");
                else ddlDia.Items.Add(i.ToString());
            }
        }

        public void cargarDdl30Dias()
        {
            ddlDia.Items.Clear();
            for (int i = 0; i <= 30; i++)
            {
                if (i == 0) ddlDia.Items.Add("--Seleccione--");
                else ddlDia.Items.Add(i.ToString());
            }
        }

        public void cargarDdl28Dias()
        {
            ddlDia.Items.Clear();
            for (int i = 0; i <= 28; i++)
            {
                if (i == 0) ddlDia.Items.Add("--Seleccione--");
                else ddlDia.Items.Add(i.ToString());
            }
        }

        public void cargarDdlAnio()
        {
            for (int i = 1919; i < 2024; i++)
            {
                if (i == 1919) ddlAño.Items.Add("--Seleccione--");
                else ddlAño.Items.Add(i.ToString());
            }
        }

        protected void ddlMes_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlMes.SelectedValue == "1" || ddlMes.SelectedValue == "3" || ddlMes.SelectedValue == "5" || ddlMes.SelectedValue == "7" || ddlMes.SelectedValue == "8" || ddlMes.SelectedValue == "10" || ddlMes.SelectedValue == "12")
            {
                cargarDdl31Dias();
            }
            else if (ddlMes.SelectedValue == "2")
            {
                cargarDdl28Dias();
            }
            else
            {
                cargarDdl30Dias();
            }
        }

        protected void txtDNI_TextChanged(object sender, EventArgs e)
        {
                lblAgregar.Text = " ";
        }
    }
}