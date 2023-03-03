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
                var id = Request.QueryString["id"].ToString();
                var fornecedor = new Negocio.fornecedores().Read(id);
                if (fornecedor == null)
                {
                    SiteMaster.ExibirAlertRedirecionar(this, "Fornecedor não identificado, realize a pesquisa novamente", "../Gestão/Fornecedores.aspx");
                    return;
                }

                conexao.Open();
                var reader = new MySqlCommand($"SELECT nome,contato,seguimento,cnpj FROM fornecedores WHERE id = {id}", conexao).ExecuteReader();

                if (reader.Read())
                {
                    txtNome_Fornecedor.Text = reader.GetString("nome");
                    txtcontato.Text = reader.GetString("contato");
                    txtSeguimento_Fornecedor.Text = reader.GetString("seguimento");
                    txtCNPJ.Text = reader.GetString("cnpj");
                  
                }


                conexao.Close();


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
            new Negocio.fornecedores().Update(fornecedores);
            SiteMaster.ExibirAlertRedirecionar(this, "Fornecedor Editado com sucesso!", "Fornecedores.aspx");
        }

        
    }
    
}