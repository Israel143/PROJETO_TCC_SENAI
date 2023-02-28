using MySqlConnector;
using Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Fornecedores
{
    public partial class Fornecedores : System.Web.UI.Page
    {
        private MySqlConnection conexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);

            if (!IsPostBack)
            {

            }
        }

        protected void btnCadastrar_Fornecedor_Click(object sender, EventArgs e)
        {
            //Cadastro de Fornecedores
            var Fornecedores = new Classe.fornecedores();
            Fornecedores.nome = txtNome_Fornecedor.Text;
            Fornecedores.contato = txtcontato.Text;
            Fornecedores.seguimento = txtSeguimento_Fornecedor.Text;
            Fornecedores.cnpj = txtCNPJ.Text;
            //Chama a função da pasta negocio para Criar um novo fornecedores
            if (Utils.ValidarDocumento(txtCNPJ.Text))
            {
                var funcionarios = new Negocio.fornecedores().Create(Fornecedores);


            }
            SiteMaster.ExibirAlertRedirecionar(this, "Fornecedor Cadastrado com sucesso!", "Fornecedores.aspx");
            conexao.Close();

        }

        protected void btnPesquisa_Fornecedor_Click(object sender, EventArgs e)
        {
            var Lista = new Negocio.fornecedores().Read(txtPesquisa.Text);

            GridView1.DataSource = Lista;
            GridView1.DataBind();

        }
    }
}