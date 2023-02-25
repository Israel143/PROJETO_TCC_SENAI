using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio
{
    public class pedidos
    {
        private MySqlConnection connection;
        public pedidos()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public DataTable ReadNovos()
        {
            //cria uma tabela dt
            DataTable dt = new DataTable();

            //abre a conexão
            connection.Open();
            //comando MySQL para selecionar os dados
            string query = "SELECT pedidos.id, pedidos.data, cliente.nome, menu.entrada, menu.salada, menu.jantar, menu.sobremesa, menu.bebida FROM pedidos INNER JOIN cliente ON pedidos.id_cliente = cliente.id INNER JOIN menu ON pedidos.id_menu = menu.id WHERE estado IS NULL";
            using (MySqlCommand command = new MySqlCommand(query, connection))
            {
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

        public DataTable ReadAndamento()
        {
            //cria uma tabela dt
            DataTable dt = new DataTable();

            //abre a conexão
            connection.Open();
            //comando MySQL para selecionar os dados
            string query = "SELECT pedidos.id, pedidos.data, cliente.nome, menu.entrada, menu.salada, menu.jantar, menu.sobremesa, menu.bebida FROM pedidos INNER JOIN cliente ON pedidos.id_cliente = cliente.id INNER JOIN menu ON pedidos.id_menu = menu.id WHERE estado = 1";
            using (MySqlCommand command = new MySqlCommand(query, connection))
            {
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

        public DataTable ReadFinalizados()
        {
            //cria uma tabela dt
            DataTable dt = new DataTable();

            //abre a conexão
            connection.Open();
            //comando MySQL para selecionar os dados
            string query = "SELECT pedidos.id, pedidos.data, cliente.nome, menu.entrada, menu.salada, menu.jantar, menu.sobremesa, menu.bebida FROM pedidos INNER JOIN cliente ON pedidos.id_cliente = cliente.id INNER JOIN menu ON pedidos.id_menu = menu.id WHERE estado =0 ";
            using (MySqlCommand command = new MySqlCommand(query, connection))
            {
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

        public bool Acept(Classe.pedidos pedidos)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"UPDATE pedidos SET estado = 1 WHERE id = @id", connection);
                comando.Parameters.Add(new MySqlParameter("id", pedidos.id));
                comando.ExecuteNonQuery();
                connection.Close();

                
            }
            catch
            {
                return false;
            }
            return true;
        }

        public bool Finish(Classe.pedidos pedidos)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand($@"UPDATE pedidos SET estado = 0 WHERE id = @id", connection);
                comando.Parameters.Add(new MySqlParameter("id", pedidos.id));
                comando.ExecuteNonQuery();
                connection.Close();


            }
            catch
            {
                return false;
            }
            return true;
        }
    }
}