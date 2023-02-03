<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Pedidos.Pedidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
    </header>
    <div id="content">
        <div id="pedidosbox">
            <div class="row">
                <div id="novos" class="col-md-4">
                    <asp:Repeater ID="repeaterOrders" runat="server">
                        <ItemTemplate>
                            <div id="pedidosnovos">
                                <p>Nome do cliente: <%# Eval("nome") %></p>
                                <p>Data do pedido: <%# Eval("data") %></p>
                                <button type="button">Ver mais</button>
                                <div id="infoadd" class="row">
                                    <div class="row">
                                        <p><strong>Pedido</strong></p>

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
