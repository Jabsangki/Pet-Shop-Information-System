<%@ Page Title="ContactUs" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Contact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div>
<table>
<tr>
<td style="font-family: tahoma; font-size: medium">
 <br />
<h2>    DAVAO CITY</h2>
  <br />
Opening Hours:
 <br />
Monday-Saturday
 <br />
From 8:00 am- 7:00 pm
 <br />
Sunday by Appointment and Emergency 
 <br />
 Contact Information:
 <br />
-09228215121
 <br />
-2867483
 <br />
 <br />
 <br />
 

 <br />
<h2>ABOUT THE VETS</h2>
 <br />

 <br />
Resident Veterinarians on-duty and 
 <br />
on-call:

 <br />
 <br />
Dr. Ken Anthony L. Lao, DVM 
 <br />
*Doctor of Veterinary Medicine(University of the Philippines)
 <br />
*Veterinary Surgeon,Veterinary Surgical Associates, California USA
 <br />
 
 <br />
Dr. Criselda C. Lao, DVM, RN, MAN, USRN
 <br />
*Doctor of Veterinary Medicine,(University of the Philippines-Salutatorian)
 <br />
*Recipient of the Edna Lucille Enriquez-Yap~Research Award in Veterinary    
 <br />
*Anatomy Winner, Research Award by the Philippine Society of Animal Scientists (PSAS)
 <br />
*Research Scientist, International Livestock Research Institute (ILRI)
 <br />
*Reviewer, Local and National for the Philippine Nursing Licensure Examination
 <br />
  and NLCEX (U.S. boards)
 <br />
*Editor, thesis proposals, write-ups
 <br />
*Test Constructor and Test Prep Manager (KAPLAN)
</td>
<td>
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
</table>
</div>
</asp:Content>




