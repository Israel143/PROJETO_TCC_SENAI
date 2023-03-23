using System;
using MySqlConnector;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Contratos
{
    public partial class Contrato : System.Web.UI.Page
    {
        private MySqlConnection conexao;


        protected string Nome_da_Contratante;
        protected string Contato_Contrante;
        protected string Email_Contratante;
        protected string Nome_da_Contratada;
        protected string Endereco_Contratada;
        protected string Email_Contratada;
        protected string Contato_Contratada;
        protected string CNPJ_Contratada;
        protected string Data;
        protected DateTime DataZ;
        
        



        protected void Page_Load(object sender, EventArgs e)
        {

            conexao = new MySqlConnection(SiteMaster.ConnectionString);
            if (!IsPostBack)
            {

                {


                    // Query SQL para buscar as informações
                    string query = $@"SELECT pedidos.id_cliente, pedidos.data, pedidos.id_menu, empresa.endereco ,empresa.cnpj, cliente.nome AS nome_cliente, cliente.contato AS contato_cliente, cliente.email AS email_cliente, empresa.nome AS nome_empresa, empresa.cnpj, empresa.contato AS contato_empresa, empresa.email AS email_empresa
                                   FROM contratos
                                   INNER JOIN pedidos ON contratos.id_pedido = pedidos.id_menu
                                   INNER JOIN cliente ON pedidos.id_cliente = cliente.id
                                   INNER JOIN empresa ON contratos.id_pedido = empresa.id
                                   WHERE contratos.id_pedido = @id_pedido;";

                    // Criação do objeto MySqlCommand para executar a query SQL
                    MySqlCommand commando = new MySqlCommand(query, conexao);
                    commando.Parameters.AddWithValue("@id_pedido",1);
                    
                    try
                    {
                        // Abertura da conexão com o banco de dados
                        conexao.Open();

                        // Execução da query SQL e leitura dos resultados
                        MySqlDataReader reader = commando.ExecuteReader();

                        while (reader.Read())
                        {
                            // Armazenamento dos resultados em variáveis

                            DataZ = reader.GetDateTime("Data");
                            Data = DataZ.ToString("dd/MM/yy hh:mm");

                            Nome_da_Contratante = reader.GetString("nome_cliente");
                            Contato_Contrante = reader.GetString("contato_cliente");
                            Email_Contratante = reader.GetString("email_cliente");
                            Email_Contratada = reader.GetString("email_empresa");
                            Nome_da_Contratada = reader.GetString("nome_empresa");
                            Contato_Contratada = reader.GetString("contato_empresa");
                            CNPJ_Contratada = reader.GetString("cnpj");
                            Endereco_Contratada = reader.GetString("endereco");


                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Erro: " + ex.Message);
                    }
                    finally
                    {
                        // Fechamento da conexão com o banco de dados
                        conexao.Close();
                    }

                   
                }
            }


        }


    }




}








