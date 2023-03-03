using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySqlConnector;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio
{
    public class estoque
    {
        private MySqlConnection conexao;

        public estoque()
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public bool Create(Classe.estoque estoque)
        {
            try
            {

                //Criar Cadastro

                conexao.Open();
                var comando = new MySqlCommand("INSERT INTO estoque  (codigo_de_barra,id_fornecedor,nome_produto,validade,preco_unidade,quantidade,seguimento) VALUES (@codigo_de_barra,@id_fornecedor,@nome_produto,@validade,@preco_unidade,@quantidade,@seguimento)", conexao);

                comando.Parameters.Add(new MySqlParameter("codigo_de_barra", estoque.codigo_de_barra));
                comando.Parameters.Add(new MySqlParameter("id_fornecedor", estoque.id_fornecedor));
                comando.Parameters.Add(new MySqlParameter("nome_produto", estoque.nome_produto));
                comando.Parameters.Add(new MySqlParameter("validade", Convert.ToDateTime(estoque.validade).ToString("yyyy-MM-dd")));
                comando.Parameters.Add(new MySqlParameter("preco_unidade", estoque.preco_unidade));
                comando.Parameters.Add(new MySqlParameter("quantidade", estoque.quantidade));
                comando.Parameters.Add(new MySqlParameter("seguimento", estoque.seguimento));
                comando.ExecuteNonQuery();

                return true;

            }
            catch
            {
                return false;
            }
            finally
            {
                conexao.Close();

            }
        }

        public List<Classe.estoque> Read(string estoque)
        {
            var Lista = new List<Classe.estoque>();
            try
            {
                //Pesquisar intens no estoque

                conexao.Open();
                var reader = new MySqlCommand("SELECT id,codigo_de_barra,id_fornecedor,nome_produto,validade,preco_unidade,quantidade,seguimento FROM estoque WHERE id= " + estoque, conexao).ExecuteReader();

                while (reader.Read())
                {
                    var novo_estoque = new Classe.estoque();
                    novo_estoque.id = reader.GetInt32("id");
                    novo_estoque.codigo_de_barra = reader.GetInt32("codigo_de_barra");
                    novo_estoque.id_fornecedor = reader.GetInt32("id_fornecedor");
                    novo_estoque.nome_produto = reader.GetString("nome_produto");
                    novo_estoque.validade = reader.GetDateTime("validade");
                    novo_estoque.preco_unidade = reader.GetDouble("preco_unidade");
                    novo_estoque.quantidade = reader.GetInt32("quantidade");
                    novo_estoque.seguimento = reader.GetString("seguimento");
                    Lista.Add(novo_estoque);

                }
            }
            catch
            {

            }
            finally
            {

                conexao.Close();

            }
            return Lista;
        }

        public bool AddProduto(Classe.estoque estoque)
        {
            try
            {
                conexao.Open();
                var comando = new MySqlCommand("UPDATE `estoque` SET `quantidade`= quantidade + @quantidade WHERE `id` = @id", conexao);
                comando.Parameters.Add(new MySqlParameter("id", estoque.id));            
                comando.Parameters.Add(new MySqlParameter("quantidade", estoque.quantidade));
                comando.ExecuteNonQuery();
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine("Ocorreu um erro: " + e.Message);
                return false;

            }
            finally
            {
                conexao.Close();
            }
        }

        public bool Update(Classe.estoque estoque)
        {
            try
            {
                conexao.Open();
                var comando = new MySqlCommand("UPDATE `estoque` SET `codigo_de_barra`= @codigo_de_barra,`id_fornecedor`=@id_fornecedor,`nome_produto`= @nome_produto,`validade`= @validade,`preco_unidade`= @preco_unidade,`quantidade`= quantidade + @quantidade,`seguimento`= @seguimento WHERE `id` = @id", conexao);
                comando.Parameters.Add(new MySqlParameter("id", estoque.id));
                comando.Parameters.Add(new MySqlParameter("codigo_de_barra", estoque.codigo_de_barra));
                comando.Parameters.Add(new MySqlParameter("id_fornecedor", estoque.id_fornecedor));
                comando.Parameters.Add(new MySqlParameter("nome_produto", estoque.nome_produto));
                comando.Parameters.Add(new MySqlParameter("validade", Convert.ToDateTime(estoque.validade).ToString("yyyy-MM-dd")));
                comando.Parameters.Add(new MySqlParameter("preco_unidade", estoque.preco_unidade));
                comando.Parameters.Add(new MySqlParameter("quantidade", estoque.quantidade));
                comando.Parameters.Add(new MySqlParameter("seguimento", estoque.seguimento));
                comando.ExecuteNonQuery();

                return true;
            }
            catch(Exception e)
            {
                Console.WriteLine("Ocorreu um erro: " + e.Message);
                return false;

            }
            finally
            {
                conexao.Close();
            }
        }
    }
}


