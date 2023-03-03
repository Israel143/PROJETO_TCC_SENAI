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
        int Produto;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
            if (!IsPostBack)
            {
                var Produtos = new Negocio.Caixa();
                var p = Produtos.BuscaDDL();

                foreach (var produto in p)
                {
                    list_Produto.Items.Add(new ListItem(produto.nome_produto, produto.id.ToString()));
                }

                //PEGAR ID DO PRODUTO
                list_Produto.DataValueField = "id";
                Produto = int.Parse(list_Produto.SelectedValue);
                //PEGAR INFORMAÇÕES DO ESTOQUE ATRAVÉS DA ID
                var estoque = new Negocio.estoque().Read(Convert.ToString(Produto));
                var itemlista = estoque[0];
                var ValorUnitario = itemlista.preco_unidade;
                txt_valorUni.Text = Convert.ToString(ValorUnitario);
            }
        }

        protected void btn_faturar_Click(object sender, EventArgs e)
        {
            int Qtd = Convert.ToInt32(txt_qtd.Text);
            var CaixaIn = new Classe.Caixa();
            

            //PREENCHER VALORES DA CLASSE CAIXA PARA ENTRADA
            CaixaIn.entrada = true;
            CaixaIn.saida = false;
            CaixaIn.data = DateTime.Now;
            CaixaIn.id_produto = int.Parse(list_Produto.SelectedValue);
            CaixaIn.valorT = Convert.ToDouble(txt_ValorT.Text);

            //Criar uma nova movimentação de entrada

            var MoveIn = new Negocio.Caixa().CreateIn(CaixaIn);

            if (MoveIn == true)
            {
                SiteMaster.ExibirAlertRedirecionar(this, "Movimento de entrada realizado com sucesso!", "MovEntrada.aspx");
                conexao.Close();
            }

            //ALTERAR ESTOQUE
            //Puxar o método UPDATE do ESTOQUE, usando o id no formato STRING obtido pelo SELECTEDVALUE do DROPDOWNLIST
            var novoestoque = new Classe.estoque();
            novoestoque.id = int.Parse(list_Produto.SelectedValue);
            novoestoque.quantidade = Convert.ToInt32(txt_qtd.Text);
            var AddEstoque = new Negocio.estoque().AddProduto(novoestoque);
            if (AddEstoque == true)
            {
                SiteMaster.ExibirAlertRedirecionar(this, "Alteração no estoque realizada com sucesso!", "MovEntrada.aspx");
                conexao.Close();
            }
        }

        protected void txt_qtd_TextChanged(object sender, EventArgs e)
        {
            double preco = Convert.ToDouble(txt_valorUni.Text);
            double qtd = Convert.ToDouble(txt_qtd.Text);
            double precoT = qtd * preco;

            txt_ValorT.Text = Convert.ToString(precoT);
        }
    }
}