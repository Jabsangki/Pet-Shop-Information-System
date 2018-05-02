<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Animals.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<center>
  <div id="Groom" >
        <br />
        <table>
        <tr>
        <td>
            <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
                DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.9em" 
                ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#FFFBD6" />
                <DynamicSelectedStyle BackColor="#FFCC66" />
                <Items>
                    <asp:MenuItem NavigateUrl="~/MedicalProducts.aspx" Text="Medical Products" 
                        Value="Medical Products"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/GroomProducts.aspx" Text="Groom Products" 
                        Value="Groom Products"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PetAccessories.aspx" Text="Accessories" 
                        Value="Accessories"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Animals.aspx" Text="Animals" Value="Animals">
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Others.aspx" Text="Others" Value="Others">
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#FFCC66" />
            </asp:Menu>
            </td>
        </tr>
        </table>
        
      <br />
      <br />
      <asp:Label ID="Label1" runat="server" Text="Sort By:" Font-Size="Large"></asp:Label>
      <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" 
          onselectedindexchanged="DropDownList1_SelectedIndexChanged">

      <asp:ListItem>All</asp:ListItem>
          <asp:ListItem>dog</asp:ListItem>
          <asp:ListItem>cat</asp:ListItem>
          <asp:ListItem>fish</asp:ListItem>
          <asp:ListItem>rodents</asp:ListItem>
          <asp:ListItem>birds</asp:ListItem>
          <asp:ListItem>turtles</asp:ListItem>
      </asp:DropDownList>
      <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Go" 
          Font-Size="Large" />
      <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
          RepeatColumns="3" RepeatDirection="Horizontal">
          <ItemTemplate>
          <table border="1px">
          <tr>
          <td width="200px" height="300px">
              <br />
              <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProdImg") %>' Height="200px" Width="200px" />
              <br />
              <br />
              <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' Font-Bold="True" Font-Size="Medium"/>
              <br />
              <asp:Label ID="DescrLabel" runat="server" Text='<%# Eval("Descr") %>' Font-Size="Medium"/>
              <br />
              </td>
            </tr>
              </table>
<br />
          </ItemTemplate>
      </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" 
      ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
          SelectCommand="SELECT * FROM products WHERE ProductPurpose='Animals' " 
          onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
  </div>
  </center>
        <center>
<br />
</center>
<br>
<br/>
<br>
<br/>
<br>
<br/>
<br>
<br/>
<br>
<br/>
<br>
<br/>
<br>
<br/>
</asp:Content>




