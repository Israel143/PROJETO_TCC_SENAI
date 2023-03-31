using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio
{
    public class fornecedores
    {
        private MySqlConnection conexao;
        public fornecedores()
        {

            conexao = new MySqlConnection(SiteMaster.ConnectionString);


        }
        public bool Create(Classe.fornecedores Fornecedores)
        {
            conexao.Open();
            try
            {
                var comando = new MySqlCommand("INSERT INTO fornecedores  (nome,contato,seguimento,cnpj) VALUES (@nome,@contato,@seguimento,@cnpj)", conexao);

                comando.Parameters.Add(new MySqlParameter("nome", Fornecedores.nome));
                comando.Parameters.Add(new MySqlParameter("contato", Fornecedores.contato));
                comando.Parameters.Add(new MySqlParameter("seguimento", Fornecedores.seguimento));
                comando.Parameters.Add(new MySqlParameter("cnpj", Fornecedores.cnpj));

                comando.ExecuteNonQuery();
            }
            catch
            {
                return false;
            }


            finally
            {
                conexao.Close();
            }

            return true;

        }

        public List<Classe.fornecedores> ReadUpdate(string id)
        {
            var Lista = new List<Classe.fornecedores>();
            try

            {
                conexao.Open();
                var reader = new MySqlCommand("SELECT nome,contato,seguimento,cnpj,ativo FROM fornecedores WHERE id = " + id, conexao).ExecuteReader();

                while (reader.Read())
                {
                    var fornecedores = new Classe.fornecedores();
                    fornecedores.nome = reader.GetString("nome");
                    fornecedores.contato = reader.GetString("contato");
                    fornecedores.seguimento = reader.GetString("seguimento");
                    fornecedores.cnpj = reader.GetString("cnpj");
                    fornecedores.ativo = reader.GetBoolean("ativo");
                    Lista.Add(fornecedores);

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

        public List<Classe.fornecedores> Read(string fornecedores)
        {



            var Lista = new List<Classe.fornecedores>();
            try

            {
                conexao.Open();
                var reader = new MySqlCommand("SELECT id,nome,contato,seguimento,cnpj FROM fornecedores WHERE nome  like '%" + fornecedores + "%'", conexao).ExecuteReader();

                while (reader.Read())
                {
                    var novo_fornecedores = new Classe.fornecedores();
                    novo_fornecedores.id = reader.GetInt32("id");
                    novo_fornecedores.nome = reader.GetString("nome");
                    novo_fornecedores.contato = reader.GetString("contato");
                    novo_fornecedores.seguimento = reader.GetString("seguimento");
                    novo_fornecedores.cnpj = reader.GetString("cnpj");
                    Lista.Add(novo_fornecedores);

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
        public bool Update(Classe.fornecedores fornecedores)
        {
            try
            {
                conexao.Open();
                var comando = new MySqlCommand($"UPDATE fornecedores SET nome= @nome,contato= @contato,seguimento = @seguimento, cnpj= @cnpj, ativo= @ativo WHERE id = @id", conexao);
                comando.Parameters.Add(new MySqlParameter("id", fornecedores.id));
                comando.Parameters.Add(new MySqlParameter("nome", fornecedores.nome));
                comando.Parameters.Add(new MySqlParameter("contato", fornecedores.contato));
                comando.Parameters.Add(new MySqlParameter("seguimento", fornecedores.seguimento));
                comando.Parameters.Add(new MySqlParameter("cnpj", fornecedores.cnpj));
                comando.Parameters.Add(new MySqlParameter("ativo", fornecedores.ativo));

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

        public bool Delete(string id)
        {
            try
            {
                conexao.Open();
                var comando = new MySqlCommand("DELETE FROM fornecedores WHERE id = " + id, conexao);
                comando.ExecuteNonQuery();
                conexao.Close();
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine("ocorreu um erro: " + e.Message);
                return false;
            }
            
        }

        public List<Classe.fornecedores> Seleciona()
        {
            var Lista = new List<Classe.fornecedores>();
            try

            {
                conexao.Open();
                var reader = new MySqlCommand("SELECT nome, id FROM fornecedores WHERE 1", conexao).ExecuteReader();

                while (reader.Read())
                {
                    var fornecedor = new Classe.fornecedores();
                    fornecedor.nome = reader.GetString("nome");
                    fornecedor.id = reader.GetInt32("id");
                    Lista.Add(fornecedor);
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


    }
}

