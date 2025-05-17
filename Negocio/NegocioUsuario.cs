using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dao;
using Entidades;

namespace Negocio
{
    public class NegocioUsuario
    {
        DatosUsuario usuar = new DatosUsuario();
        public Boolean BuscarExisteUsuario(string NomUsuario, string Contraseña)
        {
            DatosUsuario datos = new DatosUsuario();
            return datos.existeUsuario(NomUsuario, Contraseña);
        }

        public bool EsMedico(string NomUsuario, string Contraseña)
        {
            DatosUsuario datos = new DatosUsuario();
            return datos.EsMedico(NomUsuario, Contraseña);
        }

        public DataTable GetTablaUsuarios()
        {
            return usuar.getTablaUsuarios();

        }

        public string GetNombreUsuario(string legajo)
        {
            DataTable nombreTabla = usuar.GetNombreUsuario(legajo);
            string nombre = nombreTabla.Rows[0]["Nombre"].ToString();
            return nombre;
        }

        public bool AgregarUsuario(string legajo, string contraseña, string Nombre)
        {
            int cantidadFilas = 0;
            Usuario usua = new Usuario();
            usua.set_Legajo(Convert.ToInt32(legajo));
            usua.set_Nombre(Nombre);
            usua.set_Contraseña(contraseña);


            if (usuar.ExisteUsuarioLegajo(usua.get_Legajo().ToString()) == false)
            {
                cantidadFilas = usuar.AgregarUsuario(usua);
            }
            if (cantidadFilas == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool ActualizarUsuario(Usuario usu)
        {
            DatosUsuario datos = new DatosUsuario();
            int cantidadFilas = 0;
            cantidadFilas = datos.ActualizarUsuario(usu);
            if (cantidadFilas == 1)
            {
                return true;
            }
            else return false;
        }
    }
}