<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro de Funcionários.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Cadastro_de_Usuários" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container-fluid">
        <div class="row text-center">
            Cadastro de Usuário
        </div>
        <div class="row">
            <div class="col-sm-2">
                Email:
            </div>
            <div class="col-sm-8">
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                <asp:Label runat="server" ID="lblEmail" ForeColor="Red"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">
                Senha:
            </div>
            <div class="col-sm-8">
                <asp:TextBox runat="server" ID="txtSenha" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">
                Confirmar Senha:
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
