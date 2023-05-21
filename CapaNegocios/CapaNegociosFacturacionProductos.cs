using CapaDatos;

namespace CapaNegocios
{
    public class CapaNegociosFacturacionProductos
    {
        private CapaDatosFacturacionProductos objetoCD = new CapaDatosFacturacionProductos();
        public void InsertarFacturaProductos
        (
            int TotalProductos,
            float MontoTotal,
            string NombreCliente
        )
        {
            objetoCD.InsertarFacturaProductos(TotalProductos, MontoTotal, NombreCliente);
        }
        public void InsertarFacturaProductoDetalle
        (
           int ProductoId,
           int CantidadProducto,
           float Subtotal,
           int NumeroFactura
        )
        {
            objetoCD.InsertarFacturaProductoDetalle(ProductoId, CantidadProducto, Subtotal, NumeroFactura);
        }
    }
}
