using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Caixa.Entrada
{
    public partial class MovEntrada : System.Web.UI.Page
    {
        private MySqlConnection conexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
        }

        protected void btn_faturar_Click(object sender, EventArgs e)
        {
            var CaixaIn = new Classe.Caixa();
            //Criar uma nova movimentação de entrada

            var MoveIn = new Negocio.Caixa().CreateIn(CaixaIn);

            if (MoveIn == true)
            {
                SiteMaster.ExibirAlertRedirecionar(this, "Movimento de entrada realizado com sucesso!", "MovEntrada.aspx");
                conexao.Close();
            }
        }
    }
}