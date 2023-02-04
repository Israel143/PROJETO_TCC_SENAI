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
           
        }

        protected void Btnpesquisar_Click(object sender, EventArgs e)
        {
            if(TxtPesquisar.Text == "")
            {
                SiteMaster.ExibirAlert(this, "É necessário selecionar o menu,digitar o id e apertar pesquisar prato");
                return;
            }

            var Lista = new List<Classe.menu>();

            conexao.Open();
            var reader = new MySqlCommand("SELECT id,entrada,salada,jantar,sobremesa,bebida FROM menu WHERE id= " + TxtPesquisar.Text, conexao).ExecuteReader();


            {

            }
            while (reader.Read())
            {
                var novo_menu = new Classe.menu();
                novo_menu.id = reader.GetInt32("id");
                novo_menu.entrada = reader.GetString("entrada");
                novo_menu.salada = reader.GetString("salada");
                novo_menu.jantar = reader.GetString("jantar");
                novo_menu.sobremesa = reader.GetString("sobremesa");
                novo_menu.bebida = reader.GetString("bebida");
                Lista.Add(novo_menu);
                GridView2.DataSource = Lista;
                GridView2.DataBind();
            }

            conexao.Close();

        }
    }
}
