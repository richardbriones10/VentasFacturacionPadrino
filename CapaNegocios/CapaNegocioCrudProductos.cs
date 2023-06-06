using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaDatos;
using CapaEntidad;

namespace CapaNegocios
{
    public  class CapaNegocioCrudProductos
    {
        CapaDatosCrudProductos CD_Productos = new CapaDatosCrudProductos();

        public void llenarGrid(ref DataGridView dgv)
        {
            DataView dv = CD_Productos.GetProductos();

            dgv.DataSource = dv.Table.DefaultView;
            
        }

        public bool validarDatos(Producto producto)
        {
            bool validado = true;

            if (producto.Nombre == string.Empty)
            {
                MessageBox.Show("El nombre es obligatorio");
                validado = false;
            }
            

            return validado;
        }

    }
}
