<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Clientes.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" href="Menu.css" />
<script src="../../JS PADRÃO/NavBarPadrao.js"></script>


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
     

          <asp:GridView ID="GridView2" CssClass= "Grid " runat="server" AutoGenerateColumns="false" style="width:800px; height:500px"
               OnRowCommand="GridView2_RowCommand">
      <Columns>
        <asp:BoundField DataField="id" HeaderText="ID" Visible="false" />
        <asp:BoundField DataField="escolha" HeaderText="ESCOLHA" />
       <asp:ButtonField CommandName="Escolha realizada" Text="Escolher prato" />

      </Columns>




</asp:GridView>  
 </div>
</asp:Content>
