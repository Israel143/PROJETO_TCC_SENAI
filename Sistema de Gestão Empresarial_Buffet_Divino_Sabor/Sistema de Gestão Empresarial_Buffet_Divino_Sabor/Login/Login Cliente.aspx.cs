using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Login
{
    public partial class Login_Cliente : System.Web.UI.Page
    {
        private MySqlConnection conexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
        }
        //Login do Cliente
        protected void btn_Login_Cliente_Click(object sender, EventArgs e)
        {
            var login = new Classe.Login();
            login.email = txt_User.Text;
            login.senha = txt_Pswd.Text;
            login.usuario = "Cliente";
            var user = new Negocio.login().Read(login);


            if (user == true)
            {
                Session["clienteID"] = login.id.ToString();

                SiteMaster.ExibirAlertRedirecionar(this, "Você está logado como " + login.email + " no sistema", "/../Clientes/Menu.aspx");

            }

            else
            {
                SiteMaster.ExibirAlert(this, "Senha ou Email incorreto!");
            }

            return;
        }
        //Criar Cadastro do Cliente
        protected void btn_Cadastro_Cliente_Click(object sender, EventArgs e)
        {
            var login = new Classe.Login();
            login.email = txt_User.Text;
            login.senha = txt_Pswd.Text;
            login.usuario = "Cliente";
            var user = new Negocio.login().Create(login);

            SiteMaster.ExibirAlertRedirecionar(this, "Cliente Cadastrado com sucesso!", "Login Cliente.aspx");
            conexao.Close();


        }
    }
}