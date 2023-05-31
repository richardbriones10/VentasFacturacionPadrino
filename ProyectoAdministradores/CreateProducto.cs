using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
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

        public CreateProducto()
        {
            InitializeComponent();
        }

        private void CreateProducto_Load(object sender, EventArgs e)
        {

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

            

        }
    }
}
