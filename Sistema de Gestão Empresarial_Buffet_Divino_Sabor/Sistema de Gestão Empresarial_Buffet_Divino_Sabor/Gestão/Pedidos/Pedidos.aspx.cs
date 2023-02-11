using MySqlConnector;
using Serilog;
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
            string query = "SELECT pedidos.id, pedidos.data, cliente.nome, menu.entrada, menu.salada, menu.jantar, menu.sobremesa, menu.bebida FROM pedidos INNER JOIN cliente ON pedidos.id_cliente = cliente.id INNER JOIN menu ON pedidos.id_menu = menu.id WHERE estado IS NULL";
            using (MySqlCommand command = new MySqlCommand(query, conn))
            {
                using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))
                {
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    repeaterOrders.DataSource = dt;
                    repeaterOrders.DataBind();
                }
                conn.Close();

                conn.Open();
                string query1 = "SELECT pedidos.id, pedidos.data, cliente.nome, menu.entrada, menu.salada, menu.jantar, menu.sobremesa, menu.bebida FROM pedidos INNER JOIN cliente ON pedidos.id_cliente = cliente.id INNER JOIN menu ON pedidos.id_menu = menu.id WHERE estado = 1";
                using (MySqlCommand command1 = new MySqlCommand(query1, conn))
                using (MySqlDataAdapter adapter = new MySqlDataAdapter(command1))
                {
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    repeaterOrdersAcepted.DataSource = dt;
                    repeaterOrdersAcepted.DataBind();
                }
                conn.Close();

                conn.Open();
                string query2 = "SELECT pedidos.id, pedidos.data, cliente.nome, menu.entrada, menu.salada, menu.jantar, menu.sobremesa, menu.bebida FROM pedidos INNER JOIN cliente ON pedidos.id_cliente = cliente.id INNER JOIN menu ON pedidos.id_menu = menu.id WHERE estado = 0";
                using (MySqlCommand command2 = new MySqlCommand(query2, conn))
                using (MySqlDataAdapter adapter = new MySqlDataAdapter(command2))
                {
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    repeaterFinishedOrders.DataSource = dt;
                    repeaterFinishedOrders.DataBind();
                }

            }
        }

        protected void btnAcept_Click(object sender, EventArgs e)
        {
            var pedido = new Classe.pedidos();

            Button btnAcept = (Button)sender;
            pedido.id = int.Parse(btnAcept.CommandArgument);
            try
            {
                Log.Information("Entrou");
                var pedidos = new Negocio.pedidos();
                pedidos.Acept(pedido);
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception err)
            {

                Log.Error("Problema localizado: " + err.Message);
            }

            finally
            {
                Log.Warning("Acabou");

            }

        }

        protected void btnFinish_Click(object sender, EventArgs e)
        {
            var pedido = new Classe.pedidos();

            Button btnFinish = (Button)sender;
            pedido.id = int.Parse(btnFinish.CommandArgument);

            var pedidos = new Negocio.pedidos();
            pedidos.Finish(pedido);
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}