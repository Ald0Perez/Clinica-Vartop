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
    
    public partial class ModificarUsuarios : System.Web.UI.Page
    {
        Usuario usuario = new Usuario();
        NegocioUsuario negUs = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {

                CargarGridView();

            }
            string nombre = Session["Usuario"].ToString();
            string user = negUs.GetNombreUsuario(nombre);
            lblUsuario.Text = "Admin: " + user;
        }
        public void CargarGridView()
        {

            DataTable tabla = negUs.GetTablaUsuarios();
            gvUsuarios.DataSource = tabla;
            gvUsuarios.DataBind();



        }

        protected void gvUsuarios_RowEditing(object sender, GridViewEditEventArgs e)
        {

            gvUsuarios.EditIndex = e.NewEditIndex;
            CargarGridView();

        }

        protected void gvUsuarios_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            String s_Nombre = ((TextBox)gvUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Nombre")).Text;
            String s_Contraseña= ((TextBox)gvUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Contraseña")).Text;
            String s_legajo = ((Label)gvUsuarios.Rows[e.RowIndex].FindControl("lbl_eit_Legajo")).Text;
           
            
            usuario.set_Nombre(s_Nombre);
            usuario.set_Contraseña(s_Contraseña);
            usuario.set_Legajo(Convert.ToInt32(s_legajo));


            
                negUs.ActualizarUsuario(usuario);
            
            gvUsuarios.EditIndex = -1;
            CargarGridView();
        }

        protected void gvUsuarios_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvUsuarios.EditIndex = -1;
           CargarGridView();
        }
    }
}