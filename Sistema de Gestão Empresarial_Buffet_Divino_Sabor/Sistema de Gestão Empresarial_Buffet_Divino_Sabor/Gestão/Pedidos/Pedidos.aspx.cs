using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Pedidos
{
    public partial class Pedidos : System.Web.UI.Page
    {
        private MySqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new MySqlConnection(SiteMaster.ConnectionString);
            if (IsPostBack)
            {


            }

            conn.Open();
            string query = "SELECT pedidos.Data, clientes.Nome FROM pedidos INNER JOIN clientes ON pedidos.IdCliente = clientes.Id";
            using (MySqlCommand command = new MySqlCommand(query, conn))
            {
                using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))
                {
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    repeaterOrders.DataSource = dt;
                    repeaterOrders.DataBind();
                }
            }
        }
    }
}