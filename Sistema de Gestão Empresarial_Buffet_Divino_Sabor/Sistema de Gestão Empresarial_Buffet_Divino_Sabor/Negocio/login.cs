using System;
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

        public bool Create(Classe.Login login)
        {
            try
            {
               
                //Criar Cadastro
                conexao.Open();
                var comando = new MySqlCommand("INSERT INTO login (email, senha, usuario) VALUES (@email,MD5(@senha),@usuario)", conexao);
                comando.Parameters.Add(new MySqlParameter("email", login.email));
                comando.Parameters.Add(new MySqlParameter("senha", login.senha));
                comando.Parameters.Add(new MySqlParameter("usuario", login.usuario));
                comando.ExecuteNonQuery();
                conexao.Close();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Read(Classe.Login login)
        {
            try
            {
                conexao.Open();
                var comando = new MySqlCommand($"SELECT id, senha, email,usuario FROM login WHERE email = @email AND senha = MD5(@senha) AND usuario= @usuario ", conexao);
                comando.Parameters.Add(new MySqlParameter("email", login.email));
                comando.Parameters.Add(new MySqlParameter("senha", login.senha));
                comando.Parameters.Add(new MySqlParameter("usuario", login.usuario));
                var reader = comando.ExecuteReader();
                if (reader.Read())
                {
                    login.id = reader.GetInt32("id");
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