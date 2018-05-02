

<%@ Page Title="Account Settings" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Settings.aspx.cs" Inherits="AddImg" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<br>
<br/>
    <h2>
        Account Settings</h2>
    <p>
        &nbsp;</p>
        <div>
        <table>
        <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="First Name:" Font-Size="Large"></asp:Label>
            <br />
            </td><td style="margin-left: 40px">
                <asp:Label ID="Labelfn" runat="server" Text="Label" Width="165px"></asp:Label>
                <asp:TextBox ID="TextBoxfn" runat="server" Visible="False" Font-Size="Large"></asp:TextBox>
            </td>
            <td>
            <div>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/WebImages/edit.jpg" onclick="ImageButton1_Click" />
                </div>
            </td>
        </tr>
                <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Middle Name:" Font-Size="Large"></asp:Label>
            <br />
            </td><td>
                        <asp:Label ID="Labelmn" runat="server" Text="Label" Width="165px"></asp:Label>
                        <asp:TextBox ID="TextBoxmn" runat="server" Visible="False" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
                <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Last Name:" Font-Size="Large"></asp:Label>
            <br />
            </td><td>
                        <asp:Label ID="Labelln" runat="server" Text="Label" Width="165px"></asp:Label>
                        <asp:TextBox ID="TextBoxln" runat="server" Visible="False" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
                <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Address:" Font-Size="Large"></asp:Label>
            <br />
            </td><td>
                        <asp:Label ID="Labela" runat="server" Text="Label" Width="165px"></asp:Label>
                        <asp:TextBox ID="TextBoxa" runat="server" Visible="False" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
                <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Contact #:" Font-Size="Large"></asp:Label>
            <br />
            </td><td>
                        <asp:Label ID="Labelc" runat="server" Text="Label" Width="165px"></asp:Label>
                        <asp:TextBox ID="TextBoxc" runat="server" Visible="False" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
                <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Email:" Font-Size="Large"></asp:Label>
            <br />
            </td><td>
                        <asp:Label ID="Labele" runat="server" Text="Label" Width="165px"></asp:Label>
                        <asp:TextBox ID="TextBoxe" runat="server" Visible="False" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
                <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Alt. Email" Font-Size="Large"></asp:Label>
            <br />
            </td><td>
                        <asp:Label ID="Labelae" runat="server" Text="Label" Width="165px"></asp:Label>
                        <asp:TextBox ID="TextBoxae" runat="server" Visible="False" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>

        </table>
            <br />
        <asp:Button ID="ButtonUpdate" runat="server" onclick="ButtonUpdate_Click" 
                Text="Update Account" />
        </div>
        <div>
            
            <br />
    </div>
<br>
<br/>
<br>
<br/>
<br>
<br/>
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
<br>
<br/>


</asp:Content>

