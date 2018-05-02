

<%@ Page Title="Add Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="AddHome.aspx.cs" Inherits="_Default" %>

<script runat="server">

</script>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            height: 29px;
        }
        .style2
        {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
    <h2>
        ADD Home</h2>
        <table>
        <tr>
        <td class="style2">
        
        <asp:FileUpload ID="FileUpload1" runat="server" />
        
            </td><td class="style2">
                <asp:Label ID="Labelx" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Labelx0" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
        <td>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Details:" Font-Size="Large"></asp:Label>
        </div>
            </td><td></td>
        </tr>
        <tr>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="131px" TextMode="MultiLine" 
                Width="600px" Font-Size="Large"></asp:TextBox>
            </td><td>
                &nbsp;</td>
        </tr>
        <tr>
        <td> 
        
        <asp:Button ID="Button1" runat="server" Text="Add Into Home" Width="121px" 
            onclick="Button1_Click" />
        
</td>
<td>
    &nbsp;</td>
</tr>
<tr>
<td class="style1">
            <asp:Label ID="Label2" runat="server" Text="~/img/" Visible="False"></asp:Label>
        
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        
    </td>
<td class="style1">
    &nbsp;</td>
</tr>
<tr>
<td>
            </td>
<td>
    &nbsp;</td>
</tr>
        </table>
        </div>
        <div>
        
            <h2>
                Home Details</h2>
            <br />
        
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                DataKeyNames="PostId" Font-Size="Large" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
               DeleteCommand="DELETE FROM homeadd WHERE PostId = @PostId"
                UpdateCommand="UPDATE `homeadd` SET Details=@Details,Date=@Date WHERE PostId = @PostId" 
                SelectCommand="SELECT * FROM homeadd">
                
                </asp:SqlDataSource>
        
        </div>
<br>
<br/>
<br>
<br/>
<br>
<br/>
<br>
<br/>
</asp:Content>




