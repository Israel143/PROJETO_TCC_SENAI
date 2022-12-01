using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Classe
{
    public class pedidos
    {
        public int Id { get; set; }
        public int Id_Cliente { get; set; }
        public DateTime Data { get; set; }
        public int Id_Menu { get; set; }
        public string Avaliacao { get; set; }


    }
}