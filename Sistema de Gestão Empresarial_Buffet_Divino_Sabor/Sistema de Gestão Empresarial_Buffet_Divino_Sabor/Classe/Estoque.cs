using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Classe
{
    public class estoque
    {
        public int id { get; set; }
        public int codigo_de_barra { get; set; }
        public int id_fornecedor { get; set; }
        public string nome_produto { get; set; }
        public DateTime validade { get; set; }
        public double preco_unidade { get; set; }
        public int quantidade { get; set; }
        public string seguimento { get; set; }

    }
}