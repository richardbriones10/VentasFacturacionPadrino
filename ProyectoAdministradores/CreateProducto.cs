using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Routing;
using System.Windows.Forms;
using CapaEntidad;
using CapaNegocios;

namespace ProyectoAdministradores
{
    public partial class CreateProducto : Form
    {
        CapaNegocioCrudProductos cnProducto = new CapaNegocioCrudProductos();
        private SqlConnection Conexion = new SqlConnection("Server=DESKTOP-AGGUH4D;DataBase= VentasFacturacionPadrino;Integrated Security=true");

        public CreateProducto()
        {
            InitializeComponent();
        }

        private void CreateProducto_Load(object sender, EventArgs e)
        {
            LlenarComboBox();
        }
        /// <summary>
        /// Llenado de todos los combo box
        /// </summary>
        private void LlenarComboBox()
        {
            /*Example // Crear una conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Crear un adaptador de datos para ejecutar la consulta y llenar un DataSet
                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                DataSet dataSet = new DataSet();

                // Abrir la conexión y llenar el DataSet con los datos del proveedor
                connection.Open();
                adapter.Fill(dataSet, "Proveedor");

                // Asignar el DataTable como origen de datos para el ComboBox
                comboBoxProveedores.DataSource = dataSet.Tables["Proveedor"];
                comboBoxProveedores.DisplayMember = "Empresa"; // Mostrar el nombre de la empresa en el ComboBox
                comboBoxProveedores.ValueMember = "IdProveedor"; // Establecer el valor del IDProveedor como valor seleccionado
            }*/

            try
            {
                string query = "select IdCategoria, Nombre from CategoriaProducto where Estado = 1";

                Conexion.Open();
              
                DataSet ds = new DataSet();
                SqlDataAdapter dta = new SqlDataAdapter(query, Conexion);

                dta.Fill(ds);
                cbCategoria.Items.Add(new {Nombre="Elije una Categoria"});
               
                cbCategoria.DataSource = ds.Tables[0];
                cbCategoria.DisplayMember = "Nombre";
                cbCategoria.ValueMember = "IdCategoria";

                cbCategoria.SelectedIndex = -1;

                ds.Dispose();
                
                query = "select IdProveedor,Empresa from Proveedor";
                dta = new SqlDataAdapter(query, Conexion);

                dta.Fill(ds, "Proveedor");

                cbCategoria.DataSource = ds.Tables["Proveedorv"];


            }
            catch
            {
                Console.WriteLine("aaa");
            }
            finally
            {
                Conexion.Close();
            }



        }

        private void btnCrearProdcto_Click(object sender, EventArgs e)
        {
            Producto producto = new Producto();
            
            producto.IdProducto = 0;
            producto.Nombre = tbNombre.Text;
            producto.Precio = float.Parse(tbPrecio.Text);
            producto.Descripcion = tbDescripcion.Text;
            producto.StockActual = int.Parse(tbStock.Text.ToString());
            producto.Proveedor_FK_Codigo = int.Parse(cbProveedor.SelectedValue.ToString());
            producto.Categoria_FK_Codigo = int.Parse(cbCategoria.SelectedValue.ToString());

            bool resultado = cnProducto.validarDatos(producto);

            if (resultado)
            {
                MessageBox.Show("Ingreso con exito");
            }

        }
    }
}
