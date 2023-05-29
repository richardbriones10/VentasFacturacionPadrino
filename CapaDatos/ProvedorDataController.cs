using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.SymbolStore;

namespace CapaDatos
{
    public class ProvedorDataController
    {
        private CapaDatosConexion conexion = new CapaDatosConexion();
        SqlCommand comando = new SqlCommand();

        private string CodigoProovedor;
        private string NombreEmpresa;
        private string direccion;
        private short EstadoProovedor;
        private int IdProovedor;


        protected void setProovedorValues(string codigo, string empresa, string direccion)
        {
            this.CodigoProovedor = codigo;
            this.NombreEmpresa = empresa;
            this.direccion = direccion;
            this.EstadoProovedor = 1;
        }

        protected void setProovedorValues(int id)
        {
            this.IdProovedor = id;
        }

        public string getCodigoProovedor()
        {
            return this.CodigoProovedor;
        }

        public string getEmpresa()
        {
            return this.NombreEmpresa;
        }

        public string getDireccion()
        {
            return this.direccion;
        }

        public short getEstado()
        {
            return this.EstadoProovedor;
        }

        public int getIdProovedor()
        {
            return this.IdProovedor;
        }
        
        protected void InsertarProovedor()
        {
            conexion.CerrarConexion();
            conexion.AbrirConexion();
            comando.CommandText = "InsertarProovedor";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@CodigoProveedor", getCodigoProovedor());
            comando.Parameters.AddWithValue("@Empresa", getEmpresa());
            comando.Parameters.AddWithValue("@Direccion", getDireccion());
            comando.Parameters.AddWithValue("@Estado", getEstado());
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }

        protected void ActualizarProovedor()
        {
            conexion.CerrarConexion();
            conexion.AbrirConexion();
            comando.CommandText = "ActualizarProovedor";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@IdProovedor", getIdProovedor());
            comando.Parameters.AddWithValue("@CodigoProveedor", getCodigoProovedor());
            comando.Parameters.AddWithValue("@Empresa", getEmpresa());
            comando.Parameters.AddWithValue("@Direccion", getDireccion());
            comando.Parameters.AddWithValue("@Estado", getEstado());
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }

        protected void EliminarProovedor()
        {
            conexion.CerrarConexion();
            conexion.AbrirConexion();
            comando.CommandText = "EliminarProveedor";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@IdProovedor", getIdProovedor());
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
    }
}
