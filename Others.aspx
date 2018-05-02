<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Others.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

        <center>
        <div id="othersScr">
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
        
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
            <table border="1"  >
            <tr>
            <td align="center">
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProdImg") %>' Height="250px" Width="200px" />
            <br>
            </br>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProdName") %>' Font-Bold="True" Font-Size="Medium"/>
            
            </td>
            </tr>
            </table>
            </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM products WHERE ProductPurpose='Others'"></asp:SqlDataSource>
        
        </div>
</center>
</asp:Content>

