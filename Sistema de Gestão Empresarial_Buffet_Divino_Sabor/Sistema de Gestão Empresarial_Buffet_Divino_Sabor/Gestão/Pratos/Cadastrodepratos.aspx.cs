using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Menu
{
    public partial class Cadastrodepratos : System.Web.UI.Page
    {

        private MySqlConnection conexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
            //if (Session["empresaID"] == null || string.IsNullOrEmpty(Session["empresaID"].ToString()))
            //{
            //    // redireciona para a página de login
            //    Response.Redirect("~/Login/Login");
            //}

            //if (!IsPostBack)
            //{
            //    //lblValorT.Text = "0,00";
            //}
        }

        //protected void Page_Load(object sender, EventArgs e)
        //{

        //}

        protected void btnCadastrarPrato_Click(object sender, EventArgs e)
        {


        }

        protected void ddlescolhas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }



}