<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Smart &amp; Snap Homework</title>
<script runat="server">
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As String
    Dim fname As String
    Dim lname As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select uname from stutemp")
        command.Connection = conn
        Label1.Text = command.ExecuteScalar
        If Label1.Text = "Null" Then
            MsgBox("Login Your Account")
            Response.Redirect("stulogin.aspx")
        Else
            command = New Data.SqlClient.SqlCommand("select StudentName from stureg where Email='" & Label1.Text & "'")
            command.Connection = conn
            fname = command.ExecuteScalar
           
            Label2.Text = "Welcome: " & fname
            conn.Close()
            
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete  from stutemp")
        command.Connection = conn
        command.ExecuteScalar()
        sql = "insert into stutemp values('" & "Null" & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
       
        Response.Redirect("stulogin.aspx")
        conn.Close()
    End Sub
    </script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:864px;
	z-index:1;
	left: 2px;
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
	width:1310px;
	height:104px;
	z-index:1;
}
#apDiv12 {
	position:absolute;
	width:5%;
	height:87px;
	z-index:1;
	left: 108px;
	top: 12px;
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
	color: #000066;
}
#apDiv14 {
	position:absolute;
	width:1242px;
	height:44px;
	z-index:2;
	left: 31px;
	top: 125px;
}
#apDiv15 {
	position:absolute;
	width:215px;
	height:214px;
	z-index:3;
	left: 29px;
	top: 185px;
}
.style2 {
	font-size: 18px;
	font-weight: bold;
}
#apDiv16 {
	position:absolute;
	width:965px;
	height:236px;
	z-index:4;
	left: 309px;
	top: 187px;
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
.style4 {font-size: 18px; font-weight: bold; color: #FFFFFF; }
.style5 {color: #FFFFFF}
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
    <div id="apDiv12"><img src="../images/ooo.png" width="100" height="80" /></div>
    <div id="apDiv13">
      <div align="center" class="style1">STUDENT DASHBOARD</div>
    </div>
  </div>
  <div class="style3" id="apDiv14"></div>
  <div id="apDiv15">
    <table width="100%" height="202" border="0">
      <tr>
        <td width="16%" height="41" bgcolor="#0D152E"><img src="../images/home.png" width="25" height="25" /></td>
        <td width="84%" bgcolor="#0D152E"><div align="center" class="style4">Home</div></td>
      </tr>
      <tr>
        <td height="31" colspan="2" bgcolor="#0D152E"><div align="center" class="style2"><span class="style5">Student</span> <span class="style5">Dashboard</span></div></td>
      </tr>
      <tr>
        <td height="29" bgcolor="#CCCCCC"><img src="../images/notification.png" width="25" height="25" /></td>
        <td height="29" bgcolor="#CCCCCC"><strong><a href="stuteachnotice.aspx">Teacher Notice</a></strong></td>
      </tr>
      <tr>
        <td height="29" bgcolor="#CCCCCC"><img src="../images/notesss.png" width="25" height="25" /></td>
        <td height="29" bgcolor="#CCCCCC"><strong><a href="stuschlnotice.aspx">School Notice</a></strong></td>
      </tr>
      <tr>
        <td height="29" bgcolor="#CCCCCC"><img src="../images/notess.png" width="25" height="25" /></td>
        <td height="29" bgcolor="#CCCCCC"><strong><a href="notesdownload.aspx">Notes Download</a></strong></td>
      </tr>
      <tr>
        <td height="29" bgcolor="#CCCCCC"><img src="../images/stuaaa.png" width="25" height="25" /></td>
        <td height="29" bgcolor="#CCCCCC"><strong><a href="stuacountstting.aspx">Student Account Setting</a></strong></td>
      </tr>
    </table>
  </div>
  <div id="apDiv16">
    <table width="100%" height="266" border="0">
      <tr>
        <td colspan="5" bordercolor="#FFFFFF" bgcolor="#999999">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True">Logout</asp:LinkButton>          </td>
      </tr>
      <tr>
        <td height="44" colspan="5" bgcolor="#0d152e"><span class="style4">Student Dashboard</span></td>
      </tr>
      <tr>
        <td colspan="5"><p align="justify">Student Dashboard allows administrators and counsellors to view relevant student information all on one page.</p>
          <p align="justify">Having a single screen does not mean the absences of details. Users can drill down to get detailed information for each section.</p>
          <p align="justify">The Student Dashboard is easy to use and does not require any   training. The intuitive design makes it easy to navigate through all the   information about a student.</p>
          <p align="justify">Here is  a particular item to see a list of other students in the same category (e.g. other students on the baseball team).</p>
          <p align="justify"><em>Student Dashboard</em> provides easy and secure <em>student</em> portal access functionality. ... </p></td>
        </tr>
    </table>
  </div>
  </div>
    </form>
</body>
</html>
