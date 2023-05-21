using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidad;
using System.Data.SqlClient;


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
        
    }
}
