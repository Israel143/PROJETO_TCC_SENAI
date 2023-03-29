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
            var cliente = new Classe.cliente();
            cliente.email = txt_User.Text;
            cliente.senha = txt_Pswd.Text;
            var user = new Negocio.login().ReadCliente(cliente);


            if (user == true)
            {
                Session["clienteID"] = cliente.id.ToString();

                SiteMaster.ExibirAlertRedirecionar(this, "Você está logado como " + cliente.email + " no sistema", "/../Clientes/Menu.aspx");

            }

            else
            {
                SiteMaster.ExibirAlert(this, "Senha ou Email incorreto!");
            }

            return;
        }
        //Criar Cadastro do Cliente
        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            var cliente = new Classe.cliente();
            cliente.nome = NomeCad.Text;
            cliente.contato = ContatoCad.Text;
            cliente.email = EmailCad.Text;
            cliente.senha = SenhaCad.Text;
            var user = new Negocio.login().CreateCliente(cliente);

            SiteMaster.ExibirAlertRedirecionar(this, "Cliente Cadastrado com sucesso!", "Login Cliente.aspx");
            conexao.Close();
        }
    }
}