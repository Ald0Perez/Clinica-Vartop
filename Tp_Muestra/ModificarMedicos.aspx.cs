using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;

namespace Tp_Muestra
{

    public partial class TablaMedico : System.Web.UI.Page
    {
        NegocioMedico medico = new NegocioMedico();
        Medico med = new Medico();
        NegocioUsuario negUs = new NegocioUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
               
            }
            string nombre = Session["Usuario"].ToString();
            string user = negUs.GetNombreUsuario(nombre);
            lblUsuario.Text = "Admin: " + user;
        }

        protected void gvMedicos_RowEditing(object sender, GridViewEditEventArgs e)
        {

            gvMedicos.EditIndex = e.NewEditIndex;
            if (ddlTabla.SelectedValue == "Activos")
            {

                CargarMedicosActivos();
            }
            else if (ddlTabla.SelectedValue == "Inactivos")
            {
                CargarMedicosInactivos();
            }

        }

        protected void gvMedicos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            gvMedicos.EditIndex = -1;
            if (ddlTabla.SelectedValue == "Inactivos")
            {
                CargarMedicosInactivos();
            }
            else if (ddlTabla.SelectedValue == "Activos")
            {


                CargarMedicosActivos();

            }
            else
            {
                LimpiarTabla();
            }
        }

        protected void gvMedicos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String sLegajo = ((Label)gvMedicos.Rows[e.RowIndex].FindControl("lbl_eit_LegajoMedico")).Text;
            String s_Nombre = ((TextBox)gvMedicos.Rows[e.RowIndex].FindControl("txt_eit_Nombre")).Text;
            String s_Apellido = ((TextBox)gvMedicos.Rows[e.RowIndex].FindControl("txt_eit_Apellido")).Text;
            String s_Dni = ((Label)gvMedicos.Rows[e.RowIndex].FindControl("lbl_eit_Dni")).Text;
            String s_Nacionalidad = ((Label)gvMedicos.Rows[e.RowIndex].FindControl("lbl_eit_Nacionalidad")).Text;

            String s_Sexo = ((Label)gvMedicos.Rows[e.RowIndex].FindControl("lbl_eit_Sexo")).Text;

            String s_Correo = ((TextBox)gvMedicos.Rows[e.RowIndex].FindControl("txt_eit_Correo")).Text;
            String s_Telefono = ((TextBox)gvMedicos.Rows[e.RowIndex].FindControl("txt_eit_Telefono")).Text;
            String s_HorarioApertura = ((TextBox)gvMedicos.Rows[e.RowIndex].FindControl("txt_eit_HorarioApertura")).Text;

            String s_HorarioCierre = ((TextBox)gvMedicos.Rows[e.RowIndex].FindControl("txt_eit_HorarioCierre")).Text;
            bool s_Estado = ((CheckBox)gvMedicos.Rows[e.RowIndex].FindControl("cb_eit_Estado")).Checked;
            bool s_Lunes = ((CheckBox)gvMedicos.Rows[e.RowIndex].FindControl("cb_eit_Lunes")).Checked;
            bool s_Martes = ((CheckBox)gvMedicos.Rows[e.RowIndex].FindControl("cb_eit_Martes")).Checked;
            bool s_Miercoles = ((CheckBox)gvMedicos.Rows[e.RowIndex].FindControl("cb_eit_Miercoles")).Checked;
            bool s_Jueves = ((CheckBox)gvMedicos.Rows[e.RowIndex].FindControl("cb_eit_Jueves")).Checked;
            bool s_Viernes = ((CheckBox)gvMedicos.Rows[e.RowIndex].FindControl("cb_eit_Viernes")).Checked;
            bool s_Sabado = ((CheckBox)gvMedicos.Rows[e.RowIndex].FindControl("cb_eit_Sabado")).Checked;
            bool s_Domingo = ((CheckBox)gvMedicos.Rows[e.RowIndex].FindControl("cb_eit_Domingo")).Checked;



            med.set_Legajo(Convert.ToInt32(sLegajo));
            med.set_Nombre(s_Nombre);
            med.set_Apellido(s_Apellido);
            med.set_Sexo(s_Sexo);
            med.set_DNI(s_Dni);

            med.set_Nacionalidad(s_Nacionalidad);

            med.set_Email(s_Correo);
            med.set_Telefono(s_Telefono);
            med.set_HorarioEntrada(s_HorarioApertura);

            med.set_HorarioSalida(s_HorarioCierre);
            med.set_Lunes(s_Lunes);
            med.set_Martes(s_Martes);
            med.set_Miercoles(s_Miercoles);
            med.set_Jueves(s_Jueves);

            med.set_Viernes(s_Viernes);
            med.set_Sabado(s_Sabado);
            med.set_Domingo(s_Domingo);
            med.set_Estado(s_Estado ? 1 : 0);


            Session["Medico"] = med;
            if (s_Estado == false)
            {
                lblConfirmacion.Visible = true;
                btnAceptar.Visible = true;
                btnCancelar.Visible = true;
            }
            else
            {
                medico.ActualizarMedico(med);
            }



            gvMedicos.EditIndex = -1;

            if (ddlTabla.SelectedValue == "Inactivos")
            {
                CargarMedicosInactivos();
            }
            else if (ddlTabla.SelectedValue == "Activos")
            {


                CargarMedicosActivos();

            }
            else
            {
                LimpiarTabla();
            }
        }

        public void CargarMedicosActivos()
          
        {
            gvMedicos.Visible = true;
            DataTable tabla = medico.GetMedicos();
            gvMedicos.DataSource = tabla;
            gvMedicos.DataBind();
        }
        public void CargarMedicosInactivos()
        {
            gvMedicos.Visible = true;
            DataTable tabla = medico.GetMedicosInactivos();
            gvMedicos.DataSource = tabla;
            gvMedicos.DataBind();
        }


        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Medico med = Session["Medico"] as Medico;
            medico.ActualizarMedico(med);
            lblConfirmacion.Visible = false;
            btnAceptar.Visible = false;
            btnCancelar.Visible = false;
            CargarMedicosActivos();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            lblConfirmacion.Visible = false;
            btnAceptar.Visible = false;
            btnCancelar.Visible = false;
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            if (ddlTabla.SelectedValue == "Inactivos")
            {
                CargarMedicosInactivos();
            }
            else if(ddlTabla.SelectedValue == "Activos")
            {


                CargarMedicosActivos();

            }
            else
            {
                LimpiarTabla();
            }
        }


        public void LimpiarTabla()
        {
            gvMedicos.Visible = false;
        }
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {

        }
    }
}