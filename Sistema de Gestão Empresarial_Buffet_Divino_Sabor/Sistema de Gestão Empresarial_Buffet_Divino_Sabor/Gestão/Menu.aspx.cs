using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão
{
    public partial class Menu : System.Web.UI.Page
    {
        private MySqlConnection conexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);

            if (IsPostBack)
            {


            }
        }

        protected void ddlMenu_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMenu1.Text = "";
        }

        protected void Btnpesquisar_Click(object sender, EventArgs e)
        {

        }
    }
}