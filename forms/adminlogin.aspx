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
        command = New Data.SqlClient.SqlCommand("select count(*) from adminreg where Email='" & t1.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            command = New Data.SqlClient.SqlCommand("select NewPasswpord from adminreg where Email='" & t1.Text & "'")
            command.Connection = conn
            pass = command.ExecuteScalar
            If pass = t2.Text Then
                command = New Data.SqlClient.SqlCommand("delete  from logintemp")
                command.Connection = conn
                command.ExecuteScalar()
                sql = "insert into logintemp values('" & t1.Text & "')"
                datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
                datareader.InsertCommand.ExecuteScalar()
                MsgBox("Login Succeed")
                Response.Redirect("admindshboard.aspx")
            Else
                MsgBox("Wrong Password")
                t2.Text = ""
            End If
            MsgBox("Wrong User Name")
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
	left: 1px;
	top: 1px;
}
#apDiv2 {
	position:absolute;
	width:100%;
	height:60px;
	z-index:1;
	left: 0px;
	top: 0px;
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
	color: #FFFFCC;
}
a:active {
	text-decoration: none;
	color: #FFFFCC;
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
	height:1446px;
	z-index:4;
	left: 0px;
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
	height:33px;
	z-index:5;
	left: 0px;
	top: 531px;
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
	width:65%;
	height:352px;
	z-index:6;
	left: 227px;
	top: 125px;
	background-color: #999999;
}
#apDiv24 {
	position:absolute;
	width:518px;
	height:382px;
	z-index:1;
	left: 205px;
	top: 27px;
	background-color: #666666;
}
#apDiv25 {
	position:absolute;
	width:50%;
	height:49px;
	z-index:1;
}
.style23 {font-size: 36px; font-family: Verdana, Arial, Helvetica, sans-serif; color: #0D152E;}
#apDiv26 {
	position:absolute;
	width:60%;
	height:255px;
	z-index:2;
	left: 53px;
	top: 72px;
	background-color: #4B4B4B;
}
#apDiv27 {
	position:absolute;
	width:100%;
	height:40px;
	z-index:1;
	top: 4px;
}
#apDiv28 {
	position:absolute;
	width:38%;
	height:36px;
	z-index:1;
}
#apDiv29 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:2;
	left: 25px;
	top: -1px;
}
#apDiv30 {
	position:absolute;
	width:60%;
	height:27px;
	z-index:2;
	top: 3px;
	left: 181px;
	background-color: #FFFFFF;
}
.style24 {
	color: #FFFFCC;
	font-weight: bold;
}
#apDiv31 {
	position:absolute;
	width:100%;
	height:40px;
	z-index:2;
	top: 50px;
}
#apDiv32 {
	position:absolute;
	width:38%;
	height:37px;
	z-index:1;
}
#apDiv33 {
	position:absolute;
	width:60%;
	height:27px;
	z-index:2;
	left: 179px;
	top: 2px;
	background-color: #FFFFFF;
}
#apDiv34 {
	position:absolute;
	width:108px;
	height:36px;
	z-index:3;
	left: 261px;
	top: 120px;
	background-color: #0D152E;
}
.style25 {
	color: #FFFFFF;
	font-weight: bold;
}
.style26 {font-size: 24px}
#apDiv35 {
	position:absolute;
	width:20%;
	height:147px;
	z-index:3;
	left: 646px;
	top: 138px;
}
a {
	font-size: 16px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
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
  <div id="apDiv23">
    <div class="style23" id="apDiv25">Administrator Login!</div>
    <div id="apDiv26">
      <div id="apDiv27">
        <div id="apDiv28">
          <div align="center" class="style24">User Name *</div>
        </div>
        <div id="apDiv30">
            <asp:TextBox ID="t1" runat="server" Width="100%" Height="100%"></asp:TextBox>
          </div>
      </div>
      <div id="apDiv31">
        <div class="style24" id="apDiv32">
          <div align="center">Password *</div>
        </div>
        <div id="apDiv33">
            <asp:TextBox ID="t2" runat="server" Width="100%" Height="100%" 
                TextMode="Password"></asp:TextBox>
          </div>
      </div>
      <div class="style25" id="apDiv34">
        <div align="center" class="style26">
            <asp:Button ID="Button1" runat="server" BackColor="#0D152E" BorderStyle="None" 
                ForeColor="White" Height="32px" Text="Login" 
                Width="77px" onclick="Button1_Click" />
          </div>
      </div>
    </div>
    <div id="apDiv35"><img src="../images/login.png" width="149" height="135" /></div>
  </div>
</div>
</form>
</body>
</html>
