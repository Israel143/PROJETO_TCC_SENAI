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
           
            var Lista = new List<Classe.menu>();

            conexao.Open();
            var reader = new MySqlCommand("SELECT "+ ddlMenu.SelectedValue + ",id FROM menu", conexao).ExecuteReader();

            while (reader.Read())
            {
                var novo_menu = new Classe.menu();
                novo_menu.id = reader.GetInt32("id");
                novo_menu.escolha = reader.GetString(0);
                //novo_menu.valor = reader.GetBoolean(0);
                Lista.Add(novo_menu);
            }

            Session["menu"] = Lista;
                GridView2.DataSource = Lista;
                GridView2.DataBind();
            conexao.Close();

        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            var lista = (List<Classe.menu>)Session["menu"];
            var index = Convert.ToInt32(e.CommandArgument);

            SiteMaster.ExibirAlert(this, lista[index].escolha);
        }
    }
}
