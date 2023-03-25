<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Pedidos.Pedidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="EstiloPedidos.css" />
        <script src="JSPedidos.js"></script>
        <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
    </header>
    <div id="content">
        <div id="pedidosbox" style="margin-top: 50px;">
            <div class="row">
                <div id="novos" class="col-md-4">
                    <asp:Repeater ID="repeaterOrders" runat="server">
                        <ItemTemplate>
                            <div id="pedidosnovos" class="OrderBox">
                                <div class="row">
                                    <div class="col-md-6">
                                        <p>Nome do cliente: <%# Eval("nome") %></p>
                                    </div>
                                    <div class="col-md-6">
                                        <p>Data do pedido: <%# Eval("data") %></p>
                                    </div>
                                </div>
                                <button class="btnVerMais btn" data-id="<%# Eval("Id") %>" type="button">Ver Mais</button>
                                <asp:Button runat="server" CssClass="btn" ID="btnCon" ClientIDMode="static" Text="Contrato" OnClick="btnCon_Click" CommandArgument=<%# Eval("Id") %>/>

                                <div class="InfoAdd InfoBox" id="InfoAdd<%# Eval("Id") %>" style="display: none;">
                                    <div class="row" style="padding-left: 10px">
                                        <p><strong>Pedido</strong></p>
                                    </div>
                                    <div class="row">
                                        <ul>
                                            <li>Entrada: <%# Eval("entrada") %></li>
                                            <li>Salada: <%# Eval("salada") %></li>
                                            <li>Jantar: <%# Eval("jantar") %></li>
                                            <li>Sobremesa: <%# Eval("sobremesa") %></li>
                                        </ul>
                                    </div>
                                    <div class="row" style="text-align:center">
                                        <asp:Button runat="server" CssClass="btn" ID="btnAcept" ClientIDMode="static" Text="Aceitar" OnClick="btnAcept_Click" CommandArgument=<%# Eval("Id") %>/>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div id="andamento" class="col-md-4">
                    <asp:Repeater ID="repeaterOrdersAcepted" runat="server">
                        <ItemTemplate>
                            <div id="pedidosnovos" class="OrderBox">
                                <div class="row">
                                    <div class="col-md-6">
                                        <p>Nome do cliente: <%# Eval("nome") %></p>
                                    </div>
                                    <div class="col-md-6">
                                        <p>Data do pedido: <%# Eval("data") %></p>
                                    </div>
                                </div>
                                <button class="btnVerMais btn" data-id="<%# Eval("Id") %>" type="button">Ver Mais</button>
                                <div class="InfoAdd InfoBox" id="InfoAdd<%# Eval("Id") %>" style="display: none;">
                                    <div class="row" style="padding-left: 10px">
                                        <p><strong>Pedido</strong></p>
                                    </div>
                                    <div class="row">
                                        <ul>
                                            <li>Entrada: <%# Eval("entrada") %></li>
                                            <li>Salada: <%# Eval("salada") %></li>
                                            <li>Jantar: <%# Eval("jantar") %></li>
                                            <li>Sobremesa: <%# Eval("sobremesa") %></li>
                                        </ul>
                                    </div>
                                    <div class="row" style="text-align:center">
                                        <asp:Button runat="server" CssClass="btn" Text="Finalizar" ID="btnFinish" OnClick="btnFinish_Click" CommandArgument=<%# Eval("Id") %> />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div id="concluidos" class="col-md-4">
                    <asp:Repeater ID="repeaterFinishedOrders" runat="server">
                        <ItemTemplate>
                            <div id="pedidosnovos" class="OrderBox">
                                <div class="row">
                                    <div class="col-md-6">
                                        <p>Nome do cliente: <%# Eval("nome") %></p>
                                    </div>
                                    <div class="col-md-6">
                                        <p>Data do pedido: <%# Eval("data") %></p>
                                    </div>
                                </div>
                                <button class="btnVerMais btn" data-id="<%# Eval("Id") %>" type="button">Ver Mais</button>
                                <div class="InfoAdd InfoBox" id="InfoAdd<%# Eval("Id") %>" style="display: none;">
                                    <div class="row" style="padding-left: 10px">
                                        <p><strong>Pedido</strong></p>
                                    </div>
                                    <div class="row">
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
            </div>
        </div>
    </div>
</asp:Content>
