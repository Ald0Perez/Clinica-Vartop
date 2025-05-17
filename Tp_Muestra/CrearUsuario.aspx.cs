using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tp_Muestra
{
    public partial class CrearUsuario : System.Web.UI.Page
    {
        NegocioUsuario Usua = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string nombre = Session["Usuario"].ToString();
            string user = Usua.GetNombreUsuario(nombre);
            lblUsuario.Text = "Admin: " + user;
        }

      

        public void LimpiarTextBoxs()
        {
            txtLegajo.Text = "";
            txtUsuario.Text = "";
            txtContraseña.Text = "";
            txtConfirmeContraseña.Text = "";

        }

        protected void btnCrear_Click1(object sender, EventArgs e)
        {
            
                Boolean estado = false;

                estado = Usua.AgregarUsuario(txtLegajo.Text, txtContraseña.Text, txtUsuario.Text);

                if (estado)
                {
                    lblCargo.Text = "Se agrego correctamente el Usuario";
                LimpiarTextBoxs();
                }
                else
                {
                    lblCargo.Text = "Error al agregar Usuario";
            }
        }
    }
}