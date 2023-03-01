using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Caixa.Entrada
{
    public partial class MovEntrada : System.Web.UI.Page
    {
        private MySqlConnection conexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
            if (!IsPostBack)
            {
                var Produtos = new Negocio.Caixa();
                List<string> nomesProdutos = Produtos.BuscaDDL();

                foreach (string nomeProduto in nomesProdutos)
                {
                    list_Produto.Items.Add(nomeProduto);
                }
            }
        }

        protected void btn_faturar_Click(object sender, EventArgs e)
        {
            int Qtd = Convert.ToInt32(txt_qtd.Text);
            var CaixaIn = new Classe.Caixa();
            //PEGAR ID DO PRODUTO
            list_Produto.DataValueField = "id";
            var Produto = int.Parse(list_Produto.SelectedValue);
            //PEGAR INFORMAÇÕES DO ESTOQUE ATRAVÉS DA ID
            var estoque = new Negocio.estoque().Read(Convert.ToString(Produto));
            CaixaIn.valorUni = estoque[0].preco_unidade;

            //PREENCHER VALORES DA CLASSE CAIXA PARA ENTRADA
            CaixaIn.entrada = true;
            CaixaIn.saida = false;
            CaixaIn.data = DateTime.Now;
            CaixaIn.id_produto = Produto;
            CaixaIn.valorT = Qtd * CaixaIn.valorUni;

            //Criar uma nova movimentação de entrada

            var MoveIn = new Negocio.Caixa().CreateIn(CaixaIn);

            if (MoveIn == true)
            {
                SiteMaster.ExibirAlertRedirecionar(this, "Movimento de entrada realizado com sucesso!", "MovEntrada.aspx");
                conexao.Close();
            }

            //ALTERAR ESTOQUE
            //Puxar o método UPDATE do ESTOQUE, usando o id no formato STRING obtido pelo SELECTEDVALUE do DROPDOWNLIST

            var AddEstoque = new Negocio.estoque().Update(Produto);
            if (AddEstoque == true)
            {
                SiteMaster.ExibirAlertRedirecionar(this, "Alteração no estoque realizada com sucesso!", "MovEntrada.aspx");
                conexao.Close();
            }
        }
    }
}