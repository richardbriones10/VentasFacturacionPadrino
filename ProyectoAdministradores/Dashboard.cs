using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

namespace ProyectoAdministradores
{
    public partial class Dashboard : Form
    {

        SqlConnection Conexion = new SqlConnection("Server=RICHARD-PC;DataBase= VentasFacturacionPadrino;Integrated Security=true");


        public Dashboard()
        {
            InitializeComponent();
        }

        private void Dashboard_Load(object sender, System.EventArgs e)
        {


            GraficoProductosMasVendido();
            CargarDatosVentasTotalMes();
            CargarDatosTotalDinero();
            CargarDatosCantidadProductosVendidos();
            CargarDatosModulosActivos();
            GraficoTotalDeIngresosBrutosMes();
            DgvProductosBajosDeStock();
            CargarTotalProductos();
            CargarTotalProveedores();
            CargarTotalClientes();


        }

        private void CargarTotalClientes()
        {
            Conexion.Open();
            SqlCommand cmd = new SqlCommand("SP_TotalClientes", Conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                lblNumCustomers.Text = ds.Rows[0]["TotalClientes"].ToString();
            }
            Conexion.Close();
        }

        private void CargarTotalProveedores()
        {
            Conexion.Open();
            SqlCommand cmd = new SqlCommand("SP_TotalProveedores", Conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                lblNumSuppliers.Text = ds.Rows[0]["TotalProveedores"].ToString();
            }
            Conexion.Close();
        }

        private void CargarTotalProductos()
        {
            Conexion.Open();
            SqlCommand cmd = new SqlCommand("SP_TotalProductos", Conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                lblNumProducts.Text = ds.Rows[0]["TotalProductos"].ToString();
            }
            Conexion.Close();
        }

        private void DgvProductosBajosDeStock()
        {
            Conexion.Open();

            // Crear un objeto SqlCommand para llamar al procedimiento almacenado
            SqlCommand command = new SqlCommand("SP_ProductosStockBajo", Conexion);
            command.CommandType = CommandType.StoredProcedure;
            // Crear un objeto SqlDataAdapter para llenar un DataTable con los resultados del procedimiento almacenado
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            // Asignar el DataTable al DataGridView
            dgvUnderstock.DataSource = dataTable;

            // Cerrar la conexión
            Conexion.Close();
        }

        private void CargarDatosModulosActivos()
        {
            Conexion.Open();
            SqlCommand cmd = new SqlCommand("SP_NumModulosActivos", Conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                labelModulosActivos.Text = ds.Rows[0]["NumModulosActivos"].ToString();
            }
            Conexion.Close();
        }

        private void CargarDatosCantidadProductosVendidos()
        {
            Conexion.Open();
            SqlCommand cmd = new SqlCommand("SP_CantProductosVendidosMesActual", Conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                labelProductosVendidos.Text = ds.Rows[0]["CantProductosVendidos"].ToString();
            }
            Conexion.Close();
        }

        private void CargarDatosTotalDinero()
        {
            Conexion.Open();
            SqlCommand cmd = new SqlCommand("SP_TotalDineroMesActual", Conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                labelTotalDineroEntrante.Text = float.Parse(ds.Rows[0]["Total Dinero"].ToString()).ToString();
            }
            Conexion.Close();
        }

        private void CargarDatosVentasTotalMes()
        {
            Conexion.Open();
            SqlCommand cmd = new SqlCommand("SP_TotalVentasMesActual", Conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                labelTotalVentasMes.Text = ds.Rows[0]["TotalVentas"].ToString();
            }
            Conexion.Close();
        }

        private void GraficoProductosMasVendido()
        {
            Conexion.Open();
            SqlCommand cmd = new SqlCommand("MostrarProductosMasVendidos", Conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            // Configuración del gráfico
            chartProductosMasVendidos.Series.Clear();
            chartProductosMasVendidos.Series.Add("Productos");
            chartProductosMasVendidos.Series["Productos"].ChartType = SeriesChartType.Doughnut;
            chartProductosMasVendidos.Series["Productos"].IsValueShownAsLabel = true;
            chartProductosMasVendidos.ChartAreas[0].AxisX.Interval = 1;

            // Agregar los datos al gráfico
            foreach (DataRow row in dt.Rows)
            {
                chartProductosMasVendidos.Series["Productos"].Points.AddXY(row["Nombre Producto"].ToString(), row["Cantidad Vendida"].ToString());
            }
            Conexion.Close();
        }

        private void GraficoTotalDeIngresosBrutosMes()
        {
            Conexion.Open();
            SqlCommand cmd = new SqlCommand("SP_IngresosBrutosPorMes", Conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            chartIngresosBrutos.Series.Clear();
            chartIngresosBrutos.Series.Add("Ingresos");
            chartIngresosBrutos.Series["Ingresos"].ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Column;
            chartIngresosBrutos.Series["Ingresos"].XValueMember = "Mes";
            chartIngresosBrutos.Series["Ingresos"].YValueMembers = "Ingresos";
            chartIngresosBrutos.DataSource = dt;

            // Mostrar el gráfico

            Conexion.Close();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel5_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel4_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
