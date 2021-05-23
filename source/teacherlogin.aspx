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
    Protected Sub Login_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*) from teacherreg where Email='" & t1.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            command = New Data.SqlClient.SqlCommand("select pwd from teacherreg where Email='" & t1.Text & "'")
            command.Connection = conn
            pass = command.ExecuteScalar
            If pass = t2.Text Then
                command = New Data.SqlClient.SqlCommand("delete  from teachertemp")
                command.Connection = conn
                command.ExecuteScalar()
                sql = "insert into teachertemp values('" & t1.Text & "')"
                datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
                datareader.InsertCommand.ExecuteScalar()
                MsgBox("Login Succeed")
                Response.Redirect("tchrdashboard.aspx")
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
	height:569px;
	z-index:1;
	left: 0;
	top: 0;
}
#apDiv2 {
	position:absolute;
	width:80%;
	height:321px;
	z-index:1;
	left: 133px;
	top: 137px;
}
#apDiv3 {
	position:absolute;
	width:55%;
	height:244px;
	z-index:1;
	left: 330px;
	top: 40px;
}
#apDiv4 {
	position:absolute;
	width:307px;
	height:255px;
	z-index:2;
	left: 15px;
	top: 36px;
}
#apDiv5 {
	position:absolute;
	width:70%;
	height:43px;
	z-index:2;
	left: 189px;
	top: 94px;
}
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style2 {font-size: 36px}
.style3 {
	font-size: 18px;
	font-weight: bold;
}
    .style4
    {
        height: 36px;
    }
body {
	background-color: #FFEFE0;
}
#apDiv6 {
	position:absolute;
	width:100%;
	height:56px;
	z-index:3;
	left: 0px;
	top: 0px;
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
#apDiv7 {
	position:absolute;
	width:100%;
	height:32px;
	z-index:4;
	left: 1px;
	top: 532px;
}
.style17 {color: #0D152E;
	font-weight: bold;
}
.style18 {color: #000000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv2">
    <div id="apDiv3">
      <table width="100%" height="209" border="0">
        <tr>
          <td width="33%"><span class="style3">Email/user</span></td>
          <td width="67%">
              <asp:TextBox ID="t1" runat="server" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td><span class="style3">Password</span></td>
          <td>
              <asp:TextBox ID="t2" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td>
              <asp:Button ID="Login" runat="server" Text="Login" BackColor="#FC8E24" 
                  Font-Bold="True" Font-Size="Large" ForeColor="White" Width="70px" 
                  onclick="Login_Click" />
            </td>
          <td>
              <asp:Button ID="Reset" runat="server" Text="Reset" BackColor="#FB8E25" 
                  Font-Bold="True" Font-Size="Large" ForeColor="White" />
            </td>
        </tr>
        <tr>
          <td colspan="2" bgcolor="#0D152E" class="style4"><div align="center"><a href="teacherreg.aspx">For New Registration</a></div></td>
        </tr>
        <tr>
          <td colspan="2" bgcolor="#0D152E"><div align="center">Forgot Password</div></td>
        </tr>
      </table>
    </div>
    <div id="apDiv4"><img src="../images/ttt.png" width="301" height="250" /></div>
  </div>
  <div class="style1" id="apDiv5">
    <div align="center" class="style2">Teacher Login</div>
  </div>
  <div id="apDiv6">
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
  <div id="apDiv7">
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
