

<%@ Page Title="Ask" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Ask.aspx.cs" Inherits="AddImg" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">

        .example1 {
    border: 1px solid;
    padding: 10px;
    border-radius: 25px;
}

        .style1
        {
            height: 98px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table>
<tr style="border-bottom-style: groove">
<td class="style1"><font style="font-family: tahoma; font-size: x-large; color: #000000;">Ask a Question<br />
    </font></td>
</tr>
<tr>
<td>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblq" runat="server" Text="Your Question:" Font-Size="Medium"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="300px" placeholder="Type your question here..." ></asp:TextBox>
    <br />
    <br />
    </td>
</tr>
<tr>
<td>

    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbld" runat="server" Text="Details:" Font-Size="Medium"></asp:Label>
    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Width="554px" 
        placeholder="Type the details..." Height="198px" TextMode="MultiLine" 
        MaxLength="999" CssClass="example1"></asp:TextBox>

    <br />

    <br />

</td>
</tr>
<tr>
<td>

    &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnsubmit" runat="server" 
        Text="Submit" onclick="btnsubmit_Click" />

</td>
</tr>
</table>
</asp:Content>


