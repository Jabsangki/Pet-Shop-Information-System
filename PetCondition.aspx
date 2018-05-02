<%@ Page Title="Pets" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="PetCondition.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div id="PetStat" style="width: 100%; overflow:scroll;" >

   <br />
<br>
</br>
    <asp:TextBox ID="TextBox1" runat="server" name="textbox1" Width="179px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search By Username" 
        Width="180px" onclick="Button1_Click" />
<br/>
    <asp:TextBox ID="TextBox2" runat="server" Width="179px"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" Text="Search By UserIDno" 
    Width="180px" onclick="Button3_Click" />
<br/>

  <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        Text="Show All" />
    <br />
<br/>
    <asp:Button ID="Button2" runat="server" Text="New Pet Record" Width="180px" 
        onclick="Button2_Click" />


<br>
</br>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
        EmptyDataText="There Are no Pet Records!" GridLines="None" 
        DataKeyNames="TransID" OnPageIndexChanged="index" CellPadding="4" 
        ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="IDno" HeaderText="IDno" SortExpression="IDno" 
                ReadOnly="True" />
            <asp:BoundField DataField="TransID" HeaderText="TransID" 
                SortExpression="TransID" ReadOnly="True" />
            <asp:BoundField DataField="OwnerName" HeaderText="OwnerName" 
                SortExpression="OwnerName" />
            <asp:BoundField DataField="PetName" HeaderText="PetName" 
                SortExpression="PetName" />
            <asp:BoundField DataField="PetBreed" HeaderText="PetBreed" 
                SortExpression="PetBreed" />
            <asp:BoundField DataField="PetGender" HeaderText="PetGender" 
                SortExpression="PetGender" />
            <asp:BoundField DataField="PetCondition" HeaderText="PetCondition" 
                SortExpression="PetCondition" />
            <asp:BoundField DataField="PetDoB" HeaderText="PetDoB" 
                SortExpression="PetDoB" />
            <asp:BoundField DataField="PetDoD" HeaderText="PetDoD" 
                SortExpression="PetDoD" />
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
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    
                ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM pet"
           DeleteCommand="DELETE FROM pet WHERE TransID=@TransID" 
        UpdateCommand="UPDATE pet SET OwnerName=@OwnerName , PetName=@PetName,PetBreed=@PetBreed,PetGender=@PetGender,PetCondition=@PetCondition,PetDoB=@PetDoB,PetDoD=@PetDoD WHERE TransID=@TransID" 
        onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    <br />

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
</br>
<br>
</br>
<br>
</br>
<br>
</br>
</asp:Content>







