using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Suporte
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlAssunto_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public static void ExibirAlert(Page page, string mensagem)
        {
            page.ClientScript.RegisterStartupScript(
                 page.GetType(),
                 "MessageBox" + Guid.NewGuid(),
                 "<script language='javascript'>alert('" + mensagem + "');</script>"
              );
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            // Configure as credenciais do remetente do e-mail
            string remetente = "0000507627@senaimgaluno.com.br";
            string destinatario = "09113271@senaimgdocente.com.br";
            string senha = "26841379";

            var smtpClient = new SmtpClient("smtp.gmail.com");
            smtpClient.Port = 587;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.EnableSsl = true;
            smtpClient.Timeout = 10000;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.Credentials = new NetworkCredential(remetente, senha);

            var mailMessage = new MailMessage();
            mailMessage.From = new MailAddress(remetente);
            mailMessage.To.Add(destinatario);
            mailMessage.Subject = ddlAssunto.SelectedValue;
            mailMessage.Body = txtConteudo.Text;

            if ((txtEmail.Text!="")&&(txtNome.Text!="") || txtNome.Text != "" || txtEmail.Text!="")
            {
                try
                {
                    ExibirAlert(this, "Email enviado com sucesso!");
                }
                catch (Exception ex)
                {
                    ExibirAlert(this, "Email enviado com sucesso!" + ex.Message);
                }
            }
            else
            {
                ExibirAlert(this, "Todos os campos devem ser preenchidos!");
            }
        }
    }
}