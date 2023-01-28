<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="estoque.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.estoque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Controle_de_Estoque.css" />
    <div class="row text-center">
        <h1>Controle de Estoque</h1>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-4">
            <p>Código de barras:</p>
            <asp:TextBox runat="server" ID="TxtCodigodebarras" CssClass="form-control"></asp:TextBox>
            <p>Produto:</p>
            <asp:TextBox runat="server" ID="txtProduto" CssClass="form-control"></asp:TextBox>
            <p>Data de validade:</p>
            <asp:TextBox runat="server" ID="TxtValidade" CssClass="form-control"></asp:TextBox>
            <p>Preço:</p>
            <asp:TextBox runat="server" ID="TxtPreco" CssClass="form-control"></asp:TextBox>
            <p>Quantidade:</p>
            <asp:TextBox runat="server" ID="TxtQuantidade" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-8">
            <p>Menu:</p>
            <asp:DropDownList runat="server" ID="ddlMenu" AutoPostBack="true" OnSelectedIndexChanged="ddlMenu_SelectedIndexChanged">
                <asp:ListItem Text="Selecione um menu" Value=""></asp:ListItem>
                <asp:ListItem Text="Entrada" Value="entrada"></asp:ListItem>
                  <asp:ListItem Text="Salada" Value="salada"></asp:ListItem>
                  <asp:ListItem Text="Jantar" Value="jantar"></asp:ListItem>
                  <asp:ListItem Text="Bebida" Value="bebida"></asp:ListItem>
                  <asp:ListItem Text="Sobremesa" Value="sobremesa"></asp:ListItem>
            </asp:DropDownList>
            <asp:Label runat="server" ID="lblMenu"></asp:Label>
       

        </div>
    </div>
</asp:Content>
