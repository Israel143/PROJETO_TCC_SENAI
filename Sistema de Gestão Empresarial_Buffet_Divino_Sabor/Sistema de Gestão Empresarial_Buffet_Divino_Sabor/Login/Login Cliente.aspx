<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login Cliente.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Login.Login_Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="clientesestilo.css" />
        <script src="JavaScript.js"></script>
        <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
    </header>
    <!--Barra Secundaria!-->
        <a onclick="showDiv('Cliente');return;" href="#" class="item-nav" type="button">Cliente</a>
        <link rel="stylesheet" href="login.css"/>

    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <div class="sidebox">
            <div class="element-1">
            <div class="row">
                <h1 class="title-box">Cadastro de Clientes</h1>
            </div>
            <div class="row">
                <div class="row">
                    <asp:Label runat="server" ID="lbl_User" CssClass="lbl-box">E-mail</asp:Label>
                    <asp:TextBox runat="server" ID="txt_User" CssClass="txt-box"></asp:TextBox>
                </div>
                <div class="row">
                    <asp:Label runat="server" ID="lbl_Pswd" CssClass="lbl-box">Senha</asp:Label>
                    <asp:TextBox runat="server" ID="txt_Pswd" TextMode="Password" CssClass="txt-box"></asp:TextBox>
                </div>
                <div class="row" style="margin-left:30px">
                    <asp:Button runat="server" ID="btn_Login_Cliente" Text="Login" Onclick="btn_Login_Cliente_Click" CssClass="button" />
                    <asp:Button runat="server" ID="btn_Cadastro_Cliente" Text="Cadastro" Onclick="btn_Cadastro_Cliente_Click" CssClass="button" />
                </div>
            </div>
            </div>
        </div>
    </div>
    <div class="col-sm-3"></div>

  
      

</asp:Content>
