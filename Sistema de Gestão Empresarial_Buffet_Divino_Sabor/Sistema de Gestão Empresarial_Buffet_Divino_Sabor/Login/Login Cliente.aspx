<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login Cliente.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Login.Login_Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="clientesestilo.css" />
        <script src="Cliente.js"></script>
        <script src="JavaScript.js"></script>
        <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
        <link rel="stylesheet" href="login.css"/>
    </header>
        <div id="loginCli" style="display:block" class="sidebox">
            <div class="element-1">
            <div class="row">
                <h1 class="title-box">Cadastro de Clientes</h1>
            </div>
            <div class="row">
                <div class="row">
                    <asp:Label runat="server" ID="lbl_User" CssClass="lbl-box">E-mail</asp:Label>
                    <asp:TextBox runat="server" ID="txt_User" CssClass="txt-box-lg"></asp:TextBox>
                </div>
                <div class="row">
                    <asp:Label runat="server" ID="lbl_Pswd" CssClass="lbl-box">Senha</asp:Label>
                    <asp:TextBox runat="server" ID="txt_Pswd" TextMode="Password" CssClass="txt-box-lg"></asp:TextBox>
                </div>
                <div class="row" style="text-align:center; margin-left:340px; margin-top:30px">
                    <asp:Button runat="server" ID="btn_Login_Cliente" Text="Login" Onclick="btn_Login_Cliente_Click" CssClass="my-btn-lg" />
                    <div  style="width:150px; margin-top:20px; cursor:pointer" id="cadastro">
                        <a onclick="showDiv('cadastroCli')" style="color:white; font-family:serif" href="#" type="button">Não é um cliente ainda? Cadastre-se agora!</a>
                    </div>
                </div>
            </div>
            </div>
        </div>
        <div id="cadastroCli" style="display:none" class="sidebox-cad">

        </div>

  
      

</asp:Content>
