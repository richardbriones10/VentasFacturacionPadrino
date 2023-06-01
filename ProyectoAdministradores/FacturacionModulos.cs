using CapaNegocios;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace ProyectoAdministradores
{
    public partial class FacturacionModulos : Form
    {
        private SqlConnection Conexion = new SqlConnection("Server=RICHARD-PC;DataBase=VentasFacturacionPadrino;Integrated Security=true");

        CapaNegociosFacturacionModulos objetoCN = new CapaNegociosFacturacionModulos();

        public FacturacionModulos()
        {
            InitializeComponent();
            string connectionString = "Server=RICHARD-PC;DataBase=VentasFacturacionPadrino;Integrated Security=true";

            string query1 = "SELECT IdProveedor, Empresa FROM Proveedor";
            string query2 = "SELECT IdModulo FROM Modulo";

            // Crear una conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Crear un adaptador de datos para ejecutar la consulta y llenar un DataSet
                SqlDataAdapter adapter = new SqlDataAdapter(query1, connection);
                DataSet dataSet = new DataSet();

                // Abrir la conexión y llenar el DataSet con los datos del proveedor
                connection.Open();
                adapter.Fill(dataSet, "Proveedor");

                // Asignar el DataTable como origen de datos para el ComboBox
                comboBoxProveedores.DataSource = dataSet.Tables["Proveedor"];
                comboBoxProveedores.DisplayMember = "Empresa"; // Mostrar el nombre de la empresa en el ComboBox
            }
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Crear un adaptador de datos para ejecutar la consulta y llenar un DataSet
                SqlDataAdapter adapter = new SqlDataAdapter(query2, connection);
                DataSet dataSet = new DataSet();

                // Abrir la conexión y llenar el DataSet con los datos del proveedor
                connection.Open();
                adapter.Fill(dataSet, "Modulo");

                // Asignar el DataTable como origen de datos para el ComboBox
                comboBoxModulo.DataSource = dataSet.Tables["Modulo"];
                comboBoxModulo.DisplayMember = "IdModulo"; // Mostrar el nombre de la empresa en el ComboBox
            }
        }

        private void FacturacionModulos_Load(object sender, System.EventArgs e)
        {
            comboBoxModulo.SelectedIndex = 0;

            SqlCommand cmd = new SqlCommand("SiguienteFacturaModulo", Conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                labelFactura.Text = ds.Rows[0]["SiguienteFactura"].ToString();
            }

        }


        void AgregarFacturaModulo()
        {
            DataRowView selectedRow = (DataRowView)comboBoxProveedores.SelectedItem;

            // Obtener el valor en texto de la propiedad deseada del objeto DataRowView
            string ProveedorSeleccionado = selectedRow["IdProveedor"].ToString();  // Reemplaza "IdProveedor" con el nombre de la columna que deseas obtener


            DataRowView selectedRowModulo = (DataRowView)comboBoxModulo.SelectedItem;

            // Obtener el valor en texto de la propiedad deseada del objeto DataRowView
            string moduloSeleccionado = selectedRowModulo["IdModulo"].ToString();  // Reemplaza "IdModulo" con el nombre de la columna que deseas obtener


            string NumeroDeMeses = textBoxMesesAFacturar.Text.ToString();

     
            int IdProveedorPasar = Convert.ToInt32(ProveedorSeleccionado);

            int IdModuloPasar = Convert.ToInt32(moduloSeleccionado);

            int NumeroDeMesesPasar = Convert.ToInt32(NumeroDeMeses);

            objetoCN.InsertarFacturaModulos(IdProveedorPasar, IdModuloPasar, NumeroDeMesesPasar);
        }
        
        void ImprimirFac()
        {
            RPT_FacturacionModulos frm = new RPT_FacturacionModulos();
            frm.ShowDialog();
        }

        void NuevaFactura()
        {
            comboBoxProveedores.SelectedIndex = 0;
            comboBoxModulo.SelectedIndex = 0;
            textBoxMesesAFacturar.Clear();
        }

        private void buttonImprimirFactura_Click(object sender, System.EventArgs e)
        {
            if (MessageBox.Show("¿Desea realizar esta factura ?", "Realizar factura", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                AgregarFacturaModulo();

                if (MessageBox.Show("¿Desea imprimir esta factura ?", "Imprimir Factura", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    ImprimirFac();
                }
                NuevaFactura();
            }
        }

        private void comboBoxModulo_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            // Obtener el valor seleccionado del ComboBox

            DataRowView selectedRowModulo = (DataRowView)comboBoxModulo.SelectedItem;

            // Obtener el valor en texto de la propiedad deseada del objeto DataRowView
            string moduloSeleccionado = selectedRowModulo["IdModulo"].ToString();  // Reemplaza "IdModulo" con el nombre de la columna que deseas obtener
            int PasarModulo = Convert.ToInt32(moduloSeleccionado);

            // Realizar la consulta SQL para obtener el valor del módulo desde la base de datos
            string connectionString = "Server=RICHARD-PC;DataBase=VentasFacturacionPadrino;Integrated Security=true";
            string query = "SELECT Precio FROM Modulo WHERE IdModulo = @IdModulo";  // Ajusta la consulta según tu estructura de tabla y columna

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@IdModulo", PasarModulo);

                    object result = command.ExecuteScalar();

                    if (result != null)
                    {
                        // El valor del módulo se obtiene desde la base de datos
                        float valorModulo = Convert.ToSingle(result);

                        // Asignar el valor del módulo al Label
                        labelMontoTotal.Text = valorModulo.ToString();
                    }
                    else
                    {
                        // El módulo no fue encontrado en la base de datos
                        labelMontoTotal.Text = "Módulo no encontrado";
                    }
                }
            }

        }

        private void textBoxMesesAFacturar_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Enter)
            {
                // Obtener el valor ingresado en el TextBox
                string textoValor = textBoxMesesAFacturar.Text;

                // Convertir el valor ingresado a un número decimal
                if (decimal.TryParse(textoValor, out decimal valor))
                {
                    // Obtener el valor presente en el Label
                    string textoLabel = labelMontoTotal.Text;

                    // Convertir el valor del Label a un número decimal
                    if (decimal.TryParse(textoLabel, out decimal valorLabel))
                    {
                        // Realizar la multiplicación
                        decimal resultado = valor * valorLabel;

                        // Actualizar el contenido del Label con el resultado de la multiplicación
                        labelMontoTotal.Text = resultado.ToString();
                    }
                    else
                    {
                        // El valor del Label no es un número decimal válido
                        // Manejar el error o mostrar un mensaje de error
                        labelMontoTotal.Text = "Valor del Label inválido";
                    }
                }
                else
                {
                    // El valor ingresado no es un número decimal válido
                    // Manejar el error o mostrar un mensaje de error
                    labelMontoTotal.Text = "Valor ingresado inválido";
                }
            }
        }

        private void buttonBorrarFactura_Click(object sender, EventArgs e)
        {
            comboBoxProveedores.SelectedIndex = 0;
            comboBoxModulo.SelectedIndex = 0;
            textBoxMesesAFacturar.Clear();
        }
    }
}
