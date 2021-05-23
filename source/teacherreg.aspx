<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Smart &amp; Snap homework</title>
<script runat="server">

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        d2.Items.Clear()
        If d1.Text = "Punjab" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Amritsar")
            d2.Items.Add("Ludhiana")
            d2.Items.Add("Chandhigarh")
            d2.Items.Add("Pathankot")
            d2.Items.Add("Patiala")
            d2.Items.Add("Phagwara")
            d2.Items.Add("Mohaki")
            d2.Items.Add("Bathinda")
            d2.Items.Add("Hoshiarpur")
            d2.Items.Add("Kapurthala")
            d2.Items.Add("Faridkot")
            d2.Items.Add("Sangrur")
        ElseIf d1.Text = "Haryana" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Dabwali")
            d2.Items.Add("Rohtak")
            d2.Items.Add("Hisar")
            d2.Items.Add("Karnal")
            d2.Items.Add("Ambala")
        ElseIf d1.Text = "Himachal Pardesh" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Shimla")
            d2.Items.Add("Chamba")
            d2.Items.Add("Manali")
            d2.Items.Add("Chail")
            d2.Items.Add("Kasuli")
        ElseIf d1.Text = "Uttar Pardesh" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Lukhnow")
            d2.Items.Add("Kanpur")
            d2.Items.Add("Jhansi")
            d2.Items.Add("Aligarh")
            d2.Items.Add("Meerut")
        ElseIf d1.Text = "Assam" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Guwahati")
            d2.Items.Add("Johar")
            d2.Items.Add("Tezpur")
            d2.Items.Add("Dhubri")
            d2.Items.Add("Lanka")
        ElseIf d1.Text = "Gujrat" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Ahmedabad")
            d2.Items.Add("Surat")
            d2.Items.Add("Rajkot")
            d2.Items.Add("Morvi")
            d2.Items.Add("Jamnagar")
        ElseIf d1.Text = "Goa" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Panaji")
            d2.Items.Add("Ponda")
            d2.Items.Add("Sancoale")
            d2.Items.Add("Mapuca")
            d2.Items.Add("Mormugao")
        ElseIf d1.Text = "Arunachal Pardesh" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Twanga")
            d2.Items.Add("Itanagar")
            d2.Items.Add("Ziro")
            d2.Items.Add("Tezu")
            d2.Items.Add("Along")
        Else
            MsgBox("Please Select Any State")
        End If
    End Sub
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If t1.Text = "" Or t2.Text = "" Or t3.Text = "" Or t4.Text = "" Or d1.Text = "Select Any One" Or d2.Text = "Select Any One" Or d3.Text = "Select Any One" Or d1.Text = "Select Any One" Then
            MsgBox("Please Fill All Fields")
            Exit Sub
        End If
        If IsNumeric(t1.Text) Then
            MsgBox("Enter Teacher Name In text")
            t1.Text = ""
            Exit Sub
        End If
        If Not IsNumeric(t3.Text) Then
            MsgBox("Enter Mobile Number")
            t3.Text = ""
            Exit Sub
        End If
        
                          
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        sql = "insert into teacherreg values('" & d1.Text & "','" & d2.Text & "','" & d3.Text & "','" & t1.Text & "','" & d4.Text & "','" & t2.Text & "'," & t3.Text & ",'" & t4.Text & "','" & "pwd" & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
        MsgBox("Teacher Register Submited Sucessfully")
        conn.Close()
        t1.Text = ""
        t2.Text = ""
        t3.Text = ""
        t4.Text = ""
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        t1.Text = ""
        t2.Text = ""
        t3.Text = ""
        t4.Text = ""
    End Sub
</script>
<style type="text/css">
    <!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:992px;
	z-index:1;
	left: 0px;
	top: 0px;
}
#apDiv2 {
	position:absolute;
	width:100%;
	height:55px;
	z-index:1;
	left: 1px;
	top: 2px;
	background-color: #0d152e;
}
#apDiv3 {
	position:absolute;
	width:20;
	height:20;
	z-index:1;
	left: 0;
	top: 0;
}
#apDiv4 {
	position:absolute;
	width:101px;
	height:49px;
	z-index:2;
	left: 28px;
	top: 1px;
}
#apDiv5 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
}
#apDiv6 {
	position:absolute;
	width:1170px;
	height:52px;
	z-index:3;
	left: 154px;
	top: 2px;
	background-color: #FFFFFF;
}
.style3 {
	color: #FFFFFF;
	font-size: 24px;
	font-weight: bold;
	font-family: Calibri;
}
a:link {
	color: #FFFFFF;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFFFFF;
}
a:hover {
	text-decoration: underline;
	color: #af0028;
}
a:active {
	text-decoration: none;
	color: #af0028;
}
#apDiv7 {
	position:absolute;
	width:100%;
	height:394px;
	z-index:2;
	left: -1px;
	top: 49px;
}
#apDiv8 {
	position:absolute;
	width:460px;
	height:219px;
	z-index:2;
	left: 402px;
	top: 80px;
}
.style6 {
	font-size: 36px;
	font-weight: bold;
	color: #FFFFFF;
}
#apDiv9 {
	position:absolute;
	width:35%;
	height:224px;
	z-index:3;
	left: 444px;
	top: 101px;
}
#apDiv10 {
	position:absolute;
	width:100%;
	height:445px;
	z-index:4;
	left: 2px;
	top: 445px;
}
#apDiv11 {
	position:absolute;
	width:70%;
	height:228px;
	z-index:1;
	left: 162px;
	top: 19px;
}
#apDiv12 {
	position:absolute;
	width:70%;
	height:115px;
	z-index:2;
	left: 424px;
	top: 339px;
}
#apDiv13 {
	position:absolute;
	width:70%;
	height:225px;
	z-index:2;
	left: 159px;
	top: 247px;
}
#apDiv14 {
	position:absolute;
	width:70%;
	height:235px;
	z-index:3;
	left: 159px;
	top: 466px;
}
#apDiv15 {
	position:absolute;
	width:70%;
	height:245px;
	z-index:4;
	left: 162px;
	top: 703px;
}
#apDiv16 {
	position:absolute;
	width:70%;
	height:237px;
	z-index:5;
	left: 163px;
	top: 949px;
}
#apDiv17 {
	position:absolute;
	width:70%;
	height:282px;
	z-index:6;
	left: 167px;
	top: 1785px;
}
#apDiv18 {
	position:absolute;
	width:70%;
	height:275px;
	z-index:7;
	left: 169px;
	top: 2132px;
}
#apDiv19 {
	position:absolute;
	width:70%;
	height:248px;
	z-index:8;
	left: 163px;
	top: 1188px;
}
#apDiv20 {
	position:absolute;
	width:70%;
	height:115px;
	z-index:9;
	left: 170px;
	top: 2798px;
}
#apDiv21 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:9;
}
#apDiv22 {
	position:absolute;
	width:100%;
	height:50px;
	z-index:5;
	left: 1px;
	top: 913px;
}
.style17 {
	color: #0D152E;
	font-weight: bold;
}
.style18 {
	color: #000000;
	font-weight: bold;
}
#apDiv23 {
	position:absolute;
	width:45%;
	height:372px;
	z-index:1;
	left: 121px;
	top: 53px;
}
#apDiv24 {
	position:absolute;
	width:448px;
	height:42px;
	z-index:1;
	left: 258px;
	top: 21px;
}
#apDiv25 {
	position:absolute;
	width:50%;
	height:35px;
	z-index:2;
	left: 261px;
	top: 15px;
	background-color: #CCCCCC;
}
.style20 {
	font-size: 18px;
	font-weight: bold;
}
.style21 {
	font-size: 24px
}
#apDiv26 {
	position:absolute;
	width:30%;
	height:324px;
	z-index:3;
	left: 596px;
	top: 53px;
}
#apDiv27 {
	position:absolute;
	width:662px;
	height:20px;
	z-index:4;
	left: 514px;
	top: 478px;
	background-color: #CCCCCC;
}
.style22 {font-size: 24px; font-weight: bold; }
    .style23
    {
        height: 22px;
    }
    .style24
    {
        height: 30px;
    }
.style25 {height: 30px; font-weight: bold; }
.style26 {height: 22px; font-weight: bold; }
    .style27
    {
        height: 30px;
        width: 60%;
    }
    .style28
    {
        width: 60%;
    }
    .style29
    {
        height: 22px;
        width: 60%;
    }
#apDiv28 {
	position:absolute;
	width:100%;
	height:49px;
	z-index:6;
	left: 0;
	top: 0;
}
-->
</style>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv7">
    <script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','100%','height','394','src','../animation/Movie3 (2)','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','../animation/Movie3 (2)' ); //end AC code
    </script>
    <noscript>
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="100%" height="394">
      <param name="movie" value="../animation/Movie3 (2).swf" />
      <param name="quality" value="high" />
      <embed src="../animation/Movie3 (2).swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="100%" height="394"></embed>
    </object>
    </noscript>
    </div>
  <div id="apDiv10">
    <div id="apDiv23">
      <span class="style27"></span>
      <table width="100%" height="337" border="0">
        
        <tr>
          <td width="26%" class="style25">State </td>
          <td width="74%" class="style27" colspan="2">
<asp:DropDownList ID="d1" runat="server" 
                  onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                  AutoPostBack="True" style="margin-bottom: 0px">
                  <asp:ListItem>Select Any State</asp:ListItem>
                  <asp:ListItem>Punjab</asp:ListItem>
                  <asp:ListItem>Haryana</asp:ListItem>
                  <asp:ListItem>Himachal Pardesh</asp:ListItem>
                  <asp:ListItem>Uttar Pardesh</asp:ListItem>
                  <asp:ListItem>Assam</asp:ListItem>
                  <asp:ListItem>Gujrat</asp:ListItem>
                  <asp:ListItem>Goa</asp:ListItem>
                  <asp:ListItem>Arunachal Pardesh</asp:ListItem>
              </asp:DropDownList>            </td>
        </tr>
        <tr>  
          <td height="26"><strong>City</strong></td>
          <td class="style28" colspan="2">
              <asp:DropDownList ID="d2" runat="server" 
                  AutoPostBack="True" Width="137px">
                  <asp:ListItem Value="Select any city">Select Any City</asp:ListItem>
              </asp:DropDownList>            </td>
        </tr>
        <tr>
          <td class="style24"><strong>School Name</strong></td>
          <td class="style27" colspan="2">
              <asp:DropDownList ID="d3" runat="server" Width="143px" 
                  Height="16px" DataSourceID="SqlDataSource1" DataTextField="SchoolName" 
                  DataValueField="SchoolName">
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT [SchoolName] FROM [schlreg] WHERE ([City] = @City)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="d2" Name="City" PropertyName="SelectedValue" 
                          Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
            &nbsp;
              </td>
        </tr>
        
        <tr>
          <td height="32"><strong>Teacher Name</strong></td>
          <td class="style28" colspan="2">
              <asp:TextBox ID="t1" runat="server" Width="135px"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td height="32"><strong>Gender</strong></td>
          <td class="style28" colspan="2">
              <asp:DropDownList ID="d4" runat="server" Height="16px" 
                  Width="136px">
                  <asp:ListItem>Select Any Gender</asp:ListItem>
                  <asp:ListItem>Male</asp:ListItem>
                  <asp:ListItem>Female</asp:ListItem>
              </asp:DropDownList>
            </td>
        </tr>
        
        <tr>
          <td height="29"><strong>Email</strong></td>
          <td class="style28">
              <asp:TextBox ID="t2" runat="server" Width="135px"></asp:TextBox>
            &nbsp;
              &nbsp;&nbsp;
            </td>
          <td class="style28">
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                  ControlToValidate="t2" ErrorMessage="Enter correct email" ForeColor="Red" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        
        <tr>
          <td height="36"><strong>Mobile No</strong></td>
          <td class="style28" colspan="2">
              <asp:TextBox ID="t3" runat="server" Width="134px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
          <td height="36" class="style26"><strong>Address</strong></td>
          <td class="style29" colspan="2">
              <asp:TextBox ID="t4" runat="server" Width="133px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
          <td colspan="3" class="style23"><span class="style22">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Larger" 
              ForeColor="White" Height="33px" Text="Submit" Width="342px" 
              BackColor="#0D152E" BorderColor="#1A4073" BorderStyle="Solid" BorderWidth="1px" 
              style="margin-top: 0px" onclick="Button1_Click" />            
          &nbsp;&nbsp;            
              <asp:Button ID="Button2" runat="server" BackColor="#0D152E" Font-Bold="True" 
                  Font-Size="Larger" ForeColor="White" Height="33px" Text="Reset" 
                  Width="342px" onclick="Button2_Click" style="margin-left: 0px" />
          </span>
            </td>
          </tr>
      </table>
    </div>
    <div class="style20" id="apDiv25">
      <div align="center" class="style21">TEACHER REGISTRATION FORM</div>
    </div>
    <div id="apDiv26"><img src="../images/reg 3.jpg" width="100%" height="320" /></div>
    </div>
  <div id="apDiv22">
    <table width="100%" border="0">
      <tr>
        <td colspan="2"><hr /></td>
      </tr>
      <tr>
        <td width="76%"><span class="style18">This Website Developed By Mandeep Kaur</span></td>
        <td width="24%"><span class="style17">Copyright Smart &amp; Snap Home Work 2020</span></td>
      </tr>
    </table>
  </div>
  <div id="apDiv28">
    <div id="apDiv2">
      <div id="apDiv3"></div>
      <table width="100%" border="0">
        <tr>
          <td width="3%" rowspan="2"><img src="../images/logo.png" width="39" height="35" /></td>
          <td width="22%" rowspan="2"><span class="style3">Smart &amp; Snap HomeWork</span></td>
          <td colspan="12">&nbsp;</td>
          <td width="2%"><img src="../images/email.png" width="25" height="20" /></td>
          <td width="17%"><a href="smartsnaphomework@gmail.com">smartsnaphomework@gmail.com</a></td>
        </tr>
        <tr>
          <td width="5%"><div align="center"><img src="../images/homepic.png" width="25" height="25" /></div></td>
          <td width="5%"><a href="index.aspx">Home</a></td>
          <td width="3%"><div align="center"><img src="../images/schoolpic.png" width="25" height="25" /></div></td>
          <td width="5%"><a href="schollogin.aspx">School</a></td>
          <td width="3%"><div align="center"><img src="../images/teacher.png" width="25" height="25" /></div></td>
          <td width="6%"><a href="teacherlogin.aspx">Teacher</a></td>
          <td width="3%"><div align="center"><img src="../images/parentpic.png" width="19" height="25" /></div></td>
          <td width="8%"><a href="stulogin.aspx">Parent/Student</a></td>
          <td width="3%"><div align="center"><img src="../images/adminpic.png" width="25" height="25" /></div></td>
          <td width="5%"><a href="adminlogin.aspx">Admin</a></td>
          <td width="2%"><div align="center"><img src="../images/contact.png" width="25" height="25" /></div></td>
          <td width="8%"><div align="center"><a href="contact.aspx">Contact us</a></div></td>
          <td>&nbsp;</td>
          <td width="17%">&nbsp;</td>
        </tr>
      </table>
    </div>
  </div>
</div>
</form>
</body>
</html>
