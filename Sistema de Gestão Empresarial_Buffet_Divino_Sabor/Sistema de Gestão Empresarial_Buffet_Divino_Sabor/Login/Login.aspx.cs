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
            var empresa = new Classe.empresa();
            empresa.email = txt_User.Text;
            empresa.senha = txt_Pswd.Text;
            var user = new Negocio.login().ReadEmpresa(empresa);

            if(user==true)
            {
                Session["empresaID"] = empresa.id;

                SiteMaster.ExibirAlertRedirecionar(this, "Você está logado como " + empresa.email + " no sistema", "../Gestão/Dashboard/Dashboard.aspx");
                
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
            var empresa = new Classe.empresa();
            empresa.email = EmailCad.Text;
            empresa.senha = SenhaCad.Text;
            empresa.cnpj = CNPJ.Text;
            empresa.nome = NomeCad.Text;
            empresa.contato = ContatoCad.Text;
            empresa.endereco = EnderecoCad.Text;
            var user = new Negocio.login().CreateEmpresa(empresa);

            SiteMaster.ExibirAlertRedirecionar(this, "Usuário Cadastrado com sucesso!", "Login.aspx");
            conexao.Close();
        }
    }
}