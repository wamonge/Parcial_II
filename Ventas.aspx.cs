using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial_II
{
    public partial class Ventas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();
        }
        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["Base_VentasConnectionString4"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select ventas.codigo_venta, cajeros.nombre_cajero, cajeros.apellidos, productos.nombre_producto, productos.precio, " +
                    "maquinas_registradoras.piso from ventas inner join cajeros on ventas.codigo_cajero = cajeros.codigo_cajero inner join productos on ventas.codigo_producto = productos.codigo_producto " +
                    "inner join maquinas_registradoras on ventas.codigo_maquina = maquinas_registradoras.codigo_maquina"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }
        protected void salvar()
        {
            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["Base_VentasConnectionString4"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand(" INSERT INTO ventas(codigo_cajero, codigo_producto, codigo_maquina) VALUES(" + Datos.codigo_cajero + ", " + Datos.codigo_producto + ", " + Datos.codigo_maquina + ")", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception)
            {

                throw;
            }
            LlenarGrid();

        }

        protected void BAgregar_Click(object sender, EventArgs e)
        {
            Datos.codigo_cajero = int.Parse(DCajeros.SelectedValue);
            Datos.codigo_producto = int.Parse(DProductos.SelectedValue);
            Datos.codigo_maquina = int.Parse(DMaquinas.SelectedValue);
            salvar();
        }
    }
}
    