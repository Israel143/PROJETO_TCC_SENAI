<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login Cliente.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Login.Login_Cliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="clientesestilo.css" />
        <script src="Cliente.js"></script>
        <script src="JavaScript.js"></script>
        <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
        <link rel="stylesheet" href="login.css" />
    </header>
    <div id="loginCli" style="display: block" class="sidebox">
        <div class="element-1">
            <div class="row">
                <h1 class="title-box">Entrar como cliente</h1>
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
                <div class="row" style="text-align: center; margin-left: 340px; margin-top: 30px">
                    <asp:Button runat="server" ID="btn_Login_Cliente" Text="Login" OnClick="btn_Login_Cliente_Click" CssClass="my-btn-lg" />
                    <div style="width: 150px; margin-top: 20px; cursor: pointer" id="cadastro">
                        <a onclick="showDiv('cadastroCli')" style="color: white; font-family: serif" href="#" type="button">Não é um cliente ainda? Cadastre-se agora!</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="cadastroCli" style="display: none" class="sidebox-cad">
        <div id="infos" style="margin: 30px 50px 50px 50px">
            <div class="row" id="titulo">
                <h1 class="title-box">Cadastro de Cliente</h1>
            </div>
            <div class="row" id="info1" style="width: 500px">
                <div class="col-md-6">
                    <div class="row">
                        <label class="lbl-box-md">Nome</label>
                    </div>
                    <div class="row">
                        <asp:TextBox runat="server" CssClass="txt-box-md" ID="NomeCad"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <label class="lbl-box-md">Telefone</label>
                    </div>
                    <div class="row">
                        <asp:TextBox runat="server" CssClass="txt-box-md" ID="ContatoCad"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row" id="info2" style="width: 500px; margin-top: 10px">
                <div class="col-md-6">
                    <div class="row">
                        <label class="lbl-box-md">Email</label>
                    </div>
                    <div class="row">
                        <asp:TextBox runat="server" CssClass="txt-box-md" ID="EmailCad"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <label class="lbl-box-md">Senha</label>
                    </div>
                    <div class="row">
                        <asp:TextBox runat="server" CssClass="txt-box-md" ID="SenhaCad"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row" id="cadastrar" style="text-align: center; margin-left: 200px; margin-top: 30px">
                <asp:Button runat="server" ID="btnCadastrar" Text="Cadastrar" OnClick="btnCadastrar_Click" CssClass="my-btn-lg" />
                <div style="width: 150px; margin-top: 20px; cursor: pointer" id="login">
                    <a onclick="showDiv('loginCli')" style="color: white; font-family: serif" href="#" type="button">Já tem um cadastro? Acesse sua conta!</a>
                </div>
            </div>
        </div>
    </div>




</asp:Content>
