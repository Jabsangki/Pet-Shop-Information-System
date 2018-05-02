<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
#example1 {
background-color: lightblue;
    border: 2px solid;
    padding: 5px;
    border-radius: 25px;
}

.example2 {
background-color: lightblue;
    border: 1px ;
    padding: 10px;
    border-radius: 25px;
}
        .style1
        {
            width: 273px;
        }
        .style2
        {
            width: 572px;
        }
        #top
        {
            width: 623px;
        }
        #bottom
        {
            height: 160px;
            width: 625px;
        }
        * {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <center><table>
<tr>
<td class="style1">
    <div style="width: 262px" id="example1">
    <h1>RECENTLY ASKED QUESTIONS</h1>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            >
            <ItemTemplate>
                Topic:
                <asp:Label ID="TopicLabel" runat="server" Text='<%# Eval("Topic") %>' />
                <br />
                Date:
                <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
            
            SelectCommand="SELECT * FROM `gthread` ORDER BY `gthread`.`Date` DESC LIMIT 5"></asp:SqlDataSource>
            </div>

    </td><td class="style2" >
    <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img alt="" src="WebImages/xxx1.png" style="width:100%" height="250px">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img alt="" src="WebImages/xxx.jpg" style="width:100%" height="250px">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img alt="" src="WebImages/xxx2.jpg" style="width:100%" height="250px">
  <div class="text"></div>
</div>

</div>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
        <div id="bottom" >
        <center>
    JOIN OUR COMMUNITY NOW<br />
    THIS IS A USER FRIENDLY WEBSITE FOR<br />
    OUR VALUED COSTUMER TO CHECK ON<br />
    THEIR PET STATUS AND MEET<br />
    COMMON FRIENDS<br />
    <br />
    CLICK HERE &gt;&gt;
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/MysqlAcc/MysqlReg.aspx">Register Now</asp:HyperLink>
        </center>
        </div>
        <script type="text/javascript">
            var slideIndex = 0;
            showSlides();

            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) { slideIndex = 1 }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                setTimeout(showSlides, 5000); // Change image every 5 seconds
            }
</script>




    </td>
</tr>
</table>
</center>
<div id="x">
<center>
    <h2>NEWS</h2>
        <br />
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
        <table>
        <tr>
        <td>
            <asp:Image ID="Image2" runat="server" Height="231px" Width="450px" ImageUrl='<%# Eval("PostImg") %>' />
        </td>
        <td>
            <asp:TextBox ID="TextBox1"  runat="server"  Height="226px" Width="427px" Text='<%# Eval("Details") %>' 
                ontextchanged="TextBox1_TextChanged" ReadOnly="True" TextMode="MultiLine" cssclass="example2" Font-Size="Large"></asp:TextBox>
        </td>
        </tr>
        </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>

    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM homeadd ORDER BY `homeadd`.`Date` DESC"></asp:SqlDataSource>
</center>
</div>
</asp:Content>













