using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Clientes
{
    public partial class Menu : System.Web.UI.Page
    {


        private MySqlConnection conexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
            if (Session["clienteID"] == null || string.IsNullOrEmpty(Session["clienteID"].ToString()))
            {
                // redireciona para a página de login
                Response.Redirect("PaginaDeLogin.aspx");
            }
    
            if (!IsPostBack)
            {
                lblValorT.Text = "0,00";
            }
        }

        protected void ddlMenu_SelectedIndexChanged(object sender, EventArgs e)
        {

            var tipo = new Classe.escolha();
            tipo.categoria = ddlMenu.SelectedValue;
            RepeatPratos.DataSource = new Negocio.escolha().ReadPratos(tipo);
            RepeatPratos.DataBind();


        }


        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            var lista = (List<Classe.menu>)Session["menu"];
            var index = Convert.ToInt32(e.CommandArgument);

            SiteMaster.ExibirAlert(this, lista[index].escolha);
        }

        protected void BtnSelect_Click(object sender, EventArgs e)
        {
            var pratoId = new Classe.escolha();
            pratoId.id = int.Parse(((Button)sender).CommandArgument);
            var dt = new Negocio.escolha().ReadPratosSelecionados(pratoId);

            var categoria = ddlMenu.SelectedValue;
            var categoriaSelecionada = Session[categoria] as DataTable;

            if (categoriaSelecionada != null)
            {
                // Já existe uma escolha para a categoria atual
                SiteMaster.ExibirAlert(this, $"Você já selecionou um prato nessa categoria.");
                return;
            }
            Session[categoria] = dt;

            // Desativar os botões de escolha para esta categoria
            foreach (RepeaterItem item in RepeatPratos.Items)
            {
                var button = item.FindControl("BtnSelect") as Button;
                var prato = new Negocio.escolha().ReadPratosSelecionados(pratoId).Rows[0];
                var categoriaPrato = prato["categoria"].ToString();
                if (categoriaPrato == categoria)
                {
                    button.Enabled = false;
                }
            }

            // Adicionar a escolha à sessão e atualizar o contador da categoria
            // criar uma nova tabela clonando a estrutura da tabela original (dt)
            var dtSession = dt.Clone();
            // adicionar a nova linha na tabela clonada
            dtSession.Rows.Add(dt.Rows[0].ItemArray);
            // adicionar a tabela clonada na session
            if (Session["CarrinhoDeCompras"] == null)
                Session["CarrinhoDeCompras"] = dtSession;
            else
            {
                var dtSessionAntiga = (DataTable)Session["CarrinhoDeCompras"];
                dtSessionAntiga.Merge(dtSession);
                Session["CarrinhoDeCompras"] = dtSessionAntiga;
            }

            // Atualizar o Repeater com a sessão
            RepeatPratoSelected.DataSource = Session["CarrinhoDeCompras"];
            RepeatPratoSelected.DataBind();

            // Recuperar o DataTable que representa o carrinho de compras
            var carrinho = Session["CarrinhoDeCompras"] as DataTable;

            if (carrinho != null)
            {
                lblValorT.Text = new Negocio.escolha().SomaTotal(carrinho);
            }
        }

        protected void descartar_Click(object sender, EventArgs e)
        {
            // Recuperar a categoria correspondente ao botão "BtnDescartar"            
            var button = sender as Button;
            var pratoId = new Classe.escolha();
            pratoId.id = int.Parse(button.CommandArgument);
            var prato = new Negocio.escolha().ReadPratosSelecionados(pratoId).Rows[0];
            var categoria = new Negocio.escolha().ReadCategoria(pratoId);

            // Definir a Session[categoria] como null
            Session[categoria] = null;

            // Remover o prato da DataTable do carrinho de compras
            var carrinho = Session["CarrinhoDeCompras"] as DataTable;
            var pratoARemover = carrinho.Rows.Cast<DataRow>().FirstOrDefault(r => r["id"].Equals(prato["id"]));
            if (pratoARemover != null)
            {
                carrinho.Rows.Remove(pratoARemover);
            }

            // Atualizar o Repeater com a sessão
            RepeatPratoSelected.DataSource = Session["CarrinhoDeCompras"];
            RepeatPratoSelected.DataBind();

            // Habilitar os botões de escolha para esta categoria
            foreach (RepeaterItem item in RepeatPratos.Items)
            {
                var buttonCategoria = item.FindControl("LblCategoria") as Label;
                if (buttonCategoria != null && buttonCategoria.Text == categoria)
                {
                    var buttonSelect = item.FindControl("BtnSelect") as Button;
                    buttonSelect.Enabled = true;
                }
            }

            // Recuperar o DataTable que representa o carrinho de compras
            var carrinho1 = Session["CarrinhoDeCompras"] as DataTable;

            if (carrinho != null)
            {
                lblValorT.Text = new Negocio.escolha().SomaTotal(carrinho1);
            }
        }

        protected void BtnFinaliza_Click(object sender, EventArgs e)
        {
            var carrinho = Session["CarrinhoDeCompras"] as DataTable;
            var finalizar = new Negocio.menu1().Create(carrinho, lblValorT.Text);

            /*if (finalizar == true)
            {
                SiteMaster.ExibirAlert(this, "Menu Selecionado com sucesso");
            }*/
        }
    }
}

