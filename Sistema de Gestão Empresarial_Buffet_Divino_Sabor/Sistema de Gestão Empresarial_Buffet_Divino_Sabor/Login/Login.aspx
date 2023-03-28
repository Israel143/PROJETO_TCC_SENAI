<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="login.css"/>
    <script src="../../JS PADRÃO/NavBarPadrao.js"></script>

    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <div class="sidebox">
            <div class="element-1">
            <div class="row">
                <h1 class="title-box">Login</h1>
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
                    <asp:Button runat="server" ID="btn_login" Text="Login" Onclick="btn_login_Click" CssClass="button" />
                    <asp:Button runat="server" ID="btn_cadastro" Text="Cadastro" Onclick="btn_cadastro_Click" CssClass="button" />
                </div>
            </div>
            </div>
        </div>
    </div>
    <div class="col-sm-3"></div>

</asp:Content>
