<%@ Page Title="Forum" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Forum.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">



        .style1
        {
            width: 582px;
            margin-left: 40px;
        }
        .style2
        {
            width: 276px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div id= "Forum">
<table>
<tr>
<td class="style1" align="center">
    <div>
    <center><asp:TextBox ID="TextBox1" runat="server" Width="235px" 
        placeholder="Find post and topics..." Height="29px" ></asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" 
        ImageUrl="~/WebImages/RumixIP-by-toma-4025/RumaxIP/search.ico" Width="36px" 
            ImageAlign="AbsMiddle" onclick="ImageButton1_Click" />
    </center>
    </div>
    </td>
<td class="style2">
    <asp:Button ID="askbtn" runat="server" Text="Ask a question" Height="29px" 
        onclick="askbtn_Click" />
    </td>
</tr>
</table>
    <br />
   <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" >
    <ItemTemplate>
    <table bgcolor="#CCFFFF">
    <tr>
       <td>
           <asp:LinkButton ID="Link1" runat="server" Font-Bold="True"  Font-Size="Medium" Width="550px" CommandName="call" ><%# Eval("Topic") %></asp:LinkButton>
       </td>
       <td> <asp:Label ID="Labelx" runat="server" Width="100px"  Text='<%# Eval("DisNum") %>' Visible="False" />
       </td>
       <td>
       <asp:Label ID="UserLabel" runat="server" Width="150px" Text='<%# Eval("User") %>' />
       </td>
       <td>
       <asp:Label ID="DateLabel" runat="server" Width="150px" Text='<%# Eval("Date") %>' />
       </td>
    </tr>
</table>
    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
        SelectCommand="SELECT gthread.* FROM gthread"></asp:SqlDataSource>
</div>

</asp:Content>




