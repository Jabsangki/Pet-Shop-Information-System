

<%@ Page Title="AddImg" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="MyPets.aspx.cs" Inherits="AddImg" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <center>
    <div style="padding: 10px" >
        <div style="border-style: double">
        
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                Text="Recent Pet Records"></asp:Label>
            <br />
            <asp:Label ID="lblid" runat="server" Visible="False"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="TransID" 
                DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="IDno" HeaderText="IDno" SortExpression="IDno" />
                    <asp:BoundField DataField="TransID" HeaderText="TransID" ReadOnly="True" 
                        SortExpression="TransID" />
                    <asp:BoundField DataField="OwnerName" HeaderText="OwnerName" 
                        SortExpression="OwnerName" />
                    <asp:BoundField DataField="PetName" HeaderText="PetName" 
                        SortExpression="PetName" />
                    <asp:BoundField DataField="PetBreed" HeaderText="PetBreed" 
                        SortExpression="PetBreed" />
                    <asp:BoundField DataField="PetGender" HeaderText="PetGender" 
                        SortExpression="PetGender" />
                    <asp:BoundField DataField="PetStatus" HeaderText="PetStatus" 
                        SortExpression="PetStatus" />
                    <asp:BoundField DataField="PetDoB" HeaderText="PetDoB" 
                        SortExpression="PetDoB" />
                    <asp:BoundField DataField="PetDoD" HeaderText="PetDoD" 
                        SortExpression="PetDoD" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM pet WHERE IDno = @IDno">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblid" Name="IDno" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    </center>
</asp:Content>

