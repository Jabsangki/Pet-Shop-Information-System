<%@ Page Title="Clients" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Clients.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div  id="Scroll" style="width:100%px; overflow:scroll; "> 

        <h2>CLIENTS</h2>
        <br />
        <asp:TextBox ID="txtun" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Search Username" />
        <br />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Show All" /> 
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Add New Client" />

        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
        AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" 
            DataKeyNames="IDno" OnPageIndexChanged="index">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="IDno" HeaderText="IDno" SortExpression="IDno" 
                ReadOnly="True" />
            <asp:BoundField DataField="TagId" HeaderText="TagId" SortExpression="TagId" 
                ReadOnly="True" />
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" ReadOnly="True"/>
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
            <asp:BoundField DataField="UserType" HeaderText="UserType" 
                SortExpression="UserType" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" 
                SortExpression="MiddleName" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                SortExpression="ContactNo" />
            <asp:BoundField DataField="UserImg" HeaderText="UserImg" 
                SortExpression="UserImg" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="AlterEmail" HeaderText="AlterEmail" 
                SortExpression="AlterEmail" />
            <asp:BoundField DataField="SQq" HeaderText="SQq" SortExpression="SQq" />
            <asp:BoundField DataField="SQa" HeaderText="SQa" SortExpression="SQa" />
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
        DeleteCommand="DELETE FROM user WHERE IDno=@IDno" 
        SelectCommand="SELECT * FROM `user` ORDER BY `user`.`RegDate` DESC" 
            UpdateCommand="UPDATE `user` SET Password =@Password, UserType =@UserType, IDno =@IDno, FirstName =@FirstName, LastName =@LastName, MiddleName =@MiddleName, ContactNo =@ContactNo, Address =@Address, UserImg =@UserImg, Email =@Email, AlterEmail =@AlterEmail, SQq =@SQq, SQa =@SQa WHERE IDno=@IDno" 
            >
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
<br>
<br/>
<br>
<br/>
<br>
<br/>

</asp:Content>










