

<%@ Page Title="Add Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="AddProducts.aspx.cs" Inherits="AddImg" %>

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
<br>
<br/>

    <h2>
        ADD PRODUCT</h2>
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
        </div>
            </td><td></td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Product Purpose:" Font-Size="Large"></asp:Label>
            </td><td>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large">
                    <asp:ListItem>medical</asp:ListItem>
                    <asp:ListItem>Groom</asp:ListItem>
                    <asp:ListItem>Accesories</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                    <asp:ListItem>Animals</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
        <td> 
            <asp:Label ID="Label3" runat="server" Text="Product Name:" Font-Size="Large"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style1">
            <asp:Label ID="Label6" runat="server" Text="Usage:" Font-Size="Large"></asp:Label>
            </td>
<td class="style1">
    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large"></asp:TextBox>
    </td>
</tr>
<tr>
<td>
            <asp:Label ID="Label8" runat="server" Text="Description:" Font-Size="Large"></asp:Label></td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large"></asp:TextBox>
    </td>
</tr>
        </table>
    <p>
        
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        
    &nbsp;<asp:Label ID="Label2" runat="server" Text="~/Products/" Visible="False"></asp:Label>
        
    </p>
    <p>
        
        <asp:Button ID="Button1" runat="server" Text="Add Product" Width="121px" 
            onclick="Button1_Click" OnClientClick="return CheckDouble();" />
        
    </p>
<script type="text/javascript">
   var submit = 0;
   function CheckDouble() {
     if (++submit > 1) {
     alert('This sometimes takes a few seconds - please be patient.');
     return false;
   }
 }
 </script>
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
<br>
<br/>
<br>
<br/>
</asp:Content>





