<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ResultProfile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<table id="control">
<tr>
<td valign ="top" class="style1">
<div id ="directionpanel"  style="height: 220px; overflow: auto; width: 245px;" >
<center> 
   <asp:Image ID="Image1" runat="server" Height="167px" Width="164px" />
</center>
</div>

</td>
<td valign ="top" class="style1">
<div id ="directionpanel1"  style="overflow: auto; width: 637px;">
    <br />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Labelx" runat="server" Text="Welcome!"></asp:Label>
&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </div>
    <div id ="Div1"  style="overflow: auto; width: 637px;">
    <br />
    <br />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Message" Width="125px" />
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Add Friend" Width="125px" />
    </div>
</td></tr>
<tr>
<td valign ="top" class="style2">
    <div id ="space"  style="height: 46px; overflow: auto; width: 245px;" >
<center>
</center>
</div>
    <div id ="Div2"  style="height: 46px; overflow: auto; width: 245px;" >
<center>
    <asp:Label ID="Label6" runat="server" Text="Account Details:"></asp:Label>
</center>
</div>
    </td>
<td valign ="top" class="style2">
    <asp:Label ID="Label5" runat="server" Text="Recent Activities"></asp:Label>
    <br />
    <br />
    </td></tr>
</table>
</asp:Content>
