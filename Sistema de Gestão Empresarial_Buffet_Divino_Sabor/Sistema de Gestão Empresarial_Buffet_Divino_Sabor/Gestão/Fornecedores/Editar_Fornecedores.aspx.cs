using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySqlConnector;


namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Fornecedores
{
    public partial class Editar_Fornecedores : System.Web.UI.Page
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

            if (!IsPostBack)
            {
                var fornecedores = new Classe.fornecedores();
                var id = Request.QueryString["id"].ToString();

                var editar = new Negocio.fornecedores().ReadUpdate(id); 
                if (editar == null)
                {
                    SiteMaster.ExibirAlertRedirecionar(this, "Fornecedor não identificado, realize a pesquisa novamente", "../Gestão/Fornecedores.aspx");
                    return;
                }

                var itemlista = editar[0];
                txtCNPJ.Text = itemlista.cnpj;
                txtcontato.Text = itemlista.contato;
                txtNome_Fornecedor.Text = itemlista.nome;
                txtSeguimento_Fornecedor.Text = itemlista.seguimento;
                rdoAtivo.SelectedValue = itemlista.NumeroAtivo;



            }
        }

      

        protected void btnEditar_Fornecedor_Click(object sender, EventArgs e)
        {
            var fornecedores = new Classe.fornecedores();
            fornecedores.id = Convert.ToInt32(Request.QueryString["id"].ToString());
            fornecedores.nome = txtNome_Fornecedor.Text;
            fornecedores.contato = txtcontato.Text;
            fornecedores.seguimento = txtSeguimento_Fornecedor.Text;
            fornecedores.cnpj = txtCNPJ.Text;
            fornecedores.ativo = (rdoAtivo.SelectedValue == "1");
            new Negocio.fornecedores().Update(fornecedores);
            SiteMaster.ExibirAlertRedirecionar(this, "Fornecedor Editado com sucesso!", "Fornecedores.aspx");
        }

        
    }
    
}