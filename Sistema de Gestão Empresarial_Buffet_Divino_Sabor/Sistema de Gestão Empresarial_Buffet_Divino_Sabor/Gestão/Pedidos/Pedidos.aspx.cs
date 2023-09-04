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
            if (Session["empresaID"] == null || string.IsNullOrEmpty(Session["empresaID"].ToString()))
            {
                // redireciona para a página de login
                Response.Redirect("~/Login/Login");
            }

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
            Session["pedidoID"] = int.Parse(btnAcept.CommandArgument);

            Response.Redirect($"../Contratos/ConfirmaContrato.aspx");
        }

        protected void btnFinish_Click(object sender, EventArgs e)
        {

            Button btnFinish = (Button)sender;
            //Session["pedidoID"] = int.Parse(btnFinish.CommandArgument);            
            //Response.Redirect($"../Contratos/ConfirmaContrato.aspx?");

            var pedido = new Classe.pedidos();
            pedido.id = int.Parse(btnFinish.CommandArgument);
            var finaliza = new Negocio.pedidos().Finish(pedido);
            
        }

        protected void btnCon_Click(object sender, EventArgs e)
        {
            Button btnCon = (Button)sender;


        }
    }
}