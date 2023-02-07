using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio
{
    public class pedidos
    {
        private MySqlConnection connection;
        public pedidos()
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
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