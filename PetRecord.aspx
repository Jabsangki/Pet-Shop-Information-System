<%@ Page Title="Pet Records" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="PetRecord.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div id="PetStat">
<h2>ADD NEW PET STATUS</h2>
<br />
<table>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Username:" Width="100px"></asp:Label>
    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Verify" />
    <asp:Label ID="lblname" runat="server" Visible="False"></asp:Label>
    </td>
</tr>
<tr>
<td>

    <asp:Label ID="lblyyy" runat="server" Text="Pet Name:" Width="100px" 
        Visible="False"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Pet Name:" Width="100px" 
        Visible="False"></asp:Label>
    <asp:TextBox ID="txtpn" runat="server" Visible="False"></asp:TextBox>
    <asp:Label ID="lbltry" runat="server" Visible="False"></asp:Label>
    <br />

</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label3" runat="server" Text="Pet Breed:" Width="100px" 
        Visible="False"></asp:Label>
    <asp:TextBox ID="txtpb" runat="server" 
        ontextchanged="txtpb_TextChanged" Visible="False"></asp:TextBox>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="Label4" runat="server" Text="Pet Gender:" Width="100px" 
        Visible="False"></asp:Label>
    <asp:TextBox ID="txtpg" runat="server" Visible="False"></asp:TextBox>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="Label5" runat="server" Text="Pet Status:" Width="100px" 
        Visible="False"></asp:Label>
    <asp:TextBox ID="txtps" runat="server" 
        ontextchanged="txtps_TextChanged" Visible="False"></asp:TextBox>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="Label6" runat="server" Text="Pet DoB:" Width="100px" 
        Visible="False"></asp:Label>
    <asp:TextBox ID="txtdob" runat="server" Visible="False"></asp:TextBox>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="Label7" runat="server" Text="Pet DoD:" Width="100px" 
        Visible="False"></asp:Label>
    <asp:TextBox ID="txtdod" runat="server" Visible="False"></asp:TextBox>
    </td>
</tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" ForeColor="Red" 
        Text="*Username Do Not Exist!" Visible="False"></asp:Label>
    </td>
</tr>
<tr>
<td>

    <asp:Button ID="btnAdd" runat="server" Text="Add Record" Width="180px" 
        onclick="btnAdd_Click" Visible="False" />

</td>
</tr>
</table>
</div>
<br>
</br>
<br>
</br>
<br>
</br>
<br>
</br>
<br>
</br>
<br>
</br>
<br>
</br>
<br>
</br>
<br>
</br>
<br>
</br>
<br>
</br>
<br>
</br>
<br>
</br>

</asp:Content>




