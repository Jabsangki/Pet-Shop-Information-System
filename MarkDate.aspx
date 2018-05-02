<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="MarkDate.aspx.cs" Inherits="MarkDate" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<h2>MARK A DATE</h2>
<br />
    <asp:Calendar ID="Calendar1" runat="server" format="" BackColor="White" 
                BorderColor="White" 
                Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" 
                Width="350px" OnDayRender="Calendar1_DayRender"  BorderWidth="1px" NextPrevFormat="FullMonth"
                >
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle VerticalAlign="Bottom" Font-Bold="True" Font-Size="8pt" 
                    ForeColor="#333333" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" Font-Bold="True" 
                    BorderWidth="4px" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="" />
    </asp:Calendar>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="MARK THIS DATE" />

&nbsp;<asp:Button ID="Button2" runat="server"
        Text="UNMARK THIS DATE" onclick="Button2_Click" />
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
<br>
</br>
<br>
</br>
<br>
</br>


</asp:Content>



