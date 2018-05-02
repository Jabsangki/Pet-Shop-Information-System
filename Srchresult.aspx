<%@ Page Title="Find User" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Srchresult.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <br />
       
    <br />
    <br />
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">

<ItemTemplate>
<table  cellpadding="4" style="border-top-style: groove; border-bottom-style: groove; border-width: thin; border-color: #C0C0C0"  width="500px">
            <tr>
                       <td width="100px"> <asp:imagebutton ID="userimg" CommandName="call1" runat="server" Height="100" width="100" imageurl='<%# Eval("UserImg") %>'  BorderStyle="Solid" BorderColor="Silver" BorderWidth="1px" /></td>
                       <td align="left"  ><asp:LinkButton ID="lb1" CommandName="call" runat="server"  Font-Bold="False" Font-Size="Medium" Font-Names="tahoma"><%# Eval("FirstName") %>&nbsp<%# Eval("LastName") %></asp:LinkButton></td>
                       <td><asp:Label ID="lblx" runat="server"  Text='<%# Eval("TagId") %>' Visible="False"></asp:Label> </td>
            </tr>
                       
       </table>                
</ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            
                ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM user WHERE FirstName LIKE  @FirstName ">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="FirstName" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<br />
</asp:Content>
