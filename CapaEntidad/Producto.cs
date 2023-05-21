using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    internal class Producto
    {
        public int IdProducto { get; set; }

        public string Nombre { get; set; }

        public int StockActual { get; set; }
        public double Precio { get; set; }

        public string Descripcion { get; set; }

        public int Proveedor_FK_Codigo { get; set; }

        public int Categoria_FK_Codigo { get; set; }

    }
}
