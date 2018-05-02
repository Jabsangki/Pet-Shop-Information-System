<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="MysqlReg.aspx.cs" Inherits="MysqlAcc_Default2" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 554px;
        }
        .style2
        {
            height: 789px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
        <fieldset class="reg">
        <legend>Register Account</legend>
            <br />
        <asp:Label ID="lblerror" runat="server" ForeColor="Red" Text="Label" 
            Visible="False" Font-Size="Medium"></asp:Label>
            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ValidationGroup="RegValid" ForeColor="Red" /><br />
            <asp:Label ID="Label2" runat="server" Height="25px" Text="Username:" 
                Width="166px"></asp:Label>
        <asp:TextBox ID="lbluser" runat="server"></asp:TextBox>
        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Username Required" ValidationGroup="RegValid" 
                ControlToValidate="lbluser" ForeColor="Red" > * </asp:RequiredFieldValidator>
        
                <br />
            <br />
            <asp:Label ID="Label3" runat="server" Height="25px" Text="Password:" 
                Width="166px"></asp:Label>
        
        <asp:TextBox ID="lblpass" runat="server" TextMode="Password"></asp:TextBox>
        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Password Required" ValidationGroup="RegValid" 
                ControlToValidate="lblpass" ForeColor="Red" > * </asp:RequiredFieldValidator>
        
                <br />
            <br />
            <asp:Label ID="Label4" runat="server" Height="25px" Text="Confirm Password:" 
                Width="166px"></asp:Label>
        
        <asp:TextBox ID="lblcp" runat="server" TextMode="Password"></asp:TextBox>
        
                <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="lblpass" ControlToValidate="lblcp" ForeColor="Red" 
             ErrorMessage="The Password Did Not Match." ValidationGroup="RegValid"></asp:CompareValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Height="25px" Text="Email Address:" 
                Width="166px"></asp:Label>
        
        <asp:TextBox ID="lble" runat="server"></asp:TextBox>
        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Email Required" ValidationGroup="RegValid" 
                ControlToValidate="lble" ForeColor="Red" > * </asp:RequiredFieldValidator>
        
                <br />
            <br />
            <asp:Label ID="Label6" runat="server" Height="25px" Text="Confirm Email:" 
                Width="166px"></asp:Label>
        
        <asp:TextBox ID="lblce" runat="server"></asp:TextBox>
        
                <br />
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToCompare="lble" ControlToValidate="lblce" ForeColor="Red" 
            ErrorMessage="The Email Did Not Match." ValidationGroup="RegValid" ></asp:CompareValidator>
            <br />
            <asp:Label ID="Label7" runat="server" Height="25px" Text="Alternate Email:" 
                Width="166px"></asp:Label>
        
        <asp:TextBox ID="lblea" runat="server"></asp:TextBox>
        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="Alternate Email Required" ValidationGroup="RegValid" 
                ControlToValidate="lblea" ForeColor="Red" > * </asp:RequiredFieldValidator>
        
                <br />
            <br />
            <asp:Label ID="Label8" runat="server" Height="25px" Text="First Name:" 
                Width="166px"></asp:Label>
        
        <asp:TextBox ID="lblf" runat="server"></asp:TextBox>
        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="First Name Required" ValidationGroup="RegValid" 
                ControlToValidate="lblf" ForeColor="Red" > * </asp:RequiredFieldValidator>
        
                <br />
            <br />
            <asp:Label ID="Label9" runat="server" Height="25px" Text="Middle Name:" 
                Width="166px"></asp:Label>
        
        <asp:TextBox ID="lblm" runat="server"></asp:TextBox>
        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="Middle Name Required" ValidationGroup="RegValid" 
                ControlToValidate="lblm" ForeColor="Red" > * </asp:RequiredFieldValidator>
        
                <br />
            <br />
            <asp:Label ID="Label10" runat="server" Height="25px" Text="Last Name:" 
                Width="166px"></asp:Label>
        
        <asp:TextBox ID="lbll" runat="server"></asp:TextBox>
        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="Last Name Required" ValidationGroup="RegValid" 
                ControlToValidate="lbll" ForeColor="Red" > * </asp:RequiredFieldValidator>
        
                <br />
            <br />
            <asp:Label ID="Label13" runat="server" Height="25px" Text="Address:" 
                Width="166px"></asp:Label>
        
        <asp:TextBox ID="lblad" runat="server"></asp:TextBox>
        
                <br />
            <br />
            <asp:Label ID="Label14" runat="server" Height="25px" Text="Contact #:" 
                Width="166px"></asp:Label>
        
        <asp:TextBox ID="lblcon" runat="server"></asp:TextBox>
        
                <br />
            <br />
            <asp:Label ID="Label11" runat="server" Height="25px" Text="Security Question:" 
                Width="166px"></asp:Label>
        
         <asp:DropDownList ID="ddsqq" runat="server">
            <asp:ListItem>-Please your security question</asp:ListItem>
            <asp:ListItem>-What is your mothers maiden name?</asp:ListItem>
            <asp:ListItem>-What is your first pet name</asp:ListItem>
        </asp:DropDownList>
        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ErrorMessage="Field Required" ValidationGroup="RegValid" 
                ControlToValidate="ddsqq" ForeColor="Red" > * </asp:RequiredFieldValidator>
        
                <br />
            <br />
            <asp:Label ID="Label12" runat="server" Height="25px" Text="Security Answer:" 
                Width="166px"></asp:Label>
        
        <asp:TextBox ID="lblsqa" runat="server"></asp:TextBox>
        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ErrorMessage="Field Required" ValidationGroup="RegValid" 
                ControlToValidate="lblsqa" ForeColor="Red" > * </asp:RequiredFieldValidator>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    &nbsp;
        <asp:Label ID="lblempty" runat="server"></asp:Label>
        
            <br />
        
        <asp:Button ID="Button1" runat="server" Text="Register" 
            ValidationGroup="RegValid" onclick="Button1_Click" />
    </fieldset>
</asp:Content>
