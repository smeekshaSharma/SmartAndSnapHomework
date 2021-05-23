<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
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
        command = New Data.SqlClient.SqlCommand("select uname from schltemp")
        command.Connection = conn
        Label1.Text = command.ExecuteScalar
        If Label1.Text = "Null" Then
            MsgBox("Login Your Account")
            Response.Redirect("schollogin.aspx")
        Else
            command = New Data.SqlClient.SqlCommand("select SchoolName from schlreg where Email='" & Label1.Text & "'")
            command.Connection = conn
            fname = command.ExecuteScalar
           
            Label2.Text = "Welcome: " & fname
            conn.Close()
            
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete  from schltemp")
        command.Connection = conn
        command.ExecuteScalar()
        sql = "insert into schltemp values('" & "Null" & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
       
        Response.Redirect("schollogin.aspx")
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
	height:89px;
	z-index:1;
	left: 25px;
	top: 7px;
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
	width:218px;
	height:360px;
	z-index:3;
	left: 29px;
	top: 187px;
}
#apDiv16 {
	position:absolute;
	width:965px;
	height:361px;
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
.style4 {
	font-size: 18px;
	font-weight: bold;
	color: #FFFFCC;
}
.style8 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 18px;
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
    <div id="apDiv12"><img src="../images/school logo.png" width="100" height="80" /></div>
    <div id="apDiv13">
      <div align="center" class="style1">SCHOOL DASHBOARD</div>
    </div>
  </div>
  <div class="style3" id="apDiv14"></div>
  <div id="apDiv15">
    <table width="100%" height="312" border="0">
      <tr>
        <td width="17%" bgcolor="#0D152E"><img src="../images/home.png" width="25" height="25" /></td>
        <td width="83%" bgcolor="#0D152E"><div align="center" class="style4">Home</div></td>
      </tr>
      <tr>
        <td colspan="2" bgcolor="#0D152E"><div align="center" class="style4">School Dashboard</div></td>
      </tr>
      <tr>
        <td bgcolor="#CCCCCC"><img src="../images/ok logo.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="schlteachconfirm.aspx"><strong>Teacher Confirmation</strong></a></td>
      </tr>
      <tr>
        <td bgcolor="#CCCCCC"><img src="../images/notification.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><strong><a href="schlteachnotification.aspx">Teacher Notice</a></strong></td>
      </tr>
      <tr>
        <td bgcolor="#CCCCCC"><img src="../images/student notice.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><strong><a href="schlstunotic.aspx">Student Notice</a></strong></td>
      </tr>
      <tr>
        <td bgcolor="#CCCCCC"><img src="../images/schlnews.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><strong><a href="schlnews.aspx">School News</a></strong></td>
      </tr>
      <tr>
        <td bgcolor="#CCCCCC"><img src="../images/stureport.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><strong><a href="schlsturpt.aspx">Student Reports</a></strong></td>
      </tr>
      <tr>
        <td bgcolor="#CCCCCC"><img src="../images/tchrreport.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><strong><a href="schltechrept.aspx">Teacher Reports</a></strong></td>
      </tr>
      <tr>
        <td bgcolor="#CCCCCC"><img src="../images/acnt seting.png" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><strong><a href="schlacountsting.aspx">Account Setting</a></strong></td>
      </tr>
    </table>
  </div>
  <div id="apDiv16">
    <table width="100%" height="346" border="0">
      <tr>
        <td colspan="2" bordercolor="#FFFFFF" bgcolor="#999999">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>          </td>
        <td colspan="3" bordercolor="#FFFFFF" bgcolor="#999999">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                ForeColor="Black" onclick="LinkButton1_Click">Logout</asp:LinkButton>          </td>
        <td colspan="2" bordercolor="#FFFFFF" bgcolor="#999999">&nbsp;</td>
      </tr>
      <tr>
        <td height="40" colspan="7" bgcolor="#0d152e"><span class="style8">School</span> <span class="style8">Dashboard</span></td>
      </tr>
      <tr>
        <td colspan="7"><p align="justify">The <strong> School Dashboard</strong> provides parents and   educators with meaningful information on school and district progress so   they can participate in decisions to improve student learning.</p>
          <p align="justify">This School Dashboard goes beyond test scores alone to provide a more complete   picture of how schools and districts are meeting the needs of all   students.</p>
          <p align="justify">School districts sometimes struggle to showcase strategic goals, and how   they’re improving student outcomes. iDashboards empowers administrators   to combine district data from spreadsheets, state reports, student   information systems, and other data sources into custom, interactive   school dashboards. Dashboards are secure and shareable, increasing   data-driven decision making and transparency between administrators,   staff, parents, and board members.</p>
          <p align="justify">iDashboards data visualization software is a self-service platform that   is specifically designed to help you combine multiple data sources and   find the correlations necessary to make critical decisions. Integrate   the data you rely on into school dashboards to keep your students,   schools, and districts successful and on the right track.</p></td>
        </tr>
    </table>
  </div>
  </div>
    </form>
</body>
</html>
