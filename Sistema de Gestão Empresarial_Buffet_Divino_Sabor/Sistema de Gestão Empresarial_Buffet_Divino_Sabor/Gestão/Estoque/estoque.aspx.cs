using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Serilog;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão
{
    public partial class estoque : System.Web.UI.Page
    {
        private MySqlConnection conexao;
        protected void Page_Load(object sender, EventArgs e)

        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
            if (Session["empresaID"] == null || string.IsNullOrEmpty(Session["empresaID"].ToString()))
            {
                // redireciona para a página de login
                Response.Redirect("~/Login/Login");
            }
            if (IsPostBack)
            {
               

            }
        }

       

        protected void Btn_pesquisar_Click(object sender, EventArgs e)
        {

            if (TxtPesquisa.Text == "")
            {
                SiteMaster.ExibirAlert(this, "É necessário colocar o Id do Estoque");
            }
            else
            {
                var Lista = new Negocio.estoque().Read(TxtPesquisa.Text);
                GridView1.DataSource = Lista;
                GridView1.DataBind();
            }
            

            

        }

        protected void Btn_inserir_Click(object sender, EventArgs e)
        {
            var estoque = new Classe.estoque();
            estoque.codigo_de_barra =Convert.ToInt32(Txt_Codigo_de_Barra.Text);
            estoque.id_fornecedor = Convert.ToInt32(Txt_Id_Fornecedor.Text);
            estoque.nome_produto = Txt_Nome_Produto.Text;
            estoque.validade = Convert.ToDateTime(Txt_Validade.Text);
            estoque.preco_unidade = Convert.ToDouble(Txt_Preco_Unidade.Text);
            estoque.quantidade = Convert.ToInt32(Txt_Quantidade.Text);
            estoque.seguimento = Txt_Seguimento.Text;

            var create = new Negocio.estoque().Create(estoque);

            SiteMaster.ExibirAlertRedirecionar(this, "Intem  adicionado  com sucesso!", "Estoque.aspx");
            
        }
    }
}