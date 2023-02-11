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
            conexao.Open();
            var comando = new MySqlCommand("INSERT INTO funcionarios  (nome,cpf,endereco,telefone,salario,cargo,turno) VALUES (@nome,@cpf,@endereco,@telefone,@salario,@cargo,@turno)", conexao);

            comando.Parameters.Add(new MySqlParameter("nome",txtNome.Text));
            comando.Parameters.Add(new MySqlParameter("cpf", txtCPF.Text));
            comando.Parameters.Add(new MySqlParameter("endereco", $"{txtRua.Text},{txtBairro.Text},{txtNumero.Text},{txtCidadeEstado.Text}"));
            comando.Parameters.Add(new MySqlParameter("telefone",txtTelefone.Text));
            comando.Parameters.Add(new MySqlParameter("salario", txtSalario.Text));
            comando.Parameters.Add(new MySqlParameter("cargo", txtCargo.Text));
            comando.Parameters.Add(new MySqlParameter("turno", txtTurno.Text));
            comando.ExecuteNonQuery();

            SiteMaster.ExibirAlertRedirecionar(this, "Funcionario Cadastrado com sucesso!", "Funcionario.aspx");
            conexao.Close();
        }
        // Pesquisa de Funcionarios
        protected void btnPesquisa_Click(object sender, EventArgs e)
        {
            var Lista = new List<Classe.funcionarios>();
            conexao.Open();
            var reader = new MySqlCommand("SELECT id,nome,cpf,endereco,telefone,salario,cargo,turno FROM funcionarios WHERE nome like '%" + txtPesquisa.Text+"%'", conexao).ExecuteReader();


            {

            }
            while (reader.Read())
            {
                var novo_funcionario = new Classe.funcionarios();
                novo_funcionario.id = reader.GetInt32("id");
                novo_funcionario.nome = reader.GetString("nome");
                novo_funcionario.cpf = reader.GetString("cpf");
                novo_funcionario.endereco = reader.GetString("endereco");
                novo_funcionario.telefone = reader.GetString("telefone");
                novo_funcionario.salario = reader.GetDouble("salario");
                novo_funcionario.cargo = reader.GetString("cargo");
                novo_funcionario.turno = reader.GetString("turno");
                Lista.Add(novo_funcionario);
                GridView1.DataSource = Lista;
                GridView1.DataBind();
            }
            conexao.Close();
        }
    }
}