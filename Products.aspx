<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Products.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div id="Prod">
<center>
<table>
<tr><td>
<br>
<br>
<br>
<br>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="132px" 
        ImageUrl="~/Products/GroomingPic.jpg" Width="297px" 
        PostBackUrl="~/GroomProducts.aspx" BorderStyle="Double" /></td><td>
<br>
<br>
<br>
<br>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="132px" 
            ImageUrl="~/Products/MedPic.jpg" Width="297px" 
            PostBackUrl="~/MedicalProducts.aspx" BorderStyle="Double" /></td></tr>
<tr><td>

    <asp:ImageButton ID="ImageButton3" runat="server" Height="132px" 
        ImageUrl="~/Products/PetAccessories.jpg" Width="297px" 
        PostBackUrl="~/PetAccessories.aspx" BorderStyle="Double" /></td><td>
    <asp:ImageButton ID="ImageButton4" runat="server" Height="132px" 
        ImageUrl="~/Products/others.jpg" Width="297px" 
        PostBackUrl="~/Others.aspx" BorderStyle="Double" /></td></tr>
</table>
</center>
       
       </div>
       <div>
       <center>
           <asp:ImageButton ID="ImageButton5" runat="server" Height="132px" 
        ImageUrl="~/Products/animal.jpg" Width="297px" 
        PostBackUrl="~/Animals.aspx" BorderStyle="Double" />
       </center>
       </div>
    <br />
        <center>
<br />
</center>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</asp:Content>

