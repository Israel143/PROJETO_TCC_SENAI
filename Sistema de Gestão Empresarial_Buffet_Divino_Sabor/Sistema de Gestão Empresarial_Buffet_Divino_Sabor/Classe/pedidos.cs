﻿ using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Classe
{
    public class pedidos
    {
        public int id { get; set; }
        public int id_cliente { get; set; }
        public DateTime data { get; set; }
        public int id_menu { get; set; }
        public string avaliacao { get; set; }


    }
}