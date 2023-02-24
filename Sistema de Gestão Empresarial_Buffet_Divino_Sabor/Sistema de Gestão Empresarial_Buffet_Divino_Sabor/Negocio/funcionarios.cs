using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySqlConnector;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio
{
    public class funcionarios
    {

        private MySqlConnection conexao;
        public funcionarios()
        {

            conexao = new MySqlConnection(SiteMaster.ConnectionString);

          
        }
        public bool Create(Classe.funcionarios Funcionarios)
        {
            conexao.Open();
            try
            {
                var comando = new MySqlCommand("INSERT INTO funcionarios  (nome,cpf,endereco,telefone,salario,cargo,turno) VALUES (@nome,@cpf,@endereco,@telefone,@salario,@cargo,@turno)", conexao);

                comando.Parameters.Add(new MySqlParameter("nome", Funcionarios.nome));
                comando.Parameters.Add(new MySqlParameter("cpf", Funcionarios.cpf));
                comando.Parameters.Add(new MySqlParameter("endereco", Funcionarios.endereco));
                comando.Parameters.Add(new MySqlParameter("telefone", Funcionarios.telefone));
                comando.Parameters.Add(new MySqlParameter("salario", Funcionarios.salario));
                comando.Parameters.Add(new MySqlParameter("cargo", Funcionarios.cargo));
                comando.Parameters.Add(new MySqlParameter("turno", Funcionarios.turno));
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

        public List<Classe.funcionarios> Read(string Funcionarios)
        { 

            

                var Lista = new List<Classe.funcionarios>();
            try

            {
                conexao.Open();
                var reader = new MySqlCommand("SELECT id,nome,cpf,endereco,telefone,salario,cargo,turno FROM funcionarios WHERE nome  like '%" + Funcionarios + "%'", conexao).ExecuteReader();

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