using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Classe
{
    public class fornecedores
    {
        public int id { get; set; }
        public string nome { get; set; }
        public string contato { get; set; }
        public string seguimento { get; set; }
        public string cnpj { get; set; }
        public bool ativo { get; set; }
        public string TextoAtivo { get => ativo ? "SIM" : "NÃO"; }
        public string NumeroAtivo { get => ativo ? "1" : "0"; }

    }
}