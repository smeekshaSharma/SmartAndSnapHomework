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

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete  from logintemp")
        command.Connection = conn
        command.ExecuteScalar()
        sql = "insert into logintemp values('" & "Null" & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
       
        Response.Redirect("adminlogin.aspx")
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:653px;
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
	left: 16px;
	top: 112px;
}
#apDiv15 {
	position:absolute;
	width:207px;
	height:378px;
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
	top: 605px;
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
.style9 {color: #FFFFFF}
a {
	font-family: Calibri;
	font-size: 16px;
	color: #000000;
	font-weight: bold;
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
#apDiv21 {
	position:absolute;
	width:15%;
	height:324px;
	z-index:6;
	left: 24px;
	top: 160px;
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
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Label"></asp:Label>
&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                ForeColor="#0D152E" onclick="LinkButton1_Click">Logout</asp:LinkButton>
          </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </div>
  <div id="apDiv21">
    <table width="100%" border="0">
      <tr>
        <td colspan="2" bgcolor="#0D152E"><div align="center"><span class="style7">Admin Dashboard</span></div></td>
        </tr>
      <tr>
        <td width="19%" height="30" bgcolor="#CCCCCC"><img src="../images/home.png" alt="" width="25" height="25" /></td>
        <td width="85%" bgcolor="#CCCCCC"><span class="style2"><a href="admindshboard.aspx">Home</a></span></td>
      </tr>
      <tr>
        <td height="25" bgcolor="#CCCCCC"><img src="../images/ok logo.png" alt="" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="adminschlconfirm.aspx"><strong>School Confirmation</strong></a></td>
      </tr>
      <tr>
        <td height="28" bgcolor="#CCCCCC"><img src="../images/FAQ.png" alt="" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><strong><a href="adminfaq.aspx">FAQ</a></strong></td>
      </tr>
      <tr>
        <td height="26" bgcolor="#CCCCCC"><img src="../images/newsss.png" alt="" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="adminnews.aspx"><strong>Admin News</strong></a></td>
      </tr>
      <tr>
        <td height="26" bgcolor="#CCCCCC"><img src="../images/notification.png" alt="" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="adminschlnotice.aspx"><strong>School Notice</strong></a></td>
      </tr>
      <tr>
        <td height="24" colspan="2" bgcolor="#0D152E"><div align="center"><span class="style8">Reports</span></div></td>
        </tr>
      <tr>
        <td height="32" bgcolor="#CCCCCC"><img src="../images/schhlll.png" alt="" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="adminschlregrpt.aspx"><strong>Schools Registration</strong></a></td>
      </tr>
      <tr>
        <td height="32" bgcolor="#CCCCCC"><img src="../images/teacherrrrr.png" alt="" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="adminteachregrpt.aspx"><strong>Teachers Registration</strong></a></td>
      </tr>
      <tr>
        <td height="36" bgcolor="#CCCCCC"><img src="../images/stuuu.png" alt="" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><a href="adminsturegrpt.aspx"><strong>Students Registration</strong></a></td>
      </tr>
    </table>
  </div>
  <div id="apDiv16">
    <table width="100%" height="59" border="0">
      
      <tr>
        <td width="100%" height="26" colspan="5" bgcolor="#0d152e"><span class="style6">Administration</span></td>
      </tr>
      <tr>
        <td height="4" colspan="5"><hr /></td>
      </tr>
      <tr>
        <td colspan="5">A database administrator (DBA) is the information technician responsible for directing or performing all activities related to maintaining a successful database environment. A DBA makes sure an organization's database and its related applications operate functionally and efficiently.</td>
      </tr>
      <tr>
        <td colspan="5" bgcolor="#0D152E"><h3 class="style9">Importance of a DBA</h3></td>
      </tr>
      <tr>
        <td colspan="5">If your organization uses a database management system (DBMS) for mission-critical workloads, it is important to employ one or more database administrators to ensure that applications have ongoing, uninterrupted access to data. Most modern organizations of every size use at least one DBMS, and therefore the need for database administrators is greater today than ever before.</td>
      </tr>
      <tr>
        <td colspan="5">The DBA is responsible for understanding and managing the overall database environment. By developing and implementing a strategic blueprint to follow when deploying databases within their organization, DBAs are instrumental to the ongoing efficacy of modern applications that rely on databases for data storage and access.</td>
      </tr>
      <tr>
        <td colspan="5" bgcolor="#0D152E"><h3 class="style9">Roles and Responsibilities</h3></td>
      </tr>
      <tr>
        <td colspan="5">A DBA can, and does, assume many different roles and responsibilities within the IT department involving database systems and applications. When adopting a new DBMS, the DBA is responsible for designing, implementing, and maintaining the database system. Often, this includes installing the DBMS and setting up the IT infrastructure to allow applications to access databases.</td>
      </tr>
      <tr>
        <td colspan="5">The DBA also must establish policies and procedures pertaining to the management, security, maintenance and use of the database management system. The DBA group creates training materials and instruct employees in the proper usage and access of the database management system.</td>
      </tr>
      <tr>
        <td colspan="5">&nbsp;</td>
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
