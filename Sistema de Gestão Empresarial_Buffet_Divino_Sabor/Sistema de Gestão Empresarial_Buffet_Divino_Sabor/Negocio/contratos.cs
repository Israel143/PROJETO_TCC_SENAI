using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;
using MySqlConnector;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio
{
    public class contratos
    {
        private MySqlConnection conexao;
        public contratos()
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
        }

        public DataTable TrazeContratos(string Consultar)
        {
            DataTable tabela = new DataTable();

            tabela.Columns.Add("id");
            tabela.Columns.Add("id_pedido");
            tabela.Columns.Add("Data de Inicio");
            tabela.Columns.Add("Data de Termino");


            string filtro = " (1=1) ";

            if (Consultar.Equals("") == false)
            {
                var id = (Consultar);
                filtro = filtro + $" AND id= {id}";
            }

            conexao.Open();


            var commando = new MySqlCommand($@"SELECT contratos.id, contratos.id_pedido, contratos.data_inicio, contratos.data_fim, cliente.nome FROM contratos INNER JOIN cliente ON contratos.id_pedido = cliente.id WHERE contratos.id_pedido={Consultar};", conexao);
            var reader = commando.ExecuteReader();

            while (reader.Read())
            {
                var linha = tabela.NewRow();
                linha["id"] = reader.GetInt32("id");
                linha["id_pedido"] = reader.GetInt32("id_pedido");
                linha["Data de Inicio"] = reader.GetDateTime("data_inicio").ToShortDateString();
                linha["Data de Termino"] = reader.GetDateTime("data_fim").ToShortDateString();
                tabela.Rows.Add(linha);
            }
            return tabela;
        }
    }
}  