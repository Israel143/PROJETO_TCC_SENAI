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
            var login = new Classe.Login();
            login.email = txt_User.Text;
            login.senha = txt_Pswd.Text;
            var user = new Negocio.login().Read(login);

            if(user==true)
            {
                Session["user"] = user;

                SiteMaster.ExibirAlertRedirecionar(this, "Você está logado como " + login.email + " no sistema", "../Dashboard/Dashboard.aspx");
                
            }

            else
            {
                SiteMaster.ExibirAlert(this, "Senha ou Email incorreto!");
            }
         
                return;
            
            
           
        }

        protected void btn_cadastro_Click(object sender, EventArgs e)
        {
            //Criar Cadastro
            var login = new Classe.Login();
            login.email = txt_User.Text;
            login.senha = txt_Pswd.Text;
            var user = new Negocio.login().Create(login);

            SiteMaster.ExibirAlertRedirecionar(this, "Usuário Cadastrado com sucesso!", "Login.aspx");
            conexao.Close();
        }
    }
}