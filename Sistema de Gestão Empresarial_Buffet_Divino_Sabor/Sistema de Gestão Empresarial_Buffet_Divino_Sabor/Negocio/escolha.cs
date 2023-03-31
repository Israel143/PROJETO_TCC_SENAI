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

        public bool create(Classe.escolha escolha)
        {
            try
            {

                //Criar Cadastro
                connection.Open();
                var comando = new MySqlCommand("INSERT INTO escolha (nome, categoria, preco) VALUES (@nome,@categoria,@preco)", connection);
                comando.Parameters.Add(new MySqlParameter("nome", escolha.nome));
                comando.Parameters.Add(new MySqlParameter("categoria", escolha.categoria));
                comando.Parameters.Add(new MySqlParameter("preco", escolha.preco));
                comando.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
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
            string query = "SELECT id, nome, preco, categoria FROM escolha WHERE id = @id";
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

        public string ReadCategoria(Classe.escolha escolha)
        {
            string categoria = "";
            //abre a conexão
            connection.Open();
            //comando MySQL para selecionar os dados
            string sql = "SELECT categoria FROM escolha WHERE id=@ID";
            using (var cmd = new MySqlCommand(sql, connection))
            {
                cmd.Parameters.AddWithValue("@ID", escolha.id);
                using (var reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        categoria = reader.GetString(0);
                    }
                }
            }
            return categoria;
        }

        public string SomaTotal(DataTable Soma)
        {
            // Calcular o total da compra
            double total = 0;
            foreach (DataRow row in Soma.Rows)
            {
                total += Convert.ToDouble(row["preco"]);
            }

            // Exibir o total da compra
            string resultado = $"{total:F2}";

            return resultado;
        }
    }
}