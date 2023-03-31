using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Menu
{
    public partial class Cadastrodepratos : System.Web.UI.Page
    {

        private MySqlConnection conexao;
        protected void Page_Load(object sender, EventArgs e)
        {
            conexao = new MySqlConnection(SiteMaster.ConnectionString);
            if (Session["empresaID"] == null || string.IsNullOrEmpty(Session["empresaID"].ToString()))
            {
                // redireciona para a página de login
                Response.Redirect("~/Login/Login");
            }

            if (!IsPostBack)
            {

            }
        }

        protected void btnCadastrarPrato_Click(object sender, EventArgs e)
        {


        }

        protected void ddlMenu_SelectedIndexChanged(object sender, EventArgs e)
        {
            var tipo = new Classe.escolha();
            tipo.categoria = ddlMenu.SelectedValue;
            RepeatPratos.DataSource = new Negocio.escolha().ReadPratos(tipo);
            RepeatPratos.DataBind();
        }

        protected void ddlCategoria_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCadastra_Click(object sender, EventArgs e)
        {
            var praton = new Classe.escolha();
            praton.nome = txtNome.Text;
            praton.categoria = ddlCategoria.Text;
            praton.preco = Convert.ToInt32(txtPreco.Text);
            var cadastrar = new Negocio.escolha().create(praton);

            if(cadastrar == true)
            {
                SiteMaster.ExibirAlert(this, "Prato Cadastrado com Sucesso!");
            }

        }
    }



}