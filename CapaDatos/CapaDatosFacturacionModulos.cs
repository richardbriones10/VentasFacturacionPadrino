using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class CapaDatosFacturacionModulos
    {
        private CapaDatosConexion Conexion = new CapaDatosConexion();
        SqlCommand Comando = new SqlCommand();

        public void InsertarFacturaModulos
        (
            int IdProveedor,
            int IdModulo,
            int NumeroDeMeses
        )
        {
            Conexion.CerrarConexion();
            Comando.Connection = Conexion.AbrirConexion();
            Comando.CommandText = "InsertarFacturaModulos";
            Comando.CommandType = CommandType.StoredProcedure;
            Comando.Parameters.AddWithValue("@IdProveedor", IdProveedor);
            Comando.Parameters.AddWithValue("@IdModulo", IdModulo);
            Comando.Parameters.AddWithValue("@NumeroDeMeses", NumeroDeMeses);
            Comando.ExecuteNonQuery();
            Comando.Parameters.Clear();
            Conexion.CerrarConexion();
        }



    }
}
