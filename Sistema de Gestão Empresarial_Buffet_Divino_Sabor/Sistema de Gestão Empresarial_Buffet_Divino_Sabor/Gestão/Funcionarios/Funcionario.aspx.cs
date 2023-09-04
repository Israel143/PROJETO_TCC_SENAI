using MySqlConnector;
using Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Funcionarios
{
    public partial class Funcionario : System.Web.UI.Page
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
                
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            //Cadastro de Funcionarios

            var Funcionarios = new Classe.funcionarios();
            Funcionarios.nome = txtNome.Text;
            Funcionarios.cpf = txtCPF.Text;
            Funcionarios.endereco =((txtRua.Text+","+txtNumero.Text+" - "+txtBairro.Text+","+txtCidadeEstado.Text));
            Funcionarios.telefone = txtTelefone.Text;
            Funcionarios.salario = Convert.ToDouble(txtSalario.Text);
            Funcionarios.cargo = txtCargo.Text;
            Funcionarios.turno = txtTurno.Text;


            //Chama a função da pasta negocio para Criar um novo funcionario
            if (Utils.ValidarDocumento(txtCPF.Text))
            {
                var funcionarios = new Negocio.funcionarios().Create(Funcionarios);


            }


            SiteMaster.ExibirAlertRedirecionar(this, "Funcionario Cadastrado com sucesso!", "Funcionario.aspx");
            conexao.Close();
        }
        // Pesquisa de Funcionarios
        protected void btnPesquisa_Click(object sender, EventArgs e)
        {
            var Lista = new Negocio.funcionarios().Read(txtPesquisa.Text);

            rptFuncionarios.DataSource = new Negocio.funcionarios().Read1(txtPesquisa.Text);
            rptFuncionarios.DataBind();




        }
    }
}