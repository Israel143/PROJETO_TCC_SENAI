using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Classe
{
    public class estoque
    {

        public string Codigo_de_barras { get; set; }
        public int Id_Fornecedor { get; set; }
        public string Nome_Produto { get; set; }
        public DateTime Validade { get; set; }
        public double Preco_Unidade { get; set; }
        public int Quantidade { get; set; }

    }
}