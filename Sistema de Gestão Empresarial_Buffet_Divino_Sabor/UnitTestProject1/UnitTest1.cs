using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            var emails = new string[]
            {
                "fulano@email.com",
                "sicrano@email.com",
                "beltrano@email.com",
                "deltrano@email.com",
                "fulano001@email.com"
            };
            var senhas = new string[]
            {
                "fulano123456",
                "sicrano123456",
                "beltrano123456",
                "deltrano123456",
                "fulano00123456"
            };

            for(int i=0; i<emails.Length;i++)
            {
                var login = new Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Classe.Login();
                login.email = emails[i];
                login.senha = senhas[i];

                var resultado = new Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio.login().Create(login);
                Assert.AreEqual(true, resultado);

                var leitura = new Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Classe.Login();
                leitura.email = emails[i];
                leitura.senha = senhas[i];

                var Login_bd = new Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio.login().Read(leitura);
                Assert.AreEqual(true, Login_bd);
            }


            

            
        }
    }
}
