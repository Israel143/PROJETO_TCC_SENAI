using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Classe
{
    public class estoque
    {

        public string codigo_de_barras { get; set; }
        public int id_fornecedor { get; set; }
        public string nome_produto { get; set; }
        public DateTime validade { get; set; }
        public double preco_Unidade { get; set; }
        public int quantidade { get; set; }
        public string seguimento { get; set; }

    }
}