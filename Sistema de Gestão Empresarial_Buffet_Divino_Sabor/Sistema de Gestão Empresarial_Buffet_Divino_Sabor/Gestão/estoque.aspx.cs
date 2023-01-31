using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão
{
    public partial class estoque : System.Web.UI.Page
    {
        private MySqlConnection conexao;
        protected void Page_Load(object sender, EventArgs e)

        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
            if (IsPostBack)
            {
               

            }
        }

       

        protected void Btn_pesquisar_Click(object sender, EventArgs e)
        {
            var Lista = new List<Classe.estoque>();

            conexao.Open();
            var reader = new MySqlCommand("SELECT id,codigo_de_barra,id_fornecedor,nome_produto,validade,preco_unidade,quantidade,seguimento FROM estoque WHERE id= "+ TxtPesquisa.Text, conexao).ExecuteReader();
            while (reader.Read())
            {
                var novo_estoque = new Classe.estoque();
                novo_estoque.id = reader.GetInt32("id");
                novo_estoque.codigo_de_barra = reader.GetInt32("codigo_de_barra");
                novo_estoque.id_fornecedor = reader.GetInt32("id_fornecedor");
                novo_estoque.nome_produto = reader.GetString("nome_produto");
                novo_estoque.validade = reader.GetDateTime("validade");
                novo_estoque.preco_unidade = reader.GetDouble("preco_unidade");
                novo_estoque.quantidade = reader.GetInt32("quantidade");
                novo_estoque.seguimento = reader.GetString("seguimento");
                Lista.Add(novo_estoque);
                GridView1.DataSource = Lista;
                GridView1.DataBind();
            }
            conexao.Close();

        }
    }
}