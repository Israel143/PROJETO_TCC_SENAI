using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão
{
    public partial class Login : System.Web.UI.Page
    {
        private MySqlConnection conexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
        }
        // Acesso do Login 
        protected void btn_login_Click(object sender, EventArgs e)
        {
            conexao.Open();
            var comando = new MySqlCommand($"SELECT senha, email FROM login WHERE email = @email and senha = MD5(@senha) ", conexao);
            comando.Parameters.Add(new MySqlParameter("email", txt_User.Text));
            comando.Parameters.Add(new MySqlParameter("senha", txt_Pswd.Text));
            var reader = comando.ExecuteReader();
            if (reader.Read())
            {
                SiteMaster.ExibirAlert(this, "Você está logado como " + reader.GetString("email"));
                return;
            }
            SiteMaster.ExibirAlert(this, "Senha ou Email incorreto!");
            conexao.Close();
        }

        protected void btn_cadastro_Click(object sender, EventArgs e)
        {
            //Criar Cadastro
            conexao.Open();
            var comando = new MySqlCommand("INSERT INTO login (email, senha) VALUES (@email,MD5(@senha))", conexao);
            comando.Parameters.Add(new MySqlParameter("email", txt_User.Text));
            comando.Parameters.Add(new MySqlParameter("senha", txt_Pswd.Text));
            comando.ExecuteNonQuery();

            SiteMaster.ExibirAlert(this, "Usuário Cadastrado com sucesso!", "Login.aspx");
            conexao.Close();
        }
    }
}