using System;
using System.Windows.Forms;

namespace ProyectoAdministradores
{
    public partial class UI : Form
    {
        public UI()
        {
            InitializeComponent();
            hideSubMenu();
        }

        private void hideSubMenu()
        {
            panelSubMenuFacturacion.Visible = false;
            panelSubMenuControl.Visible = false;
            panelSubMenuRegistros.Visible = false;
        }
        private void showSubMenu(Panel subMenu)
        {
            if (subMenu.Visible == false)
            {
                hideSubMenu();
                subMenu.Visible = true;
            }
            else
                subMenu.Visible = false;
        }

        private void btnFacturacion_Click(object sender, EventArgs e)
        {
            showSubMenu(panelSubMenuFacturacion);
        }

        private void btnControl_Click(object sender, EventArgs e)
        {
            showSubMenu(panelSubMenuControl);
        }

        private void btnRegistros_Click(object sender, EventArgs e)
        {
            showSubMenu(panelSubMenuRegistros);
        }
        private Form activeForm = null;
        private void openChildFormInPanel(Form childForm)
        {
            if (activeForm != null)
                activeForm.Close();
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            panelChildForm.Controls.Add(childForm);
            panelChildForm.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }

        private void btnFacturacionProductos_Click(object sender, EventArgs e)
        {
            openChildFormInPanel(new FacturacionProductos());
        }

        private void btnDashboard_Click(object sender, EventArgs e)
        {
            openChildFormInPanel(new Dashboard());
        }
    }
}
