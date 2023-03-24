<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Clientes.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Menu.css" />
    <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
    <script src="JavaScript.js"></script>

    <div id="conteudo">
        <div id="selecao" class="col-sm-5">
            <div class="row">
                <p>Menu:</p>
                <asp:DropDownList runat="server" ID="ddlMenu" OnSelectedIndexChanged="ddlMenu_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Text="Selecione um menu"></asp:ListItem>
                    <asp:ListItem Text="Entrada" Value="entrada"></asp:ListItem>
                    <asp:ListItem Text="Salada" Value="salada"></asp:ListItem>
                    <asp:ListItem Text="Jantar" Value="jantar"></asp:ListItem>
                    <asp:ListItem Text="Bebida" Value="bebida"></asp:ListItem>
                    <asp:ListItem Text="Sobremesa" Value="sobremesa"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <asp:Repeater ID="RepeatPratos" runat="server">
                <ItemTemplate>
                    <div id="opcoes">
                        <div class="col-sm-8">
                            <div id="nome">
                                <asp:Label ID="LblNome" runat="server" Text='<%# Eval("nome") %>'></asp:Label>
                            </div>
                            <div id="preco">
                                <asp:Label ID="LblPreco" runat="server" Text='<%# Eval("preco") %>'></asp:Label>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <asp:Button ID="BtnSelect" OnClick="BtnSelect_Click" runat="server" ClientIDMode="Static" Text="Escolher Prato" CommandArgument='<%# Eval("Id") %>' />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="col-sm-2"></div>
        <div id="pedido" class="col-sm-5">
            <div id="carrinho">
                <p>CARRINHO</p>
                <div id="valorTotal">
                    Total da compra: R$<asp:Label runat="server" ID="lblValorT"></asp:Label>
                </div>
                <div id="selecionados" class="row">
                    <asp:Repeater ID="RepeatPratoSelected" runat="server">
                        <ItemTemplate>
                            <div id="opcoes">
                                <div class="col-sm-8">
                                    <div id="categoria">
                                        <asp:Label ID="LblCategoria" runat="server" Text='<%# Eval("categoria") %>'></asp:Label>
                                    </div>

                                    <div id="NomeSelected">
                                        <asp:Label ID="LblNomeSelected" runat="server" Text='<%# Eval("nome") %>'></asp:Label>
                                    </div>

                                    <div id="PrecoSelected">
                                        <asp:Label ID="LblPrecoSelected" runat="server" Text='<%# Eval("preco") %>'></asp:Label>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <asp:Button ID="descartar" runat="server" Text="Descartar" OnClick="descartar_Click" CommandArgument='<%# Eval("Id") %>' />
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div id="finaliza" class="row">
                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal" data-dismiss="modal">Finalizar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                    <button type="button" class="close" data-dismiss="" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                    <asp:Button ID="btnConcluir" runat="server" data-dimiss="modal" Text="Aceitar" class="btn btn-primary" OnClick="btnConcluir_Click" />
                </div>
            </div>
            <!-- /.modal-content -->
            <!-- /.modal-dialog -->
        </div>
        <!-- /.MODAL -->
    </div>
</asp:Content>
