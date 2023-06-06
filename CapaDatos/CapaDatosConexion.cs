using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class CapaDatosConexion
    {
        private SqlConnection Conexion = new SqlConnection("Server=DESKTOP-AGGUH4D;DataBase= VentasFacturacionPadrino;Integrated Security=true");

        public SqlConnection AbrirConexion()
        {
            if (Conexion.State == ConnectionState.Closed)
                Conexion.Open();
            return Conexion;
        }
        public SqlConnection CerrarConexion()
        {
            if (Conexion.State == ConnectionState.Open)
                Conexion.Close();
            return Conexion;
        }
    }
}
