using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
/*yo*/
namespace Tp_Muestra
{
    public partial class Inicio : System.Web.UI.Page
    {
        NegocioUsuario negUs = new NegocioUsuario();
        Usuario us = new Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["Usuario"] == null)
            {
                Session["Usuario"] = txtUsuario.Text;
            }
            else
            {
                Session["Usuario"] = "";
                Session["Usuario"] = txtUsuario.Text;
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            if (negUs.BuscarExisteUsuario(txtUsuario.Text, txtClave.Text))
            {
            string legajo = Session["Usuario"].ToString();
            Session["Usuario"] = legajo;
               
            if (negUs.EsMedico(txtUsuario.Text, txtClave.Text))
            {
              Response.Redirect("PaginaMedico(Menu).aspx?User=" + legajo);
            }
              else Response.Redirect("PaginaAdmin(Menu).aspx?User=" + legajo);
            }
            else
            {
                lblErrorInicio.Text = "Usuario o contraseña Incorrecto";
            }
        }
    }
}