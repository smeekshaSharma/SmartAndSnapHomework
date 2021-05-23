<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Smart &amp; Snap Homework</title>
<script runat="server">
    
    Protected Sub d1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        d2.Items.Clear()
        If d1.Text = "Punjab" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Amritsar")
            d2.Items.Add("Ludhiana")
            d2.Items.Add("Chandhigarh")
            d2.Items.Add("Pathankot")
            d2.Items.Add("Patiala")
            d2.Items.Add("Phagwara")
            d2.Items.Add("Mohali")
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
    Dim count As New Integer
    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        Command = New Data.SqlClient.SqlCommand("delete  from logintemp")
        Command.Connection = conn
        Command.ExecuteScalar()
        sql = "insert into logintemp values('" & "Null" & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
       
        Response.Redirect("adminlogin.aspx")
    End Sub
    Dim fname As String
    Dim lname As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select uname from logintemp")
        command.Connection = conn
        Label1.Text = command.ExecuteScalar
        If Label1.Text = "Null" Then
            MsgBox("Login Your Account")
            Response.Redirect("adminlogin.aspx")
        Else
            command = New Data.SqlClient.SqlCommand("select FirstName from adminreg where Email='" & Label1.Text & "'")
            command.Connection = conn
            fname = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select LastName from adminreg where Email='" & Label1.Text & "'")
            command.Connection = conn
            lname = command.ExecuteScalar
            Label2.Text = "Welcome: " & fname & " " & lname
            conn.Close()
        End If
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:617px;
	z-index:1;
	left: 0px;
	top: 0;
}
#apDiv2 {
	position:absolute;
	width:100%;
	height:108px;
	z-index:1;
	left: -2px;
	top: 2px;
}
#apDiv3 {
	position:absolute;
	width:5%;
	height:104px;
	z-index:1;
	top: 3px;
	left: 36px;
}
#apDiv4 {
	position:absolute;
	width:40%;
	height:42px;
	z-index:2;
	left: 355px;
	top: 240px;
}
#apDiv5 {
	position:absolute;
	width:95%;
	height:47px;
	z-index:2;
	left: 43px;
	top: 120px;
}
#apDiv6 {
	position:absolute;
	width:227px;
	height:392px;
	z-index:3;
	left: 46px;
	top: 177px;
}
#apDiv7 {
	position:absolute;
	width:75%;
	height:115px;
	z-index:4;
	left: 304px;
	top: 178px;
}
#apDiv8 {
	position:absolute;
	width:226px;
	height:393px;
	z-index:1;
	left: 2px;
	top: 0px;
}
#apDiv9 {
	position:absolute;
	width:524px;
	height:43px;
	z-index:3;
	left: 353px;
	top: 243px;
}
#apDiv10 {
	position:absolute;
	width:576px;
	height:48px;
	z-index:2;
	left: 198px;
	top: 30px;
}
#apDiv11 {
	position:absolute;
	width:100%;
	height:101px;
	z-index:1;
	left: 0px;
}
#apDiv12 {
	position:absolute;
	width:5%;
	height:89px;
	z-index:1;
	left: 69px;
	top: 9px;
}
#apDiv13 {
	position:absolute;
	width:807px;
	height:54px;
	z-index:2;
	left: 265px;
	top: 22px;
}
.style1 {
	font-size: 36px;
	font-weight: bold;
	color: #0D152E;
}
#apDiv14 {
	position:absolute;
	width:98%;
	height:32px;
	z-index:2;
	left: 14px;
	top: 102px;
}
#apDiv15 {
	position:absolute;
	width:15%;
	height:301px;
	z-index:3;
	left: 29px;
	top: 155px;
}
.style2 {
	font-size: 18px;
	font-weight: bold;
}
#apDiv16 {
	position:absolute;
	width:80%;
	height:362px;
	z-index:4;
	left: 251px;
	top: 156px;
}
#apDiv17 {
	position:absolute;
	width:20%;
	height:333px;
	z-index:5;
	left: 312px;
	top: 454px;
}
#apDiv18 {
	position:absolute;
	width:20%;
	height:332px;
	z-index:6;
	left: 654px;
	top: 453px;
}
#apDiv19 {
	position:absolute;
	width:20%;
	height:330px;
	z-index:7;
	left: 1008px;
	top: 452px;
}
.style3 {color: #CCCCCC}
body {
	background-color: #FFFFFF;
}
.style6 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 18px;
}
#apDiv20 {
	position:absolute;
	width:100%;
	height:34px;
	z-index:5;
	left: 0px;
	top: 564px;
}
.style17 {	color: #0D152E;
	font-weight: bold;
}
.style18 {	color: #000000;
	font-weight: bold;
}
.style7 {font-size: 18px; font-weight: bold; color: #FFFFCC; }
.style8 {
	color: #FFFFCC;
	font-weight: bold;
}
a {
	font-family: Calibri;
	font-size: 16px;
	color: #000000;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #000000;
}
a:hover {
	text-decoration: underline;
	color: #0D152E;
}
a:active {
	text-decoration: none;
	color: #0D152E;
}
-->
</style>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv11">
    <div id="apDiv12"><img src="../images/admiin.jpg" width="100" height="80" /></div>
    <div id="apDiv13">
      <div align="center" class="style1">ADMIN DASHBOARD</div>
    </div>
  </div>
  <div class="style3" id="apDiv14">
    <table width="100%" border="0">
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Label"></asp:Label>
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="#0D152E" 
                onclick="LinkButton1_Click">logout</asp:LinkButton>
          </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </div>
  <div id="apDiv15">
    <table width="100%" height="258" border="0">
      
      <tr>
        <td height="26" colspan="2" bgcolor="#0D152E"><div align="center" class="style7">Admin Dashboard</div></td>
      </tr>
      <tr>
        <td width="16%" height="27" bgcolor="#CCCCCC"><img src="../images/home.png" width="25" height="25" /></td>
        <td width="84%" bgcolor="#CCCCCC"><span class="style2"><a href="admindshboard.aspx">Home</a></span></td>
      </tr>
      <tr>
        <td height="21" bgcolor="#CCCCCC"><img src="../images/ok logo.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="adminschlconfirm.aspx"><strong>School Confirmation</strong></a></td>
      </tr>
      <tr>
        <td height="24" bgcolor="#CCCCCC"><img src="../images/FAQ.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><strong><a href="adminfaq.aspx">FAQ</a></strong></td>
      </tr>
      <tr>
        <td height="33" bgcolor="#CCCCCC"><img src="../images/newsss.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="adminnews.aspx"><strong>Admin News</strong></a></td>
      </tr>
      <tr>
        <td height="21" bgcolor="#CCCCCC"><img src="../images/notification.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="adminschlnotice.aspx"><strong>School Notice</strong></a></td>
      </tr>
      <tr>
        <td height="21" colspan="2" bgcolor="#0D152E"><div align="center"><span class="style8">Reports</span></div></td>
      </tr>
      <tr>
        <td height="21" bgcolor="#CCCCCC"><img src="../images/schhlll.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="adminschlregrpt.aspx"><strong>Schools Registration</strong></a></td>
      </tr>
      <tr>
        <td height="21" bgcolor="#CCCCCC"><img src="../images/teacherrrrr.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="adminteachregrpt.aspx"><strong>Teachers Registration</strong></a></td>
      </tr>
      <tr>
        <td height="21" bgcolor="#CCCCCC"><img src="../images/stuuu.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="adminsturegrpt.aspx"><strong>Students Registration</strong></a></td>
      </tr>
    </table>
  </div>
  <div id="apDiv16">
    <table width="100%" height="59" border="0">
      
      <tr>
        <td height="26" colspan="2" bgcolor="#0d152e"><span class="style6">Admin School Registration Report</span></td>
      </tr>
      <tr>
        <td height="4" colspan="2"><hr /></td>
      </tr>
      
      <tr>
        <td><strong>State</strong></td>
        <td width="58%" colspan="-2">
            <asp:DropDownList ID="d1" runat="server" 
                onselectedindexchanged="d1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Select Any One </asp:ListItem>
                <asp:ListItem>Punjab</asp:ListItem>
                <asp:ListItem>Haryana</asp:ListItem>
                <asp:ListItem>Himachal Pardesh</asp:ListItem>
                <asp:ListItem>Uttar Pardesh</asp:ListItem>
                <asp:ListItem>Assam</asp:ListItem>
                <asp:ListItem>Gujarat</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                <asp:ListItem>Arunachal Pardesh</asp:ListItem>
            </asp:DropDownList>
          </td>
      </tr>
      <tr>
        <td><strong>City</strong></td>
        <td colspan="-2">
            <asp:DropDownList ID="d2" runat="server">
                <asp:ListItem>Select Any One</asp:ListItem>
            </asp:DropDownList>
          </td>
      </tr>
      
      <tr>
        <td colspan="2"><hr /></td>
      </tr>
      <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
          </td>
      </tr>
      
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
    </table>
  </div>
  <div id="apDiv20">
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
</div>
    </form>
</body>
</html>
