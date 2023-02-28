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




    }
}
    
