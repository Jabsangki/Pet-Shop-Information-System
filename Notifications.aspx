<%@ Page Title="Notifications" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Notifications.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div>
<h2>SEND NOTIFICATION</h2>
<br />
<table>
<tr>
<td>

    <asp:Label ID="Label1" runat="server" Text="UserName:"></asp:Label>

</td>
<td>

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

</td>
</tr>
<tr>
<td>

    <asp:Label ID="Label2" runat="server" Text="Notification:"></asp:Label>

</td>
<td>

    <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="167px">
        <asp:ListItem>Cancel Appointment</asp:ListItem>
        <asp:ListItem>Re-Book Appointment</asp:ListItem>
        <asp:ListItem>Appointment Has Been Set</asp:ListItem>
    </asp:DropDownList>

</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Username Dont Exist!" 
        Visible="False"></asp:Label>
    </td>
<td>
    <asp:Label ID="Labelx" runat="server" 
        Text="Your Appointment could not be validated. You will recieve a message for available dates via email." 
        Visible="False"></asp:Label>
    </td>
</tr>
<tr>
<td>
    <asp:Button ID="Button1" runat="server" Text="Send Notification" 
        onclick="Button1_Click" /></td>
<td>
    <asp:Label ID="Labelxx" runat="server" Text="Label" Visible="False"></asp:Label>
    </td>
</tr>
</table>
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




