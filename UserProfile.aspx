<%@ Page Title="User Profile" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="UserProfile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
.example2 {
background-color: lightblue;
    border: 1px ;
    padding: 10px;
    border-radius: 25px;
}

        .style1
        {
            height: 199px;
            font-weight: 700;
        }
        .style2
        {
            height: 584px;
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <script type="text/javascript">
        var txt = new Array();
        var img = new Array();
        txt[0] = ':-)';
        img[0] = '<img alt=\"\" src=\"Emoticons/regular_smile.gif\"/>';
        txt[1] = ':)';
        img[1] = '<img alt=\"\" src=\"Emoticons/regular_smile.gif\"/>';
        txt[2] = ':(';
        img[2] = '<img alt=\"\" src=\"Emoticons/cry_smile.gif\"/>';


        function replacewithimg(dv) {
            var innTxt = dv.innerHTML;
            for (var v = 0; v < txt.length; v++) {
                if (innTxt.indexOf(txt[v]) > -1) {
                    innTxt = innTxt.replace(txt[v], img[v]);
                    dv.innerHTML = innTxt;
                    break;
                }
            }
        }
    
    
    </script>
<table id="control">
<tr>
<td valign ="top" class="style1">
<div id ="directionpanel style="border-style: hidden;"">
  <center>  <asp:Image ID="Image1" runat="server" Height="167px" Width="164px" 
          BorderStyle="Double" />
    <br />
&nbsp;<asp:Button ID="imgbttn" runat="server" onclick="imgbttn_Click" 
        Text="Upload Image" Width="159px" />
        </center>
</div>

</td>
<td valign ="top" class="style1">
<div id ="directionpanel1"  style="overflow: auto; width: 637px;">
    <br />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Welcome!"></asp:Label>
&nbsp;
    <asp:Label ID="LabelF" runat="server" Text="Label"></asp:Label>
&nbsp;
    <asp:Label ID="LabelM" runat="server" Text="Label"></asp:Label>
&nbsp;
    <asp:Label ID="LabelL" runat="server" Text="Label"></asp:Label>
    &nbsp;<asp:Label ID="idlabel" runat="server" Text="0" Visible="False"></asp:Label>
    &nbsp;<asp:Label ID="idlabel0" runat="server" Text="Utype" Visible="False"></asp:Label>
    <br />
    <br />
    &nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;
    </div>
</td></tr>
<tr>
<td valign ="top" class="style2">
    <div id ="space"  style="height: 46px; overflow: auto; width: 245px;" >
<center>
</center>
</div>
    <div id ="Div1"  style="height: 46px; overflow: auto; width: 245px;" >
<center>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Notification</asp:LinkButton>
</center>
</div>
    <div id ="Div2"  style="height: 46px; overflow: auto; width: 245px;" >
<center>
    <asp:LinkButton ID="LinkButton2" runat="server" 
        PostBackUrl="~/UserProfile.aspx" onclick="LinkButton2_Click">My Pets</asp:LinkButton>
</center>
</div>
    <div id ="Div3"  style="height: 46px; overflow: auto; width: 100%;" >
<center>
    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Settings.aspx">Account Settings</asp:LinkButton>
</center>
</div>
    <div id ="Div4"  style="height: 46px; overflow: auto; width: 245px;" >
<center>
    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/ContactUs.aspx">ContactUs</asp:LinkButton>
</center>
</div>
</td>
<td valign ="top" class="style2">
    <br />
    <asp:Label ID="lblinfo" runat="server" Font-Bold="True" Font-Overline="False" 
        Font-Size="X-Large" Text="My Pets:"></asp:Label>
    <br />
    <br />
    <div id="Div" style="width: 100%; overflow:scroll;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="TransID" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100%">
        <Columns>
            <asp:BoundField DataField="IDno" HeaderText="IDno" SortExpression="IDno" />
            <asp:BoundField DataField="TransID" HeaderText="TransID" ReadOnly="True" 
                SortExpression="TransID" />
            <asp:BoundField DataField="OwnerName" HeaderText="OwnerName" 
                SortExpression="OwnerName" />
            <asp:BoundField DataField="PetName" HeaderText="PetName" 
                SortExpression="PetName" />
            <asp:BoundField DataField="PetBreed" HeaderText="PetBreed" 
                SortExpression="PetBreed" />
            <asp:BoundField DataField="PetGender" HeaderText="PetGender" 
                SortExpression="PetGender" />
            <asp:BoundField DataField="PetCondition" HeaderText="PetCondition" 
                SortExpression="PetCondition" />
            <asp:BoundField DataField="PetDoB" HeaderText="PetDoB" 
                SortExpression="PetDoB" />
          
        </Columns>
        
    </asp:GridView>
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
            DataSourceID="SqlDataSource2" ForeColor="#333333" 
            OnItemCommand="DataList1_ItemCommand" 
            onselectedindexchanged="DataList1_SelectedIndexChanged">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <ItemTemplate>
            <table>
            <tr>
               <td> <asp:CheckBox ID="CheckBox1" runat="server" /></td>
               <td> 
                   <asp:Label ID="Labelxx" runat="server" Width="30px" Text='<%# Eval("NotNo") %>' Visible="false"></asp:Label></td>
               <td><asp:Label ID="lblfrm" runat="server" Text='<%# Eval("FRM") %>'></asp:Label></td>
               <td> 
                   <asp:Label ID="Label1" runat="server" Width="30px" Text=""></asp:Label></td>
                <td><asp:LinkButton ID="linkmsg" runat="server" CommandName="call" ><%# Eval("MSG").ToString().Length>70? Eval("MSG").ToString().Substring(0,70):Eval("MSG") %></asp:LinkButton></td>
             </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:DataList>
        <asp:DataList ID="DataList2" runat="server" CellPadding="4" 
            DataSourceID="SqlDataSource3" ForeColor="#333333" Visible="False" 
            onselectedindexchanged="DataList2_SelectedIndexChanged" >
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <ItemTemplate>
            <table>
            <tr>
               <td><asp:Label ID="lblfrm1" runat="server" Text='<%# Eval("FRM") %>'></asp:Label></td>
               <td> 
                   &nbsp;</td>
                <td>&nbsp;</td>
             </tr>
             <tr>
             <td></td>
             <td>
                 <asp:TextBox ID="TextBox1" runat="server"  TextMode="MultiLine" Height="103px" Width="450px" Text='<%# Eval("MSG") %>' ReadOnly="True" CssClass="example2"></asp:TextBox>
             </td>
             </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:DataList>
        <br />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM pet"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
        ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM notification"
        ></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:db_a3539d_arkvetConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM notification"></asp:SqlDataSource>
    <asp:TextBox ID="txtST" runat="server"></asp:TextBox>
    <asp:Button ID="btnST" runat="server" Text="Search" 
        onclick="btnST_Click" />
    <br />
    <asp:Button ID="delnot" runat="server" onclick="delnot_Click" Text="Delete all" 
        Visible="False" />
    <br />
    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="" 
        Visible="False"></asp:Label>
    <asp:Label ID="Label6" runat="server" 
        Text="" Visible="False"></asp:Label>
    <asp:Label ID="Label7" runat="server" 
        Text="" Visible="False"></asp:Label>
    <br />
    <br />
    </td></tr>
</table>
&nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
</asp:Content>










