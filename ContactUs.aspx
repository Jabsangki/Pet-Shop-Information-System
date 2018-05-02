<%@ Page Title="ContactUs" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" Async="true" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .example1 {
    border: 2px solid;
    padding: 10px;
    border-radius: 25px;
}

        #TextArea1
        {
            height: 367px;
            width: 529px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <h2>CONTACT US</h2>
    <br />
    <table>
    <tr>
    <td>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Subject:"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="242px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>INQUIRIES</asp:ListItem>
            <asp:ListItem>SCHEDULE</asp:ListItem>
            <asp:ListItem>FEEDBACK</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="244px" TextMode="MultiLine" 
            ToolTip="Message" Width="385px" ViewStateMode="Enabled" CssClass="example1"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnMail" runat="server" onclick="btnMail_Click" 
            Text="Send Mail" />
        </td>
    <td>
        <br />
        
        <asp:Label ID="Label15" runat="server" Text="max" Visible="False"></asp:Label>
        
        <br />
        <br />
        <br />
        <asp:Label ID="lblemail" runat="server" Visible="False"></asp:Label>
        </td>
        <td>
        <font style="font-family: tahoma; font-size: 20px;">
            Davao
City
  <br />
Opening Hours:
 <br />
Monday-Saturday
 <br />
From 8:00 am- 7:00 pm
 <br />
Sunday by Appointment and Emergency<br /></font>
&nbsp;
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
            BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
            ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" 
                SelectionMode="None" OnDayRender="Calendar1_DayRender">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="" />
        </asp:Calendar>
            <font color="#FF3300" style="font-family: tahoma">
            Note: Red Mark On Calendar Are Fully Booked Date 
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Especially for Setting An Appointment
            </font><br />
            <br />
            <br />
        </td>
<td width="50px">
                                                                                  
</td>
<td align=;center;>    
<div id="map" style="width:400px;height:400px;background:yellow"></div>

    <script type="text/javascript">
        function initMap() {
            var uluru = { lat: 7.0790060, lng: 125.6083380 };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 17,
                center: uluru
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });
        }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=
AIzaSyAqP2m7tBh31MECRgL-ewcv3LvYjzN1CjE&callback=initMap">
    </script>
</td>
    </tr>
    <tr>
    <td>
        &nbsp;</td>
    <td>
        &nbsp;</td>
    </tr>
    </table>

          
</tr>
</table>
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



    </asp:Content>



















