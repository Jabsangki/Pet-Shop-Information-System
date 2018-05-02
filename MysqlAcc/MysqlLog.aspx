<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="MysqlLog.aspx.cs" Inherits="MysqlAcc_Default" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style2
        {
            width: 140px;
        }
        .style3
        {
            width: 430px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

            <br />
<br />
           

    <center>
    <p>
        Please enter your username and password.<asp:HyperLink ID="RegisterHyperLink" NavigateUrl="~/MysqlAcc/MysqlReg.aspx"  runat="server" EnableViewState="false">Register</asp:HyperLink> &nbsp;if you don't have an account.</p>
  </center>
  <table>
  <tr><td class="style3">    <fieldset class = "login">
<legend>Acount Information</legend>
 
    &nbsp;<asp:Label ID="lblerror" runat="server" Font-Bold="False" 
          Font-Size="Medium" ForeColor="Red" Text="Invalid Username or Password." 
          Visible="False"></asp:Label>
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
          ForeColor="Red" ValidationGroup="UserValidationGroup" />
      <p>
    <asp:Label ID="Lblun" runat="server" Text="Username:" Width="250px"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ErrorMessage="Username Required" ControlToValidate="TextBox1" ValidationGroup="UserValidationGroup" ForeColor="Red">*</asp:RequiredFieldValidator>
      </p>
    <p>
            <asp:Label ID="lblpw" runat="server" Text="Password:" Width="250px"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="250px" 
                ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Password Required" ControlToValidate="TextBox2" ValidationGroup="UserValidationGroup" ForeColor="Red">*</asp:RequiredFieldValidator>
                </p>
        <p>
            <asp:CheckBox ID="cbremember" runat="server" />
                </p>
        <p>
            <asp:Label ID="lblremember" runat="server" Text="Keep me logged in"></asp:Label>
                </p>
      <p>
            &nbsp;</p>
                
   <p>
       <asp:Label ID="lblspace" runat="server" 
           Width="94px"></asp:Label>
       <asp:Button ID="Button1" runat="server" Text="Log In" onclick="Button1_Click1" ValidationGroup="UserValidationGroup" />
        &nbsp;</p>
        </fieldset></td>
<td class="style2"></td>
</tr>

        </table>

    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
            <br />

<br />
            <br />
<br />
            <br />
<br />
            <br />
<br />
            <br />
<br />
            <br />
<br />
            <br />
    &nbsp;</asp:Content>






