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
        //private void openChildFormInPanel(Form childForm)
        //{

        //    childForm.TopLevel = false;
        //    childForm.FormBorderStyle = FormBorderStyle.None;
        //    childForm.Dock = DockStyle.Fill;
        //    panelProductos.Controls.Add(childForm);
        //    panelProductos.Tag = childForm;
        //    childForm.BringToFront();
        //    childForm.Show();
        //}

        private void btnCrearProducto_Click(object sender, System.EventArgs e)
        {
            Form Crear = new CreateProducto();

            Crear.ShowDialog(this);
        }
    }
}
