using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Classe
{
    public class produto
    {
        public int Id { get; set; }
        public string Codigo_Barras { get; set; }
        public int Id_Fornecedor { get; set; }
        public string Produto { get; set; }
        public DateTime Validade { get; set; }
        public double Preco { get; set; }
        public string Quantidade { get; set; }
        public string Tipo { get; set; }

    }
}