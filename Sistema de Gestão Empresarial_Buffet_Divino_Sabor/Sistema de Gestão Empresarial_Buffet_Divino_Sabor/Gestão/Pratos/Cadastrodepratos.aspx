<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastrodepratos.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Menu.Cadastrodepratos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
    <link rel="stylesheet" href="../../Clientes/Clientes.css" />
    <link rel="stylesheet" href="../../CSS PADRÃO/EstiloPadrao.css" />

    <div id="conteudo">
        <div id="selecao" class="col-sm-5 select-box">
            <div class="row">
                <h2 class="title">MENU</h2>
                <asp:DropDownList runat="server" ID="ddlMenu" CssClass="ddl-md" OnSelectedIndexChanged="ddlMenu_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Text="Selecione um menu"></asp:ListItem>
                    <asp:ListItem Text="Entrada" Value="entrada"></asp:ListItem>
                    <asp:ListItem Text="Salada" Value="salada"></asp:ListItem>
                    <asp:ListItem Text="Jantar" Value="jantar"></asp:ListItem>
                    <asp:ListItem Text="Bebida" Value="bebida"></asp:ListItem>
                    <asp:ListItem Text="Sobremesa" Value="sobremesa"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div id="pratos" class="intern-box" style="text-align: justify">
                <asp:Repeater ID="RepeatPratos" runat="server">
                    <ItemTemplate>
                        <div id="opcoes" class="row option-box">
                            <div class="col-sm-8" style="position: absolute; left: 0">
                                <div id="nome">
                                    <asp:Label ID="LblNome" runat="server" Text='<%# Eval("nome") %>'></asp:Label>
                                </div>
                                <div id="preco">
                                    <asp:Label ID="LblPreco" runat="server" Text='<%# Eval("preco") %>'></asp:Label>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="col-sm-2"></div>
        <div id="cadatro" class="col-sm-5 select-box" style="color: #942828; font-family:serif;">
            <div id="title">
                <h2 class="title">Cadastrar novo prato</h2>
            </div>
            <div class="row" style="margin-bottom:10px">
                <div class="row">
                    <asp:Label runat="server" ID="lblNome" Text="Nome"></asp:Label>
                </div>
                <div class="row">
                    <asp:TextBox runat="server" CssClass="txtbox" ID="txtNome"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-bottom:10px">
                <div class="row">
                    <asp:Label runat="server" ID="lblCategoria" Text="Categoria"></asp:Label>
                </div>
                <div class="row">
                    <asp:DropDownList runat="server" ID="ddlCategoria" CssClass="ddl-md">
                        <asp:ListItem Text="Selecione um menu"></asp:ListItem>
                        <asp:ListItem Text="Entrada" Value="entrada"></asp:ListItem>
                        <asp:ListItem Text="Salada" Value="salada"></asp:ListItem>
                        <asp:ListItem Text="Jantar" Value="jantar"></asp:ListItem>
                        <asp:ListItem Text="Bebida" Value="bebida"></asp:ListItem>
                        <asp:ListItem Text="Sobremesa" Value="sobremesa"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row" style="margin-bottom:10px">
                <div class="row">
                    <asp:Label runat="server" ID="lblPreco" Text="Preço"></asp:Label>
                </div>
                <div class="row">
                    <asp:TextBox runat="server" CssClass="txtbox" ID="txtPreco"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-left:115px; margin-top:30px">
                <asp:Button runat="server" ID="btnCadastra" Text="Cadastrar" CssClass="my-btn-lg" OnClick="btnCadastra_Click" />
            </div>
        </div>
    </div>
</asp:Content>
