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

            if (!IsPostBack)
            {

            }
        }

        protected void btnDeletar_Fornecedor_Click(object sender, EventArgs e)
        {
          
           

        }

        protected void btnEditar_Fornecedor_Click(object sender, EventArgs e)
        {
            var fornecedores = new Classe.fornecedores();
            fornecedores.nome = txtNome_Fornecedor.Text;
            fornecedores.contato = txtcontato.Text;
            fornecedores.seguimento = txtSeguimento_Fornecedor.Text;
            fornecedores.cnpj = txtCNPJ.Text;
            new Negocio.fornecedores().Update(fornecedores);
            SiteMaster.ExibirAlertRedirecionar(this, "Fornecedor Editado com sucesso!", "Fornecedores.aspx");
        }

        
    }
    
}