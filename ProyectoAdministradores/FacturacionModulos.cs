using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace ProyectoAdministradores
{
    public partial class FacturacionModulos : Form
    {

        // Establecer la cadena de conexión a la base de datos
        public FacturacionModulos()
        {
            InitializeComponent();
            string connectionString = "Server=RICHARD-PC;DataBase=VentasFacturacionPadrino;Integrated Security=true";

            string query = "SELECT IdProveedor, Empresa FROM Proveedor";

            // Crear una conexión a la base de datos
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
            }
        }

        private void comboBoxProveedores_SelectedIndexChanged(object sender, System.EventArgs e)
        {

        }
    }
}
