using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tp_Muestra
{
    public partial class PaginaAdmin1 : System.Web.UI.Page
    {
        NegocioUsuario negUs = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string nombre = Session["Usuario"].ToString();
            string user = negUs.GetNombreUsuario(nombre);
            lblUsuario.Text = "Admin: " + user;
        }
    }
}