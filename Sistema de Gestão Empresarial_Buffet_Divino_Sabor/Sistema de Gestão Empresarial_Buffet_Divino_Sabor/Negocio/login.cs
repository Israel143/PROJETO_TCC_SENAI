﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySqlConnector;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio
{
    public class login
    {
        private MySqlConnection conexao;

        public login()
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public bool CreateCliente(Classe.cliente cliente)
        {
            try
            {
               
                //Criar Cadastro
                conexao.Open();
                var comando = new MySqlCommand("INSERT INTO cliente (email, senha, nome, contato) VALUES (@email,MD5(@senha),@nome,@contato)", conexao);
                comando.Parameters.Add(new MySqlParameter("email", cliente.email));
                comando.Parameters.Add(new MySqlParameter("senha", cliente.senha));
                comando.Parameters.Add(new MySqlParameter("nome", cliente.nome));
                comando.Parameters.Add(new MySqlParameter("contato", cliente.contato));
                comando.ExecuteNonQuery();
                conexao.Close();
                return true;
            }
            catch(Exception e)
            {
                return false;
            }
        }

        public bool ReadCliente(Classe.cliente cliente)
        {
            try
            {
                conexao.Open();
                var comando = new MySqlCommand($"SELECT id, senha, email FROM cliente WHERE email = @email AND senha = MD5(@senha)", conexao);
                comando.Parameters.Add(new MySqlParameter("email", cliente.email));
                comando.Parameters.Add(new MySqlParameter("senha", cliente.senha));
                var reader = comando.ExecuteReader();
                if (reader.Read())
                {
                    cliente.id = reader.GetInt32("id");
                    return true;
                    
                }
                
                else
                {
                    return false;
                }          
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
        public bool CreateEmpresa(Classe.empresa empresa)
        {
            try
            {

                //Criar Cadastro
                conexao.Open();
                var comando = new MySqlCommand("INSERT INTO empresa (email, senha, nome, cnpj, endereco, contato) VALUES (@email,MD5(@senha),@nome,@cnpj,@endereco,@contato)", conexao);
                comando.Parameters.Add(new MySqlParameter("email", empresa.email));
                comando.Parameters.Add(new MySqlParameter("senha", empresa.senha));
                comando.Parameters.Add(new MySqlParameter("nome", empresa.nome));
                comando.Parameters.Add(new MySqlParameter("cnpj", empresa.cnpj));
                comando.Parameters.Add(new MySqlParameter("endereco", empresa.endereco));
                comando.Parameters.Add(new MySqlParameter("contato", empresa.contato));
                comando.ExecuteNonQuery();
                conexao.Close();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool ReadEmpresa(Classe.empresa empresa)
        {
            try
            {
                conexao.Open();
                var comando = new MySqlCommand($"SELECT id, senha, email FROM empresa WHERE email = @email AND senha = MD5(@senha)", conexao);
                comando.Parameters.Add(new MySqlParameter("email", empresa.email));
                comando.Parameters.Add(new MySqlParameter("senha", empresa.senha));
                var reader = comando.ExecuteReader();
                if (reader.Read())
                {
                    empresa.id = reader.GetInt32("id");
                    return true;

                }

                else
                {
                    return false;
                }
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

    }
}