<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="clientesestilo.css" />
    <script src="Cliente.js"></script>
    <script src="JavaScript.js"></script>
    <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
    <link rel="stylesheet" href="login.css" />

    <div id="loginEmp" style="display: block" class="sidebox">
        <div class="element-1">
            <div class="row">
                <h1 class="title-box">Entrar como empresa</h1>
            </div>
            <div class="row">
                <div class="row">
                    <asp:Label runat="server" ID="LblEmail" CssClass="lbl-box">E-mail</asp:Label>
                    <asp:TextBox runat="server" ID="txt_User" CssClass="txt-box-lg"></asp:TextBox>
                </div>
                <div class="row">
                    <asp:Label runat="server" ID="Label2" CssClass="lbl-box">Senha</asp:Label>
                    <asp:TextBox runat="server" ID="txt_Pswd" TextMode="Password" CssClass="txt-box-lg"></asp:TextBox>
                </div>
                <div class="row" style="text-align: center; margin-left: 340px; margin-top: 30px">
                    <asp:Button runat="server" ID="btn_login" Text="Login" OnClick="btn_login_Click" CssClass="my-btn-lg" />
                    <div style="width: 150px; margin-top: 20px; cursor: pointer" id="cadastro">
                        <a onclick="showDivEmp('cadastroEmp')" style="color: white; font-family: serif" href="#" type="button">Não é uma empresa parceira? Cadastre-se agora!</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="cadastroEmp" style="display: none" class="sidebox-cad">
        <div id="infos" style="margin: 30px 50px 50px 50px">
            <div class="row" id="titulo">
                <h1 class="title-box">Cadastro de Empresa</h1>
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
                        <label class="lbl-box-md">CNPJ</label>
                    </div>
                    <div class="row">
                        <asp:TextBox runat="server" CssClass="txt-box-md" ID="CNPJ"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row" id="info2" style="width: 500px">
                <div class="col-md-6">
                    <div class="row">
                        <label class="lbl-box-md">Contato</label>
                    </div>
                    <div class="row">
                        <asp:TextBox runat="server" CssClass="txt-box-md" ID="ContatoCad"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <label class="lbl-box-md">Endereço</label>
                    </div>
                    <div class="row">
                        <asp:TextBox runat="server" CssClass="txt-box-md" ID="EnderecoCad"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row" id="info3" style="width: 500px; margin-top: 10px">
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
                <asp:Button runat="server" ID="btn_cadastro" Text="Cadastro" OnClick="btn_cadastro_Click" CssClass="my-btn-lg" />
                <div style="width: 150px; margin-top: 20px; cursor: pointer" id="login">
                    <a onclick="showDivEmp('loginEmp')" style="color: white; font-family: serif" href="#" type="button">Já tem um cadastro? Acesse sua conta!</a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
