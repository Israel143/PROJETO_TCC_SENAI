using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Classe
{
    public class Caixa
    {
        public int id { get; set; }
        public bool entrada { get; set; }
        public bool saida { get; set; }
        public DateTime data { get; set; }
        public double valorUni { get; set; }
        public double valorT { get; set; }
        public int id_produto { get; set; }
    }
}