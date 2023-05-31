using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocios
{
    public class CapaNegocioProovedor
    {
        private ProvedorDataController objPDC = new ProvedorDataController();

        public void insertProovedor(string codigo, string empresa, string direccion)
        {
            try
            {
                Boolean proovedorExiste = objPDC.proovedorExist(codigo);

                if (!proovedorExiste)
                {
                    objPDC.setProovedorValues(codigo, empresa, direccion);

                    objPDC.InsertarProovedor();
                }
                else
                {
                    Console.WriteLine("El proovedor ya existe");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        
    }
}
