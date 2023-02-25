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

                //Carrega os pedidos novos
                repeaterOrders.DataSource = new Negocio.pedidos().ReadNovos();
                repeaterOrders.DataBind();

                //Carrega os pedidos em andamento
                repeaterOrdersAcepted.DataSource = new Negocio.pedidos().ReadAndamento();
                repeaterOrdersAcepted.DataBind();

                //Carrega os pedidos finalizados
                repeaterFinishedOrders.DataSource = new Negocio.pedidos().ReadFinalizados();
                repeaterFinishedOrders.DataBind();

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