    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MovEntrada.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Caixa.Entrada.MovEntrada" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="CampoA">
        <asp:DropDownList runat="server" ID="list_Produto"></asp:DropDownList>
        <asp:Label runat="server" ID="lbl_Qtd" Text="Quantidade"></asp:Label>
        <asp:TextBox runat="server" ID="txt_qtd" OnTextChanged="txt_qtd_TextChanged" AutoPostBack="true"></asp:TextBox>
    </div>
    <div id="CampoB">
        <asp:Label runat="server" ID="lbl_ValorUni" Text="Valor Unitário"></asp:Label>
        <asp:TextBox runat="server" ID="txt_valorUni" ReadOnly="true"></asp:TextBox>
        <asp:Label runat="server" ID="lbl_ValorT" Text="Valor Total"></asp:Label>
        <asp:TextBox runat="server" ID="txt_ValorT" ReadOnly="true"></asp:TextBox>
        <asp:Button runat="server" ID="btn_faturar" OnClick="btn_faturar_Click" Text="Faturar" />
    </div>
</asp:Content>
