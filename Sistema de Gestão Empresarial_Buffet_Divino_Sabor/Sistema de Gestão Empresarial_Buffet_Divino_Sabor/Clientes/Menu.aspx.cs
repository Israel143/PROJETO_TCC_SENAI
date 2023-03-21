//using MySqlConnector;
//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Clientes
//{
//    public partial class Menu : System.Web.UI.Page
//    {


//        private MySqlConnection conexao;
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            conexao = new MySqlConnection(SiteMaster.ConnectionString);

//            if (!IsPostBack)
//            {

//            }
//        }

//        protected void ddlMenu_SelectedIndexChanged(object sender, EventArgs e)
//        {

<<<<<<< HEAD
//            var tipo = new Classe.escolha();
//            tipo.categoria = ddlMenu.SelectedValue;
//            RepeatPratos.DataSource = new Negocio.escolha().ReadPratos(tipo);
//            RepeatPratos.DataBind();
=======
            var tipo = new Classe.escolha();
            tipo.categoria = ddlMenu.SelectedValue;
            RepeatPratos.DataSource = new Negocio.escolha().ReadPratos(tipo);
            RepeatPratos.DataBind();


        }
>>>>>>> 99fd60d9383dfd79cd7b29d77045156a5b7b38fc


//            conexao.Open();
//            var reader = new MySqlCommand("SELECT " + ddlMenu.SelectedValue + ",id FROM menu", conexao).ExecuteReader();

//            while (reader.Read())
//            {
//                var novo_menu = new Classe.menu();
//                novo_menu.id = reader.GetInt32("id");
//                novo_menu.escolha = reader.GetString(0);
//                Lista.Add(novo_menu);
//            }

//            Session["menu"] = Lista;
//            GridView2.DataSource = Lista;
//            GridView2.DataBind();
//            conexao.Close();


//        }


//        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
//        {
//            var lista = (List<Classe.menu>)Session["menu"];
//            var index = Convert.ToInt32(e.CommandArgument);

//            SiteMaster.ExibirAlert(this, lista[index].escolha);
//        }

//        protected void BtnSelect_Click(object sender, EventArgs e)
//        {
//            var pratoId = new Classe.escolha();
//            pratoId.id = int.Parse(((Button)sender).CommandArgument);
//            var dt = new Negocio.escolha().ReadPratosSelecionados(pratoId);

//            var categoria = ddlMenu.SelectedValue;
//            var categoriaSelecionada = Session[categoria] as DataTable;

//            if (categoriaSelecionada != null)
//            {
//                // Já existe uma escolha para a categoria atual
//                SiteMaster.ExibirAlert(this, $"Você já selecionou um prato nessa categoria.");
//                return;
//            }
//            Session[categoria] = dt;

//            // Desativar os botões de escolha para esta categoria
//            foreach (RepeaterItem item in RepeatPratos.Items)
//            {
//                var button = item.FindControl("BtnSelect") as Button;
//                var prato = new Negocio.escolha().ReadPratosSelecionados(pratoId).Rows[0];
//                var categoriaPrato = prato["categoria"].ToString();
//                if (categoriaPrato == categoria)
//                {
//                    button.Enabled = false;
//                }
//            }

//            // Adicionar a escolha à sessão e atualizar o contador da categoria
//            // criar uma nova tabela clonando a estrutura da tabela original (dt)
//            var dtSession = dt.Clone();
//            // adicionar a nova linha na tabela clonada
//            dtSession.Rows.Add(dt.Rows[0].ItemArray);
//            // adicionar a tabela clonada na session
//            if (Session["CarrinhoDeCompras"] == null)
//                Session["CarrinhoDeCompras"] = dtSession;
//            else
//            {
//                var dtSessionAntiga = (DataTable)Session["CarrinhoDeCompras"];
//                dtSessionAntiga.Merge(dtSession);
//                Session["CarrinhoDeCompras"] = dtSessionAntiga;
//            }

//            // Atualizar o Repeater com a sessão
//            RepeatPratoSelected.DataSource = Session["CarrinhoDeCompras"];
//            RepeatPratoSelected.DataBind();
//        }

//        protected void select_Click(object sender, EventArgs e)
//        {
        
//        }
//    }
//}
