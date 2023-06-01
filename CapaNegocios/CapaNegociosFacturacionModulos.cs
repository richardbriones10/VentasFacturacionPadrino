using CapaDatos;


namespace CapaNegocios
{
    public class CapaNegociosFacturacionModulos
    {
        private CapaDatosFacturacionModulos objeto = new CapaDatosFacturacionModulos();
        public void InsertarFacturaModulos
         (
            int IdProveedor,
            int IdModulo,
            int NumeroDeMeses
        )
        {
            objeto.InsertarFacturaModulos(IdProveedor,IdModulo, NumeroDeMeses);
        }

    }
}
