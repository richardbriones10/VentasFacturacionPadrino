using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidad;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace CapaDatos
{
    public class CapaDatosCrudProductos
    {


        private CapaDatosConexion conexion = new CapaDatosConexion();
        public DataView GetProductos()
        {
            DataSet dsProducto = new DataSet();
            DataView dvProducto = new DataView();

            try
            {

                SqlCommand cmd = new SqlCommand("SP_Load_Productos", conexion.AbrirConexion());
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(dsProducto);
                dvProducto = dsProducto.Tables[0].DefaultView;
                dvProducto.Sort = "Nombre";

                


            }catch(Exception ex)
            {
                Console.WriteLine(ex.Message);

            }
            finally
            {

                conexion.CerrarConexion();
            }

            return dvProducto;
        }
        

        public void InsertProduct(Producto producto)
        {

            try
            {
                SqlCommand cmd = new SqlCommand("insert into Producto (Nombre, StockActual, Precio, Descripcion, Proveedor_FK_Codigo, Categoria_FK_Codigo)"+
                    " values(@Nombre,@StockActual,@Precio,@Descripcion,@Proveedor_FK_Codigo,@Categoria_FK_Codigo )", conexion.AbrirConexion());
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Nombre", producto.Nombre);
                cmd.Parameters.AddWithValue("@StockActual", producto.StockActual);
                cmd.Parameters.AddWithValue("@Precio", producto.Precio);
                cmd.Parameters.AddWithValue("@Descripcion", producto.Descripcion);
                cmd.Parameters.AddWithValue("@Proveedor_FK_Codigo", producto.Proveedor_FK_Codigo);
                cmd.Parameters.AddWithValue("@Categoria_FK_Codigo", producto.Categoria_FK_Codigo);

                cmd.ExecuteNonQuery();
            
            }
            catch(Exception ex)
            {
                MessageBox.Show("Error:"+  ex.Message);
            }
            finally
            {
                conexion.CerrarConexion();
            }

        }
    }
}
