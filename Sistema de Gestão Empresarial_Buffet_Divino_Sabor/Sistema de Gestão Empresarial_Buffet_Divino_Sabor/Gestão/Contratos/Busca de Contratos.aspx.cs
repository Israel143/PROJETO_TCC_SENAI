using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Contratos
{
    public partial class Contratos : System.Web.UI.Page
    {
        private MySqlConnection conexao;
        private DateTime data_inicio;
       

        protected void Page_Load(object sender, EventArgs e)
        {

            conexao = new MySqlConnection(SiteMaster.ConnectionString);
            if (IsPostBack)
            {


            }


        }

        protected void BtnPesquisar_Click(object sender, EventArgs e)
        {
            if (Consultar.Text == "")
            {
                SiteMaster.ExibirAlert(this, "É necessário colocar o Id do Pedido");
                return;
            }


            DataTable tabela = new DataTable();

            tabela.Columns.Add("id");
            tabela.Columns.Add("id_pedido");
            tabela.Columns.Add("Data de Inicio");
            tabela.Columns.Add("Data de Termino");


            string filtro = " (1=1) ";

            if (Consultar.Text.Equals("") == false)
            {
                var id = (Consultar.Text);
                filtro = filtro + $" AND id= {id}";
            }

            conexao.Open();


            var commando = new MySqlCommand($@"SELECT contratos.id, contratos.id_pedido, contratos.data_inicio, contratos.data_fim, cliente.nome FROM contratos INNER JOIN cliente ON contratos.id_pedido = cliente.id WHERE contratos.id_pedido={Consultar.Text};", conexao);
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
            Session["tabela"] = tabela;
            grd_Contratos.DataSource = tabela;
            grd_Contratos.DataBind();
        }

        protected void grd_Contratos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "excluir")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                var tabela = (DataTable)Session["tabela"];
                conexao.Open();
                var comando = new MySqlCommand("DELETE FROM contratos WHERE id = " + tabela.Rows[index]["id"].ToString(), conexao);
                comando.ExecuteNonQuery();
                conexao.Close();

                SiteMaster.ExibirAlert(this, "Contrato excluído com sucesso!");
                BtnPesquisar_Click(null, null);
            }

            if (e.CommandName == "Visualizar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                var tabela = (DataTable)Session["tabela"];
                var id_pedido = tabela.Rows[index]["id"].ToString();

                int id = 0;
                DateTime data_incio = DateTime.Now;
                DateTime data_fim = DateTime.Now;
                conexao.Open();
                var commando = new MySqlCommand($"SELECT id,data_inicio,data_fim FROM contratos WHERE id = " + id_pedido, conexao);
                var reader = commando.ExecuteReader();
                while (reader.Read())
                {
                    id = reader.GetInt32("id");
                    data_inicio = reader.GetDateTime("data_inicio");
                    data_fim = reader.GetDateTime("data_fim");
                }
                conexao.Close();
                Response.Redirect($"../Contratos/Busca de Contratos.aspx?id={id}&data_inicio={data_incio}&data_fim={data_fim}&id_pedido={id_pedido}");



            }
        }
    }
}