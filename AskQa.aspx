<%@ Page Title="Records" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="AskQa.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<br />
    <div id="ScrollList" style="width: 100%; ">
          <table>
          <tr>
          <td>
          <div style="overflow:scroll;">
          <font color="Black" 
                  style="font-family: tahoma; font-size: xx-large; font-style: normal">FORUM<br />
              </font>
              &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
              <asp:Button ID="Button1" runat="server" Text="Search Topic" 
                  onclick="Button1_Click" />
              <asp:GridView ID="GVthreads" runat="server" AllowPaging="True" CellPadding="4" 
                  DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="DisNum"
                  OnPageIndexChanged="index">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:CommandField ShowEditButton="True" />
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
                  SelectCommand="SELECT * FROM gthread"
                UpdateCommand="UPDATE gthread SET Topic = @Topic WHERE DisNum = @DisNum" 
                DeleteCommand="DELETE FROM gthread WHERE DisNum = @DisNum" >
                  </asp:SqlDataSource>
          </div>
          </td>
          <td>
              &nbsp;</td>
          </tr>
          <tr>
          <td>
                    <div style="overflow:scroll;">
                    <font color="Black" 
                  style="font-family: tahoma; font-size: xx-large; font-style: normal">ANSWERS<br />
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
              <asp:Button ID="Button2" runat="server" Text="Search DisNum" 
                  onclick="Button2_Click" />
              </font>
              <asp:GridView ID="GVcomments" runat="server" AllowPaging="True" CellPadding="4" 
                  DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" DataKeyNames="CommentID"
                  OnPageIndexChanged="index1">
                  <AlternatingRowStyle BackColor="White"/>
                  <Columns>
                      <asp:CommandField ShowEditButton="True" />
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
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
                  ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
                  SelectCommand="SELECT * FROM comments"
                UpdateCommand="UPDATE comments SET Answer = @Answer WHERE CommentID = @CommentID" 
                DeleteCommand="DELETE FROM comments WHERE CommentID = @CommentID"></asp:SqlDataSource>
          <</div>
          </td>
          <td></td>
          </tr>
          </table>
            </div>
<div>
</div>
</asp:Content>


