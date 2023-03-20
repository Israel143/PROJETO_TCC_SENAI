using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor
{
    public partial class SiteMaster : MasterPage
    {
        public static string ConnectionString = "Server=MYSQL8003.site4now.net;Database=db_a95df4_gevent;Uid=a95df4_gevent;Pwd=wac26841379";
        public static string KeyAES = "kjbflkajsb";

        protected void Page_Load(object sender, EventArgs e)
        {



        }
        public static void ExibirAlert(Gestão.Login login, Page page, string mensagem)
        {
            page.ClientScript.RegisterStartupScript(
                 page.GetType(),
                 "MessageBox" + Guid.NewGuid(),
                 "<script language='javascript'>alert('" + mensagem + "');</script>"
              );
        }

        public static void ExibirAlertRedirecionar(Page page, string mensagem, string pagina)
        {
            page.ClientScript.RegisterStartupScript(
                 page.GetType(),
                 "MessageBox" + Guid.NewGuid(),
                 "<script language='javascript'>alert('" + mensagem + "');window.location='" + pagina + "';</script>"
              );
        }

        public static void ExibirAlert(Page page, string mensagem)
        {
            page.ClientScript.RegisterStartupScript(
                 page.GetType(),
                 "MessageBox" + Guid.NewGuid(),
                 "<script language='javascript'>alert('" + mensagem + "');</script>"
              );
        }

    }
}
