using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Classe
{
    public class produto
    {
        public int id { get; set; }
        public string codigo_barras { get; set; }
        public int id_fornecedor { get; set; }
        public string produto { get; set; }
        public DateTime validade { get; set; }
        public double preco { get; set; }
        public string quantidade { get; set; }
        public string tipo { get; set; }

    }
}