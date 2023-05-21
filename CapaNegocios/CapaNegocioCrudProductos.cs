using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaDatos;
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

    }
}
