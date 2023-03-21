using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio
{
    public class menu1
    {
        private MySqlConnection connection;

        public menu1()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public string MenuPorCampo(string campo)
        {
            try
            {
                connection.Open();
                string menu = "entrada";
                var comando = new MySqlCommand("SELECT " + campo + " FROM menu", connection);
                var reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    menu = menu + reader.GetString(0) + "<br />";
                }

               
            }
            catch
            {

            }
            return campo;

        }

        public bool Create(DataTable carrinho, string valorTotal)
        {
            try
            {
                connection.Open();
                var comando = new MySqlCommand("INSERT INTO menu (entrada, salada, jantar, sobremesa, bebida, valor) VALUES (@entrada, @salada, @jantar, @sobremesa, @bebida, @valorTotal)", connection);

                // Inicializa as variáveis que irão armazenar o nome dos pratos de cada categoria
                string entrada = string.Empty;
                string salada = string.Empty;
                string jantar = string.Empty;
                string sobremesa = string.Empty;
                string bebida = string.Empty;

                // Itera sobre as linhas da tabela carrinho e adiciona o nome do prato na variável correspondente
                foreach (DataRow row in carrinho.Rows)
                {
                    string categoria = row["categoria"].ToString();
                    string nomePrato = row["nome"].ToString();
                    switch (categoria)
                    {
                        case "Entrada":
                            entrada += nomePrato + ", ";
                            break;
                        case "Salada":
                            salada += nomePrato + ", ";
                            break;
                        case "Jantar":
                            jantar += nomePrato + ", ";
                            break;
                        case "Sobremesa":
                            sobremesa += nomePrato + ", ";
                            break;
                        case "Bebida":
                            bebida += nomePrato + ", ";
                            break;
                    }
                }

                // Adiciona as variáveis com os nomes dos pratos nas respectivas colunas na tabela menu
                comando.Parameters.Add(new MySqlParameter("entrada", entrada));
                comando.Parameters.Add(new MySqlParameter("salada", salada));
                comando.Parameters.Add(new MySqlParameter("jantar", jantar));
                comando.Parameters.Add(new MySqlParameter("sobremesa", sobremesa));
                comando.Parameters.Add(new MySqlParameter("bebida", bebida));
                comando.Parameters.Add(new MySqlParameter("valorTotal", Convert.ToDouble(valorTotal)));

                comando.ExecuteNonQuery();

                int idMenu = (int)comando.LastInsertedId;
                HttpContext.Current.Session["menu"] = idMenu;
                
                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
                connection.Close();
            }
        }
    }
}