

<%@ Page Title="Product List" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="AProdlist.aspx.cs" Inherits="AddImg" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="overflow: auto">
                 <font color="Black" 
                  style="font-family: tahoma; font-size: xx-large; font-style: normal">Product List<br />
              </font>
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Sort By:"></asp:Label>
                 <asp:DropDownList ID="DropDownList1" runat="server" Height="19px"
                     onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                     <asp:ListItem>All</asp:ListItem>
                     <asp:ListItem>Groom</asp:ListItem>
                     <asp:ListItem>medical</asp:ListItem>
                     <asp:ListItem>Accessories</asp:ListItem>
                     <asp:ListItem>Animals</asp:ListItem>
                     <asp:ListItem>Others</asp:ListItem>
                 </asp:DropDownList>
                 <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Go" />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                     DataKeyNames="ProdId" OnPageIndexChanged="index"
            EnableSortingAndPagingCallbacks="false" 
                     onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True"  />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM products"
            UpdateCommand="UPDATE products SET ProdName = @ProdName , ProdUsage = @ProdUsage ,Descr = @Descr  WHERE ProdId = @ProdId" 
            DeleteCommand="DELETE FROM products WHERE ProdId = @ProdId"
            ></asp:SqlDataSource>
                 <br />
                 <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                     Text="Add New Product" />
    </div>
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
<br>
<br/>
<br>
<br/>
</asp:Content>


