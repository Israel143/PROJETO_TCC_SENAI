using MySqlConnector;
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

            var funcionarios = new Negocio.funcionarios().Create(Funcionarios);
            

            SiteMaster.ExibirAlertRedirecionar(this, "Funcionario Cadastrado com sucesso!", "Funcionario.aspx");
            conexao.Close();
        }
        // Pesquisa de Funcionarios
        protected void btnPesquisa_Click(object sender, EventArgs e)
        {
            var Lista =  new Negocio.funcionarios().Read(txtPesquisa.Text);
            
            GridView1.DataSource = Lista;
            GridView1.DataBind();
                
        
            

        }
    }
}