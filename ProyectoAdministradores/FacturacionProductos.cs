using CapaNegocios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Windows.Forms;

namespace ProyectoAdministradores
{
    public partial class FacturacionProductos : Form
    {
        //Conexion con la base de datos
        private SqlConnection Conexion = new SqlConnection("Server=MARVIN;DataBase=VentasFacturacionPadrino;Integrated Security=true");
        DataTable datos = new DataTable();
        SqlCommand comando = new SqlCommand();
        private DataTable dt;
        CapaNegociosFacturacionProductos objetoCN = new CapaNegociosFacturacionProductos();

        public FacturacionProductos()
        {
            InitializeComponent();
            SiguienteIdFactura();
            AutoCompletarProducto();

        }



        private void FacturacionProductos_Load(object sender, EventArgs e)
        {
            AutoCompletarProducto();


            dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("Nombre");
            dt.Columns.Add("Descripcion");
            dt.Columns.Add("Cantidad");
            dt.Columns.Add("Precio Unitario");
            dt.Columns.Add("Subtotal");
            dgv_carrito.DataSource = dt;
        }

        void AgregarNuevaVenta()
        {
            int TotalProductos = int.Parse(labelTotalProductos.Text);
            float MontoTotal = float.Parse(labelMontoTotal.Text);
            string NombreCliente = textBoxNombreCliente.Text.Trim();

            objetoCN.InsertarFacturaProductos(TotalProductos, MontoTotal, NombreCliente);
            MessageBox.Show("Se facturo correctamente");
        }
        private void AgregarNuevaVentaDetalle()
        {
            int totalColumnas = dgv_carrito.ColumnCount;
            int totalFilas = dgv_carrito.RowCount;

            //Variables a enviar
            int NumeroFactura = Convert.ToInt32(labelFactura.Text);
            int ProductoId;
            int CantidadProducto;
            float Subtotal;



            for (int i = 0; i != totalFilas; ++i)
            {
                ProductoId = Convert.ToInt16(dgv_carrito.Rows[i].Cells[0].Value.ToString());
                CantidadProducto = Convert.ToInt16(dgv_carrito.Rows[i].Cells[3].Value.ToString());
                Subtotal = float.Parse(dgv_carrito.Rows[i].Cells[5].Value.ToString());

                objetoCN.InsertarFacturaProductoDetalle(ProductoId, CantidadProducto, Subtotal, NumeroFactura);
            }


        }


        //Funcion para capturar el siguiente Numero de la Factura
        private void SiguienteIdFactura()
        {
            SqlCommand cmd = new SqlCommand("SiguienteFacturaId", Conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                labelFactura.Text = ds.Rows[0]["SiguienteFactura"].ToString();
            }
        }

        void AutoCompletarProducto()
        {
            AutoCompleteStringCollection lista = new AutoCompleteStringCollection();
            AutoCompleteStringCollection lista2 = new AutoCompleteStringCollection();
            AutoCompleteStringCollection lista3 = new AutoCompleteStringCollection();

            SqlCommand cmd = new SqlCommand("SELECT * FROM Producto", Conexion);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

            adapter.Fill(datos);

            for (int i = 0; i < datos.Rows.Count; i++)
            {
                lista.Add(datos.Rows[i]["Nombre"].ToString());
                lista3.Add(datos.Rows[i]["Precio"].ToString());
                lista2.Add(datos.Rows[i]["Descripcion"].ToString());
            }
            textBoxProducto.AutoCompleteCustomSource = lista;
            textBoxDescripcionProducto.AutoCompleteCustomSource = lista2;
            textBoxPrecioUnitario.AutoCompleteCustomSource = lista3;
        }

        private void groupBoxCarrito_Enter(object sender, EventArgs e)
        {

        }
        private void groupBoxCliente_Enter(object sender, EventArgs e)
        {

        }
        private void groupBoxProductos_Enter(object sender, EventArgs e)
        {

        }

        private void buttonLimpiar_Click(object sender, EventArgs e)
        {
            LimpiarTxt();
        }

        private void LimpiarTxt()
        {
            textBoxIdProducto.Clear();
            textBoxProducto.Clear();
            textBoxCantidadProducto.Clear();
            textBoxDescripcionProducto.Clear();
            textBoxPrecioUnitario.Clear();
            textBoxNombreCliente.Clear();
        }

        //Autocompletar Producto con la informacion del nombre mediante la tecla Enter
        private void textBoxProducto_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                // Aquí llamas al método que ejecuta la consulta a la base de datos
                string connstring = "Server=MARVIN;DataBase= VentasFacturacionPadrino;Integrated Security=true";
                using (SqlConnection cn = new SqlConnection(connstring))
                {
                    cn.Open();

                    string sql = "SELECT * FROM PRODUCTO WHERE Nombre = @Nombre";
                    SqlCommand cmd = new SqlCommand(sql, cn);
                    cmd.Parameters.AddWithValue("@Nombre", textBoxProducto.Text);
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        textBoxDescripcionProducto.Text = Convert.ToString(reader["Descripcion"]);
                        textBoxPrecioUnitario.Text = Convert.ToString(reader["Precio"]);
                        textBoxIdProducto.Text = Convert.ToString(reader["IdProducto"]);

                    }

                }
            }
        }

        //Agregamos un nuevo producto al carrito
        List<float> ListaSumaSubtotalVenta = new List<float>();
        int TotalProductos;

        private void buttonAgregarCarrito_Click(object sender, EventArgs e)
        {
            int cantidad;
            float precioUnitario;

            DataRow row = dt.NewRow();
            row["ID"] = textBoxIdProducto.Text;
            row["Nombre"] = textBoxProducto.Text;
            row["Descripcion"] = textBoxDescripcionProducto.Text;
            row["Cantidad"] = textBoxCantidadProducto.Text;
            row["Precio Unitario"] = textBoxPrecioUnitario.Text;
            if (int.TryParse(textBoxCantidadProducto.Text, out cantidad) && float.TryParse(textBoxPrecioUnitario.Text, out precioUnitario))
            {
                row["Subtotal"] = cantidad * precioUnitario;
            }
            else
            {
                // En este caso, al menos uno de los valores no es numérico, así que no se puede calcular el subtotal
                row["Subtotal"] = 0;
            }
            //row["Subtotal"] = int.Parse(textBoxCantidadProducto.Text) * int.Parse(textBoxPrecioUnitario.Text);
            dt.Rows.Add(row);

            ListaSumaSubtotalVenta.Add(int.Parse(textBoxCantidadProducto.Text) * float.Parse(textBoxPrecioUnitario.Text));
            labelMontoTotal.Text = ListaSumaSubtotalVenta.Sum().ToString();
            TotalProductos += 1;
            labelTotalProductos.Text = TotalProductos.ToString();
        }
        void LlenarCarritoColumnas()
        {
            dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("Nombre");
            dt.Columns.Add("Descripcion");
            dt.Columns.Add("Cantidad");
            dt.Columns.Add("Precio Unitario");
            dt.Columns.Add("Subtotal");
            dgv_carrito.DataSource = dt;
        }
        private void buttonBorrarFactura_Click(object sender, EventArgs e)
        {
            dgv_carrito.DataSource = null;
            LlenarCarritoColumnas();

            labelMontoTotal.Text = "0";
        }

        private void buttonQuitarCarrito_Click(object sender, EventArgs e)
        {
            if (dgv_carrito.Rows.Count > 0)
            {
                int lastRowIndex = dgv_carrito.Rows.Count - 1;
                dgv_carrito.Rows.RemoveAt(lastRowIndex);

                // Eliminar también el subtotal de la lista y actualizar el monto total
                if (ListaSumaSubtotalVenta.Count > 0)
                {
                    ListaSumaSubtotalVenta.RemoveAt(lastRowIndex);
                    labelMontoTotal.Text = ListaSumaSubtotalVenta.Sum().ToString();
                    TotalProductos -= 1;
                    labelTotalProductos.Text = TotalProductos.ToString();
                }
            }
        }

        private void buttonImprimirFactura_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿Desea realizar esta factura ?", "Realizar factura", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                AgregarNuevaVenta();
                AgregarNuevaVentaDetalle();

                if (MessageBox.Show("¿Desea imprimir esta factura ?", "Imprimir Factura", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    ImprimirFac();
                }
                NuevaFactura();
            }
        }

        private void ImprimirFac()
        {
            FormReporteFacturacionProductos frm = new FormReporteFacturacionProductos();
            frm.ShowDialog();
        }

        private void NuevaFactura()
        {

            LimpiarTxt();

            this.dgv_carrito.DataSource = null;
            this.dgv_carrito.Rows.Clear();
            LlenarCarritoColumnas();
            ListaSumaSubtotalVenta.Clear();
            SiguienteIdFactura();
            TotalProductos = 0;
            labelTotalProductos.Text = "0";
            labelMontoTotal.Text = "0";
        }
    }
}
