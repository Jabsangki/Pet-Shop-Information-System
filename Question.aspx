<%@ Page Title="Forum" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Question.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">

        .example1 {
background-color: lightblue;
    border: 2px solid;
    padding: 5px;
    border-radius: 25px;
}

        #top
        {
            width: 623px;
        }
        #bottom
        {
            height: 160px;
            width: 625px;
        }
        .style1
        {
            height: 109px;
        }
        .style2
        {
            width: 123px;
            height: 100px;
        }
        .style3
        {
            width: 367px;
            height: 100px;
        }
        .style4
        {
            width: 57px;
            height: 92px;
        }
        .style5
        {
            width: 801px;
            height: 92px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div id="fbox" 
        style="border: thin solid #CCCCCC; padding: 30px; background-color: #CCCCCC;">
<div id="cbox" 
        style="padding: 30px; border: thin solid #CCCCCC; background-color: #FFFFFF;">
<table style="height: 99px; width: 869px"><tr>
<td class="style1">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Tahoma" 
        Font-Size="Medium" Text="Question:"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbltopic" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
</td>
</tr>
</table>
<table>
<tr>
<td align="center" class="style2">

    <asp:Image ID="Image1" runat="server" Height="46px" Width="49px" />

</td>
<td class="style3">

    <asp:Label ID="Label3" runat="server" Text="Answered By" ForeColor="#666666"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" ForeColor="Black"></asp:Label>

</td>
</tr>
</table>
<table>
<tr>
<td class="style4"></td>
<td class="style5">

    <asp:Label ID="Label5" runat="server" Text="A."></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" 
        Font-Names="Tahoma" Height="103px" ReadOnly="True" TextMode="MultiLine" 
        Width="667px" CssClass="example1">This Question Has Not Yet Been Answered...</asp:TextBox>

    <asp:Label ID="lbl" runat="server" Text="Label" Visible="False"></asp:Label>

</td>
</tr>
<tr>
<td></td>
<td>
    <asp:Button ID="btnans" runat="server" Text="Answer This Question" 
        Visible="False" onclick="btnans_Click" />
    </td>
</tr>
<tr>
<td></td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" Height="103px" MaxLength="999" 
        TextMode="MultiLine" Visible="False" Width="667px"></asp:TextBox>
    <br />
    <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
        Text="Submit" Visible="False" />
    <asp:Label ID="Labelx" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="lblnote" runat="server" ForeColor="Red" 
        Text="Note: This question is already answered..." Visible="False"></asp:Label>
    </td>
</tr>
</table>
</div>
</div>
<br>
<br/>
<br>
<br/>
<br>
<br/>

</asp:Content>




