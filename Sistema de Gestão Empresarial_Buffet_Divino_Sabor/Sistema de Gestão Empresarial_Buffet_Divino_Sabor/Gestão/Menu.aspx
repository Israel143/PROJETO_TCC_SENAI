<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class ="col-sm-8">
     <p>Menu:</p>
     <asp:DropDownList runat ="server" id="ddlMenu" OnSelectedIndexChanged="ddlMenu_SelectedIndexChanged" AutoPostBack="true" >
         <asp:ListItem Text="Selecione um menu"></asp:ListItem>
          <asp:ListItem Text="Entrada" Value="entrada"></asp:ListItem>
                  <asp:ListItem Text="Salada" Value="salada"></asp:ListItem>
                  <asp:ListItem Text="Jantar" Value="jantar"></asp:ListItem>
                  <asp:ListItem Text="Bebida" Value="bebida"></asp:ListItem>
                  <asp:ListItem Text="Sobremesa" Value="sobremesa"></asp:ListItem>
            </asp:DropDownList>
            <asp:Label runat="server" ID="lblMenu1"></asp:Label>
   <asp:Button ID="Btnpesquisar" runat="server" OnClick ="Btnpesquisar_Click" CssClass="btn btn-sucess" Text="Pesquisar prato" />

   
   
       
   
 </div>
</asp:Content>
