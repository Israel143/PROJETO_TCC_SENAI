<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro de Funcionários.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Cadastro_de_Usuários" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container-fluid">
<link rel="stylesheet" href="Cadastro_de_Funcionarios.css" />
        <div class="row text-center">
            <h1>Cadastro de Usuário</h1> 
        </div>
        <div class="row">
            <div class="col-sm-2">
                <p>Email:</p>
            </div>
            <div class="col-sm-8">
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                <asp:Label runat="server" ID="lblEmail" ForeColor="Red"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">
               <p>Senha:</p> 
            </div>
            <div class="col-sm-8">
                <asp:TextBox runat="server" ID="txtSenha" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">
                <p>Confirmar Senha:</p>
            </div>
            <div class="col-sm-8">
                <asp:TextBox runat="server" ID="txtConfSenha" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <asp:Button runat="server" ID="btnCadastrarFuncionario" OnClick="btnCadastrarFuncionario_Click" CssClass="btn btn-success" Text="Cadastrar Novo Funcionário" />
        </div>
    </div>
</asp:Content>
