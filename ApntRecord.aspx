<%@ Page Title="Records" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ApntRecord.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>APPOINTMENT RECORDS</h2>
    <br />
       <div>
<asp:Button ID="Button1" runat="server" PostBackUrl="~/Notifications.aspx" 
                    Text="Send Notifications" />
</div>
    <br />
<br />

<div id="ScrollList" style="width: 100%; overflow:scroll; ">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None" AutoGenerateColumns="False"
                EmptyDataText="No Appointments Has Been Made!" DataKeyNames="ApntId" 
                OnPageIndexChanged="index" onselectedindexchanged="GridView1_SelectedIndexChanged"
                >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ApntId" HeaderText="ApntId" 
                        SortExpression="ApntId" ReadOnly="True" />
                    <asp:BoundField DataField="dDate" HeaderText="dDate" SortExpression="dDate" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:BoundField DataField="Username" HeaderText="Username" 
                        SortExpression="Username" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                        SortExpression="FirstName" />
                    <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" 
                        SortExpression="MiddleName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" 
                        SortExpression="LastName" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                        SortExpression="ContactNo" />
                    <asp:BoundField DataField="PetName" HeaderText="PetName" 
                        SortExpression="PetName" />
                    <asp:BoundField DataField="PetDesc" HeaderText="PetDesc" 
                        SortExpression="PetDesc" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            <asp:Button ID="btn1" runat="server" onclick="btn1_Click" Text="Search User" />
            <br />
            <asp:Button ID="btn2" runat="server" onclick="btn2_Click" Text="Show All" />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM `appointment` ORDER BY `appointment`.`DateNow` DESC"
                UpdateCommand="UPDATE appointment SET dDate = @dDate, `Time` = @Time , Username = @Username, FirstName = @Firstname, MiddleName = @MiddleName, LastName = @LastName, Address = @Address, ContactNo = @ContactNo, PetName = @PetName, PetDesc = @PetDesc, Email = @Email WHERE ApntId = @ApntId" 
                DeleteCommand="DELETE FROM appointment WHERE ApntId = @ApntId" >
            </asp:SqlDataSource>
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
</asp:Content>






