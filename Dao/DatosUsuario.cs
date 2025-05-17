using Entidades;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    public class DatosUsuario
    {
        AccesoDatos datos = new AccesoDatos();

        public Usuario GetUsuario(Usuario us)
        {
            DataTable tabla = datos.ObtenerTabla("Usuarios", "SELECT * FROM Usuarios");
            us.set_Legajo(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            us.set_Nombre(tabla.Rows[0][1].ToString());
            us.set_Contraseña(tabla.Rows[0][2].ToString());
            return us;
        }

        public DataTable getTabla()
        {
            DataTable tabla = datos.ObtenerTabla("Usuarios", "SELECT Nombre, Contraseña, Legajo FROM Usuarios");
            return tabla;
        }

        public DataTable GetNombreUsuario(string legajo)
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable medicos = datos.ObtenerTabla("Usuarios", "SELECT Nombre FROM Usuarios WHERE Legajo = '" + legajo + "'");
            return medicos;
        }

        public Boolean existeUsuario(string Legajo, string contraseña)
        {
            string consulta = "SELECT * FROM Usuarios where Legajo = '" + Legajo + "' AND Contraseña ='" + contraseña + "'";

            return datos.Existe(consulta);
        }

        public Boolean existeLegajo(int Legajo)
        {
            string consulta = "SELECT *  FROM Medicos WHERE Estado_MED = 1 AND Legajo_MED = '" + Legajo + "' ";
            return datos.Existe(consulta);
        }

        public Boolean EsMedico(string nombreUsuario, string contraseña)
        {
            string consulta = "SELECT * FROM Usuarios AS U INNER JOIN Medicos AS M ON U.Legajo = M.LegajoMedico where Legajo = '" + nombreUsuario + "' AND Contraseña = '" + contraseña + "' ";
            return datos.Existe(consulta);
        }

        public DataTable getTablaUsuarios()
        {
            AccesoDatos datos = new AccesoDatos();
            DataTable usuarios = datos.ObtenerTabla("usuarios", "SELECT * from Usuarios ");
            return usuarios;
        }
        public int ActualizarUsuario(Usuario usu)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosActualizarUsuario(ref comando, usu);
            return datos.EjecutarProcedimientoAlmacenado(comando, "spActualizarUsuario");
        }

        public Boolean ExisteUsuarioLegajo(string Legajo)
        {
            string consulta = "SELECT * FROM Usuarios WHERE Legajo LIKE '%" + Legajo + "%'";
            return datos.Existe(consulta);
        }

        public int AgregarUsuario(Usuario usuario)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosAgregarUsuario(ref comando, usuario);
            return datos.EjecutarProcedimientoAlmacenado(comando, "spAgregarUsuario");
        }
        private void ArmarParametrosActualizarUsuario(ref SqlCommand comando, Usuario usu)
        {
            SqlParameter sqlParametro = new SqlParameter();
            sqlParametro = comando.Parameters.Add("@nombre", SqlDbType.VarChar);
            sqlParametro.Value = usu.get_Nombre();
            sqlParametro = comando.Parameters.Add("@contraseña", SqlDbType.VarChar);
            sqlParametro.Value = usu.get_Contraseña();
            sqlParametro = comando.Parameters.Add("@legajo", SqlDbType.Int);
            sqlParametro.Value = usu.get_Legajo();
        }

        private void ArmarParametrosAgregarUsuario(ref SqlCommand comando, Usuario usu)
        {
            SqlParameter sqlParametro = new SqlParameter();
            sqlParametro = comando.Parameters.Add("@nombre", SqlDbType.VarChar);
            sqlParametro.Value = usu.get_Nombre();
            sqlParametro = comando.Parameters.Add("@contraseña", SqlDbType.VarChar);
            sqlParametro.Value = usu.get_Contraseña();
            sqlParametro = comando.Parameters.Add("@legajo", SqlDbType.Int);
            sqlParametro.Value = usu.get_Legajo();
        }
    }
}