using CapaNegocios;
using System.Windows.Forms;

namespace ProyectoAdministradores
{
    public partial class ControlProductos : Form
    {
        public ControlProductos()
        {
            InitializeComponent();
        }

        CapaNegocioCrudProductos CN_Productos = new CapaNegocioCrudProductos();
        private void ControlProductos_Load(object sender, System.EventArgs e)
        {
            CN_Productos.llenarGrid(ref dgvProductos);
            
        }
    }
}
