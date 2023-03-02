using MySqlConnector;
using Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

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
                var fornecedores = new Negocio.fornecedores().Create(Fornecedores);


            }
            SiteMaster.ExibirAlertRedirecionar(this, "Fornecedor Cadastrado com sucesso!", "Fornecedores.aspx");
            conexao.Close();

        }

        protected void btnPesquisa_Fornecedor_Click(object sender, EventArgs e)
        {
            var Lista = new Negocio.fornecedores().Read(txtPesquisa.Text);
            Session["Lista"] = Lista;
            GVW_Fornecedores.DataSource = Lista;
            GVW_Fornecedores.DataBind();

        }

        protected void GVW_Fornecedores_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Editar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                var tabela = (List<Classe.fornecedores>)Session["Lista"];
                var comando = new MySqlCommand("UPDATE FROM fornecedores WHERE id = " +tabela[index].id.ToString(),conexao);
                Response.Redirect("Editar_Fornecedores.aspx");
            }
        }
    }
}