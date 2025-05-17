using Negocio;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tp_Muestra
{
    public partial class AgregarMedico : System.Web.UI.Page
    {
        NegocioProvincia negProv = new NegocioProvincia();
        NegocioLocalidad negLoc = new NegocioLocalidad();
        NegocioMedico negMed = new NegocioMedico();
        NegocioEspecialidad negEsp = new NegocioEspecialidad();
        NegocioUsuario negUs = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                CargarDDLProv();
                CargarDDLLocalidades();
                CargarDDLEspecialidades();
                cargarDdl31Dias();
                cargarDdlAnio();
                cargarHorarioEntrada();
                lblUsuario.Text = (string)Session["Usuario"];   
            }
            string nombre = Session["Usuario"].ToString();
            string user = negUs.GetNombreUsuario(nombre);
            lblUsuario.Text = "Admin: " + user;
        }

        private void CargarDDLProv()
        {
            ddlProvincia.DataSource = negProv.CargarDdlProvincias();
            ddlProvincia.DataTextField = "NombreProvincia_Pr";
            ddlProvincia.DataValueField = "IDProvincia_Pr";
            ddlProvincia.DataBind();
            ddlProvincia.Items.Insert(0, new ListItem("--Seleccione--", "0"));
        }
        
        private void CargarDDLLocalidades()
        {
            ddlLocalidad.DataSource = negLoc.getLocalidades(ddlProvincia.SelectedValue);
            ddlLocalidad.DataTextField = "NombreLocalidad_Lo";
            ddlLocalidad.DataValueField = "IdLocalidad_Lo";
            ddlLocalidad.DataBind();
            ddlLocalidad.Items.Insert(0, new ListItem("--Seleccione--", "0"));
        }

        private void CargarDDLEspecialidades()
        {
            ddlEspecialidad.DataSource = negEsp.CargarDdlEspecialidad();
            ddlEspecialidad.DataTextField = "NombreEspecialidad_Es";
            ddlEspecialidad.DataValueField = "IdEspecialidad";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Insert(0, new ListItem("--Seleccione--", "0"));
        }

       
        protected void ddlProvincia_SelectedIndexChanged1(object sender, EventArgs e)
        {

            string id = ddlProvincia.SelectedValue;
            ddlLocalidad.DataSource = negLoc.getLocalidades(id);
            ddlLocalidad.DataTextField = "NombreLocalidad_Lo";
            ddlLocalidad.DataValueField = "IdLocalidad_Lo";
            ddlLocalidad.DataBind();
            ddlLocalidad.Items.Insert(0, new ListItem("--Seleccione--", "0"));
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            bool PorlomenosUnDia = false;
                if( cbLunes.Checked || cbMartes.Checked || cbMiercoles.Checked ||
                                    cbJueves.Checked || cbViernes.Checked || cbSabado.Checked ||
                                    cbDomingo.Checked)
            {
                PorlomenosUnDia = true; 
            }

            if (!PorlomenosUnDia)
            {
                lblErrorDias.Text = "Seleccione al menos un día de atención.";
                return; 
            }
            else
            {
                lblErrorDias.Text = ""; 
            }

            bool estado = false;
            int legajo = Convert.ToInt32(txtLegajo.Text);
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
            int especialidad = Convert.ToInt32(ddlEspecialidad.SelectedValue);
            string horarioEntrada = ddlHorarioEntrada.SelectedValue.ToString();
            string horarioSalida = ddlHorarioSalida.SelectedValue.ToString();
            bool lunes = false;
            bool martes = false;
            bool miercoles = false;
            bool jueves = false;
            bool viernes = false;
            bool sabado = false;
            bool domingo = false;
            if (cbLunes.Checked == true) { lunes = true; }

            if (cbMartes.Checked == true) { martes = true; }
            
            if (cbMiercoles.Checked == true) { miercoles = true; }

            if (cbJueves.Checked == true) { jueves = true; }

            if (cbViernes.Checked == true) { viernes = true; }
            
            if (cbSabado.Checked == true) { sabado = true; }

            if (cbDomingo.Checked == true) { domingo = true; }


            estado = negMed.AgregarMedico(legajo, dni, nombre, apellido, sexo, nacionalidad, fechanacimiento, provincia, localidad, direccion, email, telefono, especialidad, horarioEntrada, horarioSalida, lunes, martes, miercoles, jueves, viernes, sabado, domingo);
            if (estado == true)
            {

            lblConfirmacion.Text = "Se agrego correctamente el Medico";
            lblErrorCargarDatos.Text = " "; 
            LimpiarCampos();
            }
            else
            {
                lblErrorCargarDatos.Text = "Error al agregar Medico";
                lblConfirmacion.Text = " ";
            }
        }

        public void LimpiarCampos()
        {
            txtLegajo.Text = "";
            txtDNI.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtCorreoElectronico.Text = "";
            txtDireccion.Text = "";
            ///fecha

          
            txtTelefono.Text = "";
            ddlSexo.SelectedIndex = 0;
            ddlNacionalidad.SelectedIndex = 0;
            ddlDia.SelectedIndex = 0;
            ddlMes.SelectedIndex = 0;
            ddlAño.SelectedIndex = 0;
            ddlProvincia.SelectedIndex = 0;
            ddlLocalidad.SelectedIndex = 0;
            ddlEspecialidad.SelectedIndex=0;
            ddlHorarioEntrada.SelectedIndex = 0;
            ddlHorarioSalida.SelectedIndex = 0;
            cbLunes.Checked = false;
            cbMartes.Checked = false;
            cbMiercoles.Checked = false;
            cbJueves.Checked = false;
            cbViernes.Checked = false;
            cbSabado.Checked = false;
            cbDomingo.Checked = false;
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
             if(ddlMes.SelectedValue == "1" || ddlMes.SelectedValue == "3" || ddlMes.SelectedValue == "5" || ddlMes.SelectedValue == "7" || ddlMes.SelectedValue == "8" || ddlMes.SelectedValue == "10" || ddlMes.SelectedValue == "12")
           {
               cargarDdl31Dias();
           }
           else if(ddlMes.SelectedValue=="2")
           {
                cargarDdl28Dias();
            }
            else
            {
                cargarDdl30Dias();
            }
            
        }

        public void cargarHorarioEntrada()
        {
            for (int i = 0; i < 24; i++)
            {
                if (i.ToString().Length < 2) ddlHorarioEntrada.Items.Add("0" + i.ToString() + ":00:00");
                else ddlHorarioEntrada.Items.Add(i.ToString() + ":00:00");
            }
            ddlHorarioEntrada.Items.Insert(0, new ListItem("--Seleccione--", "0"));
        }

        protected void ddlHorarioEntrada_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlHorarioSalida.Items.Clear();
            int horarioEntrada = ddlHorarioEntrada.SelectedIndex;

            for (int i = horarioEntrada; i <= horarioEntrada + 7; i++)
            {
                int horaSalida = i % 24;
                
                if (horaSalida.ToString().Length < 2) ddlHorarioSalida.Items.Add("0" + horaSalida.ToString() + ":00:00");
                else ddlHorarioSalida.Items.Add(horaSalida.ToString() + ":00:00");
            }
            ddlHorarioSalida.Items.Insert(0, new ListItem("--Seleccione--", "0"));
        }

        public void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
         
            if(args.Value.Length <= 4)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            bool PorlomenosUnDia = false;
           
            if (cbLunes.Checked || cbMartes.Checked || cbMiercoles.Checked ||
                cbJueves.Checked || cbViernes.Checked || cbSabado.Checked ||
                cbDomingo.Checked)
            {
                PorlomenosUnDia = true; 
            }
                args.IsValid = PorlomenosUnDia;
        }

        protected void txtLegajo_TextChanged(object sender, EventArgs e)
        {
            lblConfirmacion.Text = "";
        }
    }
}