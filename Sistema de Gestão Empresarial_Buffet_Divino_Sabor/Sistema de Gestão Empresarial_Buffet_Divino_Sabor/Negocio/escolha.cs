using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio
{
    public class escolha
    {
        private MySqlConnection connection;
        public escolha()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public DataTable ReadPratos(Classe.escolha escolha)
        {
            //cria uma tabela dt
            DataTable dt = new DataTable();

            //abre a conexão
            connection.Open();
            //comando MySQL para selecionar os dados
            string query = "SELECT id, nome, preco FROM escolha WHERE categoria = @categoria";
            using (MySqlCommand command = new MySqlCommand(query, connection))
            {
                //adiciona o parâmetro "categoria" ao comando
                command.Parameters.AddWithValue("@categoria", escolha.categoria);

                //inclui os dados do banco de dados dentro de uma tabela 
                using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))
                {
                    //encaixa os dados do adapter em uma tabela dt
                    adapter.Fill(dt);
                }
                //fecha a conexão
                connection.Close();
            }
            //retorna o valor da datatable
            return dt;
        }

        public DataTable ReadPratosSelecionados(Classe.escolha escolha)
        {
            //cria uma tabela dt
            DataTable dts = new DataTable();

            //abre a conexão
            connection.Open();
            //comando MySQL para selecionar os dados
            string query = "SELECT nome, preco, categoria FROM escolha WHERE id = @id";
            using (MySqlCommand command = new MySqlCommand(query, connection))
            {
                //adiciona o parâmetro "categoria" ao comando
                command.Parameters.AddWithValue("@id", escolha.id);

                //inclui os dados do banco de dados dentro de uma tabela 
                using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))
                {
                    //encaixa os dados do adapter em uma tabela dt
                    adapter.Fill(dts);
                }
                //fecha a conexão
                connection.Close();
            }
            //retorna o valor da datatable
            return dts;
        }
    }
}