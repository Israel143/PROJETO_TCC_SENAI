    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MovEntrada.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Caixa.Entrada.MovEntrada" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="CampoA">
        <asp:DropDownList runat="server" ID="list_Produto"></asp:DropDownList>
        <asp:TextBox runat="server" ID="txt_qtd"></asp:TextBox>
    </div>
    <div id="CampoB">
        <asp:TextBox runat="server" ID="txt_valorUni"></asp:TextBox>
        <asp:TextBox runat="server" ID="txt_ValorT"></asp:TextBox>
        <asp:Button runat="server" ID="btn_faturar" OnClick="btn_faturar_Click" />
    </div>
</asp:Content>
