<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Pedidos.Pedidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="EstiloPedidos.css" />
        <link rel="stylesheet" type="text/css" href="../../CSS PADRÃO/EstiloPadrao.css" />
        <script src="JSPedidos.js"></script>
        <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
    </header>
    <div id="content" style="position: absolute; right: 300px">
        <div id="pedidosbox" style="margin-top: 50px;">
            <div class="row">
                <div id="novos" class="col-md-4 back-box">
                    <h2 class="title-1" style="text-align:center">Novos</h2>
                    <asp:Repeater ID="repeaterOrders" runat="server">
                        <ItemTemplate>
                            <div id="pedidosnovos" class="OrderBox">
                                <div class="col-lg-12">
                                    <div class="row">
                                        <p>Nome do cliente: <%# Eval("nome") %></p>
                                    </div>
                                    <div class="row">
                                        <p>Data do pedido: <%# Eval("data") %></p>
                                    </div>
                                </div>
                                <button class="btnVerMais mybtn-w-p" data-id="<%# Eval("Id") %>" type="button">Ver Mais</button>
                                

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
                                    <div class="row" style="text-align: center">
                                        <asp:Button runat="server" CssClass="mybtn-w-p" ID="btnAcept" ClientIDMode="static" Text="Aceitar" OnClick="btnAcept_Click" CommandArgument='<%# Eval("Id") %>' />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div id="andamento" class="col-md-4 back-box">
                    <h2 class="title-1" style="text-align:center">Em andamento</h2>
                    <asp:Repeater ID="repeaterOrdersAcepted" runat="server">
                        <ItemTemplate>
                            <div id="pedidosnovos" class="OrderBox">
                                <div class="col-lg-12">
                                    <div class="row">
                                        <p>Nome do cliente: <%# Eval("nome") %></p>
                                    </div>
                                    <div class="row">
                                        <p>Data do pedido: <%# Eval("data") %></p>
                                    </div>
                                </div>
                                <button class="btnVerMais mybtn-w-p" data-id="<%# Eval("Id") %>" type="button">Ver Mais</button>
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
                                    <div class="row" style="text-align: center">
                                        <asp:Button runat="server" CssClass="mybtn-w-p" Text="Finalizar" ID="btnFinish" OnClick="btnFinish_Click" CommandArgument='<%# Eval("Id") %>' />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div id="concluidos" class="col-md-4 back-box">
                    <h2 class="title-1" style="text-align:center">Finalizados</h2>
                    <asp:Repeater ID="repeaterFinishedOrders" runat="server">
                        <ItemTemplate>
                            <div id="pedidosnovos" class="OrderBox">
                                <div class="col-lg-12">
                                    <div class="row">
                                        <p>Nome do cliente: <%# Eval("nome") %></p>
                                    </div>
                                    <div class="row">
                                        <p>Data do pedido: <%# Eval("data") %></p>
                                    </div>
                                </div>
                                <button class="btnVerMais mybtn-w-p" data-id="<%# Eval("Id") %>" type="button">Ver Mais</button>
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
