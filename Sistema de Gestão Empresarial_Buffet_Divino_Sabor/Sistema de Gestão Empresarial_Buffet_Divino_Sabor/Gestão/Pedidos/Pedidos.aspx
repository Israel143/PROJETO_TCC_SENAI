<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Pedidos.Pedidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="EstiloPedidos.css" />
        <script src="JSPedidos.js"></script>
    </header>
    <div id="content">
        <div id="pedidosbox">
            <div class="row">
                <div id="novos" class="col-md-4">
                    <asp:Repeater ID="repeaterOrders" runat="server">
                        <ItemTemplate>
                            <div id="pedidosnovos" class="OrderBox">
                                <p>Nome do cliente: <%# Eval("nome") %></p>
                                <p>Data do pedido: <%# Eval("data") %></p>
                                <button class="btnVerMais" data-id="<%# Eval("Id") %>" type="button">Ver Mais</button>
                                 <div class="InfoAdd InfoBox" id="InfoAdd<%# Eval("Id") %>" style="display: none;">
                                    <div class="row">
                                        <p><strong>Pedido</strong></p>
                                        <ul>
                                            <li>Entrada: <%# Eval("entrada") %></li>
                                            <li>Salada: <%# Eval("salada") %></li>
                                            <li>Jantar: <%# Eval("jantar") %></li>
                                            <li>Sobremesa: <%# Eval("sobremesa") %></li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div id="andamento" class="col-md-4"></div>
                <div id="concluidos" class="col-md-4"></div>
            </div>
        </div>
    </div>
</asp:Content>
