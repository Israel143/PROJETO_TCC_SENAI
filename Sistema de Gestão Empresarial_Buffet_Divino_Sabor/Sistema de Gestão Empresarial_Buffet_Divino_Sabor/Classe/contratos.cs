﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Classe
{
    public class contratos
    {
        public int id { get; set; }
        public int id_Pedido { get; set; }
        public DateTime data_inicio { get; set; }
        public DateTime data_fim{ get; set; }

    }
}