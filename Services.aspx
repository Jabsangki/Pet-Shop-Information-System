<%@ Page Title="Services" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Services.aspx.cs" Inherits="Rates" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        #data
        {
            height: 115px;
            width: 480px;
        }
        #Div1
        {
            height: 113px;
            width: 923px;
        }
        .style1
        {
            width: 246px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <h1 style="font-size: x-large; font-weight: bold;">&nbsp;&nbsp; <strong>&nbsp;SERVICES</strong></h1>
    <br />
    <br />
    <center>
<table style="height: 670px; width: 855px">
<tr>
<td style="margin-left: 80px" class="style1">
    <asp:Image ID="Image1" runat="server" Height="153px" Width="143px" 
        ImageUrl="~/WebImages/checkup.png" />
        </td>
        <td>
    <br />
    <br />
<asp:Label ID="label1" runat="server" Text="Check Up" Font-Bold="True" 
        Font-Names="Tahoma" Font-Size="Large" ForeColor="Black"></asp:Label>
    <br />
    <strong style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Helvetica, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
    are conducted as a routine procedure done to check for abnormalities, if 
    any.Regular check-ups for your pet is one of our&nbsp;recommendations to help prevent 
    diseases that start off as&nbsp;symptoms.&nbsp;Don&#39;t forget to have<span>&nbsp;</span><br />
    regular check-ups. A single check-up can change your pet&#39;s life and prevent them 
    from losing it!</strong><br />
    <br />
    </td>
<td>
    <br />
    <br />
    </td>
</tr>
<tr>
<td class="style1">
    <asp:Image ID="Image3" runat="server" Height="153px" Width="143px" 
        ImageUrl="~/WebImages/daycare.png" />
        </td>
        <td>
    <br />
    <br />
<asp:Label ID="label3" runat="server" Text="DayCare\Boarding" Font-Bold="True" 
        Font-Names="Tahoma" Font-Size="Large" ForeColor="Black"></asp:Label>
    <br />
    <strong style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Helvetica, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
    is one of the services we&nbsp;are&nbsp;offering to<span>&nbsp;</span><br />
    clients who are looking for a place for the pets to stay as they do their 
    errands, when they go to work,&nbsp;or when they are out of town. This includes 
    feeding, watching over, walks and other dog necessities while the owner is out.</strong><br />
    <br />
    </td>
<td>
    <br />
    <br />
    <br />
    <br />
    </td>
</tr>
<tr>
<td class="style1">
    <asp:Image ID="Image2" runat="server" Height="153px" Width="143px" 
        ImageUrl="~/WebImages/confine.png" />
    <br />
    <br /></td>
    <td>
<asp:Label ID="label2" runat="server" Text="Confinement" Font-Bold="True" 
        Font-Names="Tahoma" Font-Size="Large" ForeColor="Black"></asp:Label>
    <br />

    <strong style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Helvetica, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
    <font color="#000099"><span>&nbsp;</span></font><font color="Black">is for close<span>&nbsp;</span><br />
    monitoring of&nbsp;pets needing medical attention and intervention. We will be 
    observing the patient for any abnormalities during their stay.&nbsp;We&nbsp;will also&nbsp;be 
    giving the medications they will need depending on the condition of the patient 
    on time. The owner will be able to visit&nbsp;their pet&nbsp;at anytime of the day from 
    9:00 am-6:00 pm everyday (Monday-Saturday).</font></strong><br />
    </td>
<td>
    <br />
    <br />
    <br />
    <br />
    </td>
</tr>
<tr>
<td class="style1">
    <asp:Image ID="Image4" runat="server" Height="153px" Width="143px" 
        ImageUrl="~/WebImages/dental.jpg" /></td>
        <td>
    <br />
    <br />
<asp:Label ID="label4" runat="server" Text="Dental Health" Font-Bold="True" 
        Font-Names="Tahoma" Font-Size="Large" ForeColor="Black"></asp:Label>
    <br />
    <strong style="color: rgb(70, 70, 70); font-family: &quot;Open Sans&quot;, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
    <font color="Black" size="3">Bad breath in pets,<span>&nbsp;</span><font 
        color="Black">particularly dogs</font>, is often joked about, but it is 
    not a laughing matter.<span>&nbsp;</span><font color="Black">Dental&nbsp;disease affects 
    up to 80% of pets over the age of three</font>, and just like humans,there can 
    be<span>&nbsp;</span><font color="Black">serious consequences of poor dental 
    health.</font></font></strong><br />
    </td>
<td>
    <br />
    <br />
    <br />
    <br />
    </td>
</tr>
<tr>
<td class="style1">
    <asp:Image ID="Image5" runat="server" Height="153px" Width="143px" 
        ImageUrl="~/WebImages/surgery.png" /></td>
        <td>
    <br />
    <br />
<asp:Label ID="label5" runat="server" Text="Surgery" Font-Bold="True" 
        Font-Names="Tahoma" Font-Size="Large" ForeColor="Black"></asp:Label>
    <br />
    <strong style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Helvetica, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
    is a procedure done by<span>&nbsp;</span><font color="Black">DR. KEN ANTHONY LAO</font>(vet 
    surgeon).<br />
    Surgery is a life-changing deal for our pets. Once abnormalities are observed, 
    BRING YOUR PET TO THE ARK VETERINARY CLINIC!</strong><br />
    </td>
<td>
    <br />
    <br />
    <br />
    <br />
    </td>
</tr>
</table>
</center>
    </asp:Content>

