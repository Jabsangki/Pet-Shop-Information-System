

<%@ Page Title="AddImg" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="AddImg.aspx.cs" Inherits="AddImg" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Add Profile Image
    </h2>
    <p>
        
        <asp:FileUpload ID="FileUpload1" runat="server" />
        
    </p>
    <p>
        
        <asp:Image ID="Image1" runat="server" Height="174px" Width="154px" />
        
    </p>
    <p>
        
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        
    &nbsp;<asp:Label ID="Label2" runat="server" Text="~/WebImages/" Visible="False"></asp:Label>
        
    </p>
    <p>
        
        <asp:Button ID="Button1" runat="server" Text="Add/Change Img" Width="121px" 
            onclick="Button1_Click" />
        
    </p>
</asp:Content>
