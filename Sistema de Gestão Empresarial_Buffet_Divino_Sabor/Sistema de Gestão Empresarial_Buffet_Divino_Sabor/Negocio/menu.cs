using MySqlConnector;
using System;
using System.Collections.Generic;
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
                string menu = "";
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
    }
}