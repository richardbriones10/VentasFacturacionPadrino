using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class CapaDatosConexion
    {
        private SqlConnection Conexion = new SqlConnection("Server=MARVIN;DataBase= VentasFacturacionPadrino;Integrated Security=true");

        private string conn;

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

        public string getConexion()
        {
            this.conn = Conexion.ConnectionString;
            return this.conn;
        }
    }
}
