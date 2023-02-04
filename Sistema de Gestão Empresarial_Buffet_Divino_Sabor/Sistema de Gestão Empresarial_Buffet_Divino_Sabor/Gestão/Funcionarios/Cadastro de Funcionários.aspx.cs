using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão
{
    public partial class Cadastro_de_Usuários : System.Web.UI.Page
    {
        private MySqlConnection conexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
        }

        private bool VerificaEmail(string testar_email)
        {
            Regex rg = new Regex(@"^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$");

            if (rg.IsMatch(testar_email))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void btnCadastrarFuncionario_Click(object sender, EventArgs e)
        {
            //Verificar se o email é válido
            if (VerificaEmail(txtEmail.Text) == false)
            {
                lblEmail.Text = "Email inválido!";
                return;
            }
            else
            {
                lblEmail.Text = "";
            }

            //Verificar se a senha é igual
            if (txtSenha.Text != txtConfSenha.Text && txtSenha.Text.Trim() != "")
            {
                SiteMaster.ExibirAlert(this, "Senhas não conferem!");
                return;
            }

            //Criar o Login do Funcionário
            conexao.Open();
            var comando = new MySqlCommand("INSERT INTO login (email, senha) VALUES (@email,MD5(@senha))", conexao);
            comando.Parameters.Add(new MySqlParameter("email", txtEmail.Text));
            comando.Parameters.Add(new MySqlParameter("senha", txtSenha.Text));
            comando.ExecuteNonQuery();

            SiteMaster.ExibirAlert(this, "Funcionário Cadastrado com sucesso!", "../Login/Login.aspx");
            conexao.Close();
        }
    }
}