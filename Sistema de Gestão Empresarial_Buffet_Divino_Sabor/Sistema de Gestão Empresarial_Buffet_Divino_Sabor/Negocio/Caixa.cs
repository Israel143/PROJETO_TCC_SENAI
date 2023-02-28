using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio
{
    public class Caixa
    {
        private MySqlConnection conexao;

        public Caixa()
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
        }

        //MOVIMENTO DE ENTRADA
        public bool CreateIn(Classe.Caixa caixa)
        {
            try
            {
                conexao.Open();
                var comando = new MySqlCommand("INSERT INTO `movimentacoes`(`id`, `entrada`, `saida`, `valor_total`, `data`, `id_produto`) VALUES (@id,@entrada,@saida,@valor_total,@data,@id_produto))", conexao);

                comando.Parameters.Add(new MySqlParameter("id", caixa.id));
                comando.Parameters.Add(new MySqlParameter("entrada", caixa.entrada));
                comando.Parameters.Add(new MySqlParameter("saida", caixa.saida));
                comando.Parameters.Add(new MySqlParameter("valor_total", caixa.valorT));
                comando.Parameters.Add(new MySqlParameter("data", caixa.data));
                comando.Parameters.Add(new MySqlParameter("id_produto", caixa.id_produto));
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


        public List<Classe.Caixa> Read(int move, bool type)
        {
            var Lista = new List<Classe.Caixa>();
            try
            {
                if (type == true)
                {
                    if (move == 0)
                    {
                        conexao.Open();
                        var reader = new MySqlCommand("SELECT `movimentacoes.id`, `movimentacoes.entrada`, `movimentacoes.saida`, `movimentacoes.valor_total`, `movimentacoes.data`, `movimentacoes.id_produto`, `estoque.preco_unidade` FROM `movimentacoes` INNER JOIN `estoque` on `movimentacoes.id_produto` = `estoque.id` WHERE `entrada` = true ", conexao).ExecuteReader();

                        while (reader.Read())
                        {
                            var movimentacao = new Classe.Caixa();
                            movimentacao.id = reader.GetInt32("movimentacoes.id");
                            movimentacao.entrada = reader.GetBoolean("movimentacoes.entrada");
                            movimentacao.saida = reader.GetBoolean("movimentacoes.saida");
                            movimentacao.valorT = reader.GetDouble("movimentacoes.valor_total");
                            movimentacao.data = reader.GetDateTime("movimentacoes.data");
                            movimentacao.valorUni = reader.GetDouble("estoque.preco_unidade");
                            movimentacao.id_produto = reader.GetInt32("movimentacoes.id_produto");
                            Lista.Add(movimentacao);

                        }
                    }
                    else
                    {
                        conexao.Open();
                        var reader = new MySqlCommand("SELECT `movimentacoes.id`, `movimentacoes.entrada`, `movimentacoes.saida`, `movimentacoes.valor_total`, `movimentacoes.data`, `movimentacoes.id_produto`, `estoque.preco_unidade` FROM `movimentacoes` INNER JOIN `estoque` on `movimentacoes.id_produto` = `estoque.id` WHERE `entrada` = true AND `id`= " + move, conexao).ExecuteReader();

                        while (reader.Read())
                        {
                            var movimentacao = new Classe.Caixa();
                            movimentacao.id = reader.GetInt32("movimentacoes.id");
                            movimentacao.entrada = reader.GetBoolean("movimentacoes.entrada");
                            movimentacao.saida = reader.GetBoolean("movimentacoes.saida");
                            movimentacao.valorT = reader.GetDouble("movimentacoes.valor_total");
                            movimentacao.data = reader.GetDateTime("movimentacoes.data");
                            movimentacao.valorUni = reader.GetDouble("estoque.preco_unidade");
                            movimentacao.id_produto = reader.GetInt32("movimentacoes.id_produto");
                            Lista.Add(movimentacao);

                        }
                    }
                }
                else
                {
                    if(move == 0)
                    {
                        conexao.Open();
                        var reader = new MySqlCommand("SELECT `movimentacoes.id`, `movimentacoes.entrada`, `movimentacoes.saida`, `movimentacoes.valor_total`, `movimentacoes.data`, `movimentacoes.id_produto`, `estoque.preco_unidade` FROM `movimentacoes` INNER JOIN `estoque` on `movimentacoes.id_produto` = `estoque.id` WHERE `saida` = true ", conexao).ExecuteReader();

                        while (reader.Read())
                        {
                            var movimentacao = new Classe.Caixa();
                            movimentacao.id = reader.GetInt32("movimentacoes.id");
                            movimentacao.entrada = reader.GetBoolean("movimentacoes.entrada");
                            movimentacao.saida = reader.GetBoolean("movimentacoes.saida");
                            movimentacao.valorT = reader.GetDouble("movimentacoes.valor_total");
                            movimentacao.data = reader.GetDateTime("movimentacoes.data");
                            movimentacao.valorUni = reader.GetDouble("estoque.preco_unidade");
                            movimentacao.id_produto = reader.GetInt32("movimentacoes.id_produto");
                            Lista.Add(movimentacao);

                        }
                    }
                    else
                    {
                        conexao.Open();
                        var reader = new MySqlCommand("SELECT `movimentacoes.id`, `movimentacoes.entrada`, `movimentacoes.saida`, `movimentacoes.valor_total`, `movimentacoes.data`, `movimentacoes.id_produto`, `estoque.preco_unidade` FROM `movimentacoes` INNER JOIN `estoque` on `movimentacoes.id_produto` = `estoque.id` WHERE `saida` = true AND `id`= " + move, conexao).ExecuteReader();

                        while (reader.Read())
                        {
                            var movimentacao = new Classe.Caixa();
                            movimentacao.id = reader.GetInt32("movimentacoes.id");
                            movimentacao.entrada = reader.GetBoolean("movimentacoes.entrada");
                            movimentacao.saida = reader.GetBoolean("movimentacoes.saida");
                            movimentacao.valorT = reader.GetDouble("movimentacoes.valor_total");
                            movimentacao.data = reader.GetDateTime("movimentacoes.data");
                            movimentacao.valorUni = reader.GetDouble("estoque.preco_unidade");
                            movimentacao.id_produto = reader.GetInt32("movimentacoes.id_produto");
                            Lista.Add(movimentacao);

                        }
                    }
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