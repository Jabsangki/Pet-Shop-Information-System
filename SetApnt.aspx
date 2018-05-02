<%@ Page Title="Set Appointment" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="SetApnt.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

        <center>
<h2>SET APPOINTMENT</h2>
    <br />
    <br />
       
    <br />
        <asp:Label ID="Labelxx" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <asp:Label ID="Label17" runat="server" Font-Size="Small" ForeColor="Red" 
                Text="* Username Do Not Exist! " Visible="False"></asp:Label>
        <br />

            <br />
            <asp:Label ID="Label2" runat="server" Text="Username:" Width="167px" 
                Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txtun" runat="server" Font-Size="Large"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnver" runat="server" Text="Verify" onclick="btnver_Click" />
            <br />
            <asp:Label ID="Label3" runat="server" Text="First Name:" Width="167px" 
                Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txtfn" runat="server" Font-Size="Large" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Middle Name:" Width="167px" 
                Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txtmn" runat="server" Font-Size="Large" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Last Name:" Width="167px" 
                Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txtln" runat="server" Font-Size="Large" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Address:" Width="167px" 
                Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txtad" runat="server" Font-Size="Large" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label10" runat="server" Text="ContactNo:" Width="167px" 
                Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txtcn" runat="server" Font-Size="Large" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Email:" Width="167px" 
                Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txte" runat="server" Font-Size="Large" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Pet Name:" Width="167px" 
                Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txtpn" runat="server" Font-Size="Large" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label13" runat="server" Text="Pet Description:" Width="167px" 
                Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txtpd" runat="server" Font-Size="Large" Enabled="False"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Time:" Width="167px" 
                Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="46px" 
                Enabled="False">
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label6" runat="server" Text=":"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="46px" 
                Enabled="False">
                <asp:ListItem>00</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
                <asp:ListItem>32</asp:ListItem>
                <asp:ListItem>33</asp:ListItem>
                <asp:ListItem>34</asp:ListItem>
                <asp:ListItem>35</asp:ListItem>
                <asp:ListItem>36</asp:ListItem>
                <asp:ListItem>37</asp:ListItem>
                <asp:ListItem>38</asp:ListItem>
                <asp:ListItem>39</asp:ListItem>
                <asp:ListItem>40</asp:ListItem>
                <asp:ListItem>41</asp:ListItem>
                <asp:ListItem>42</asp:ListItem>
                <asp:ListItem>43</asp:ListItem>
                <asp:ListItem>44</asp:ListItem>
                <asp:ListItem>45</asp:ListItem>
                <asp:ListItem>46</asp:ListItem>
                <asp:ListItem>47</asp:ListItem>
                <asp:ListItem>48</asp:ListItem>
                <asp:ListItem>49</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>51</asp:ListItem>
                <asp:ListItem>52</asp:ListItem>
                <asp:ListItem>53</asp:ListItem>
                <asp:ListItem>54</asp:ListItem>
                <asp:ListItem>55</asp:ListItem>
                <asp:ListItem>56</asp:ListItem>
                <asp:ListItem>57</asp:ListItem>
                <asp:ListItem>58</asp:ListItem>
                <asp:ListItem>59</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList3" runat="server" Enabled="False">
                <asp:ListItem>AM</asp:ListItem>
                <asp:ListItem>PM</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />

            <asp:Calendar ID="Calendar1" runat="server" format="" BackColor="White" 
                BorderColor="White" onselectionchanged="Calendar1_SelectionChanged"
                Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" 
                Width="350px" OnDayRender="Calendar1_DayRender" 
                BorderWidth="1px" NextPrevFormat="FullMonth"
                >
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle VerticalAlign="Bottom" Font-Bold="True" Font-Size="8pt" 
                    ForeColor="#333333" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" Font-Bold="True" 
                    BorderWidth="4px" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
                <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Set Appointment" Enabled="False" />
<br/>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>

            <br />
            <asp:Label ID="Label16" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Labeldaterender" runat="server" Visible="False"></asp:Label>

            <asp:Label ID="Label14" runat="server"></asp:Label>

            <asp:Label ID="Label15" runat="server" Text="max" Visible="false"></asp:Label>

            <br />

</center>
<br>
<br/>
<br>
<br/>
<br>
<br/>



</asp:Content>





