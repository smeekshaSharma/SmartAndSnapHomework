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
    Dim pass As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*) from stureg where Email='" & t1.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            command = New Data.SqlClient.SqlCommand("select pwd from stureg where Email='" & t1.Text & "'")
            command.Connection = conn
            pass = command.ExecuteScalar
            If pass = t2.Text Then
                command = New Data.SqlClient.SqlCommand("delete  from stutemp")
                command.Connection = conn
                command.ExecuteScalar()
                sql = "insert into stutemp values('" & t1.Text & "')"
                datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
                datareader.InsertCommand.ExecuteScalar()
                MsgBox("Login Succeed")
                Response.Redirect("studashboard.aspx")
            Else
                MsgBox("Wrong Password")
                t2.Text = ""
            End If
            MsgBox("Wrong Email Address")
            t1.Text = ""
        End If
       
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:616px;
	z-index:1;
	left: 0;
	top: 0;
}
#apDiv2 {
	position:absolute;
	width:40%;
	height:75px;
	z-index:1;
	left: 369px;
	top: 262px;
}
#apDiv3 {
	position:absolute;
	width:20%;
	height:202px;
	z-index:2;
	left: 506px;
	top: 60px;
}
.style1 {
	font-size: 36px;
	font-weight: bold;
}
.style3 {color: #00CC33}
#apDiv4 {
	position:absolute;
	width:40%;
	height:214px;
	z-index:3;
	left: 371px;
	top: 332px;
}
.style4 {
	font-size: 18px;
	font-weight: bold;
}
#apDiv5 {
	position:absolute;
	width:100%;
	height:58px;
	z-index:4;
	left: 0;
	top: 0;
	background-color: #0d152e;
}
.style5 {	color: #FFFFFF;
	font-size: 24px;
	font-weight: bold;
	font-family: Calibri;
}
a {
	font-size: 16px;
	color: #FFFFFF;
	font-weight: bold;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFFFFF;
}
a:hover {
	text-decoration: underline;
	color: #FFFFCC;
}
a:active {
	text-decoration: none;
	color: #FFFFCC;
}
#apDiv6 {
	position:absolute;
	width:100%;
	height:38px;
	z-index:5;
	left: 1px;
	top: 562px;
}
.style17 {	color: #0D152E;
	font-weight: bold;
}
.style18 {	color: #000000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv2">
    <table width="100%" border="0">
      <tr>
        <td><div align="center"><span class="style1">Student Login</span></div></td>
      </tr>
      <tr>
        <td><div align="center">Not a Member Yet ? <span class="style3">Sign Up!</span></div></td>
      </tr>
    </table>
  </div>
  <div id="apDiv3"><img src="../images/loginstu.jpg" width="250" height="200" /></div>
  <div id="apDiv4">
    <table width="100%" height="200" border="0">
      <tr>
        <td width="40%"><span class="style4">Email/Username</span></td>
        <td width="60%">
            <asp:TextBox ID="t1" runat="server" Width="100%"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td><span class="style4">Password</span></td>
        <td>
            <asp:TextBox ID="t2" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" BackColor="#F5CA9E" Font-Bold="True" 
                Font-Size="Large" Font-Underline="True" Text="Login" Width="30%" 
                onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#F9CA96" Font-Bold="True" 
                Font-Size="Large" Font-Underline="True" Text="Reset" Width="30%" />
          </td>
      </tr>
      <tr>
        <td colspan="2" bgcolor="#0D152E"><div align="center"><a href="stureg.aspx">For New Registration</a></div></td>
      </tr>
      <tr>
        <td colspan="2" bgcolor="#0D152E"><div align="center">Forget Password</div></td>
      </tr>
    </table>
  </div>
  <div id="apDiv5">
    <table width="100%" border="0">
      <tr>
        <td width="3%" rowspan="2"><img src="../images/logo.png" width="39" height="35" /></td>
        <td width="22%" rowspan="2"><span class="style5">Smart &amp; Snap HomeWork</span></td>
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
  <div id="apDiv6">
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
