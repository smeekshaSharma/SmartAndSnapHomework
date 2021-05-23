<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Smart &amp; Snap HomeWork</title>
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
        command = New Data.SqlClient.SqlCommand("select count(*) from schlreg where Email='" & t1.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            command = New Data.SqlClient.SqlCommand("select pwd from schlreg where Email='" & t1.Text & "'")
            command.Connection = conn
            pass = command.ExecuteScalar
            If pass = t2.Text Then
                command = New Data.SqlClient.SqlCommand("delete  from schltemp")
                command.Connection = conn
                command.ExecuteScalar()
                sql = "insert into schltemp values('" & t1.Text & "')"
                datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
                datareader.InsertCommand.ExecuteScalar()
                MsgBox("Login Succeed")
                Response.Redirect("schldashboard.aspx")
            Else
                MsgBox("Wrong Password")
                t2.Text = ""
            End If
            MsgBox("Wrong Email Address")
            t1.Text = ""
        End If
       
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        t1.Text = ""
        t2.Text=""
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
	width:40%;
	height:263px;
	z-index:1;
	left: 154px;
	top: 112px;
}
#apDiv3 {
	position:absolute;
	width:25%;
	height:39px;
	z-index:2;
	left: 402px;
	top: 63px;
}
.style1 {
	font-size: 36px;
	font-weight: bold;
}
.style2 {
	font-size: 18px;
	font-weight: bold;
}
#apDiv4 {
	position:absolute;
	width:30%;
	height:226px;
	z-index:3;
	left: 711px;
	top: 115px;
}
    .style3
    {
        width: 57%;
    }
    .style4
    {
        width: 44%;
    }
#apDiv5 {
	position:absolute;
	width:100%;
	height:28px;
	z-index:1;
}
#apDiv6 {
	position:absolute;
	width:100%;
	height:58px;
	z-index:4;
	left: 0;
	top: 0;
	background-color: ##0d152e;
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
	height:42px;
	z-index:5;
	left: 0px;
	top: 510px;
}
.style17 {	color: #0D152E;
	font-weight: bold;
}
.style18 {	color: #000000;
	font-weight: bold;
}
#apDiv8 {
	position:absolute;
	width:100%;
	height:54px;
	z-index:6;
	background-color: #0d152e;
}
-->
</style>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv2">
    <table width="100%" height="213" border="0">
      <tr>
        <td height="44" class="style4"><span class="style2">Email /Username</span></td>
        <td bordercolor="#9E3EFF" bgcolor="#FFFFFF" class="style3">
            <asp:TextBox ID="t1" runat="server" Width="100%"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="46" class="style4"><span class="style2">Password</span></td>
        <td bordercolor="#75238F" class="style3">
            <asp:TextBox ID="t2" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
          </td>
      </tr>

      <tr>
        <td height="38" colspan="2" bordercolor="#FFFFFF">
            <asp:Button ID="Button1" runat="server" BackColor="#86CBF4" ForeColor="White" 
                Text="Login" Height="100%" Width="137px" Font-Size="Large" onclick="Button1_Click" 
                />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#86CBF4" ForeColor="White" 
                Text="Reset" Height="100%" Width="135px" Font-Size="Large" 
                onclick="Button2_Click" />
          </td>
      </tr>
      <tr>
        <td height="41" colspan="2" bgcolor="#0D152E"><div align="center"><a href="schoolreg.aspx">For New Registration&nbsp;</a> </div></td>
      </tr>
      <tr>
        <td colspan="2" bgcolor="#0D152E"><div align="center">Forgot Password</div></td>
      </tr>
      <tr>
        <td colspan="2">
            <asp:LinkButton ID="LinkButton1" runat="server">&lt;&lt;Return to back home</asp:LinkButton>
           
          </td>
      </tr>
    </table>
  </div>
  <div id="apDiv3">
    <div align="center" class="style1">School login</div>
  </div>
  <div id="apDiv4"><img src="../images/school.jpg" width="100%" height="220" /></div>
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
  <div id="apDiv8">
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
</div>
</form>
</body>
</html>
