using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class CapaDatosFacturacionProductos
    {
        private CapaDatosConexion Conexion = new CapaDatosConexion();
        SqlDataReader Leer;
        DataTable Tabla = new DataTable();
        SqlCommand Comando = new SqlCommand();

        public void InsertarFacturaProductos
        (
            int TotalProductos,
            float MontoTotal,
            string NombreCliente
        )
        {
            Conexion.CerrarConexion();
            Comando.Connection = Conexion.AbrirConexion();
            Comando.CommandText = "InsertarFacturaProductos";
            Comando.CommandType = CommandType.StoredProcedure;
            Comando.Parameters.AddWithValue("@TotalProductos", TotalProductos);
            Comando.Parameters.AddWithValue("@MontoTotal", MontoTotal);
            Comando.Parameters.AddWithValue("@NombreCliente", NombreCliente);
            Comando.ExecuteNonQuery();
            Comando.Parameters.Clear();
            Conexion.CerrarConexion();
        }
        public void InsertarFacturaProductoDetalle
        (
            int ProductoId,
            int CantidadProducto,
            float Subtotal,
            int NumeroFactura
        )
        {
            Conexion.CerrarConexion();
            Comando.Connection = Conexion.AbrirConexion();
            Comando.CommandText = "InsertarFacturaProductoDetalle";
            Comando.CommandType = CommandType.StoredProcedure;
            Comando.Parameters.AddWithValue("@ProductoId", ProductoId);
            Comando.Parameters.AddWithValue("@CantidadProducto", CantidadProducto);
            Comando.Parameters.AddWithValue("@Subtotal", Subtotal);
            Comando.Parameters.AddWithValue("@NumeroFactura", NumeroFactura);
            Comando.ExecuteNonQuery();
            Comando.Parameters.Clear();
            Conexion.CerrarConexion();
        }



    }
}
