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
        t1.Text = Format(Now, "dd/MM/yyyy")
        t1.Enabled = False
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

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        sql = "insert into stunotice values('" & t1.Text & "','" & d1.Text & "','" & d2.Text & "','" & t2.Text & "','" & t3.Text & "'," & t4.Text & ",'" & t5.Text & "','" & t6.Text & "','" & t7.Text & ",'" & Label1.Text & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql,conn)
        datareader.InsertCommand.ExecuteScalar()
        MsgBox("school notice has been saved")
        conn.Close()
        t1.Text = ""
        t2.Text = ""
        t3.Text = ""
        t4.Text = ""
        t5.Text = ""
        t6.Text = ""
        t7.Text = ""
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        t1.Text = ""
        t2.Text = ""
        t3.Text = ""
        t4.Text = ""
        t5.Text = ""
        t6.Text = ""
        t7.Text = ""
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
	height:391px;
	z-index:4;
	left: 309px;
	top: 187px;
}
#apDiv17 {
	position:absolute;
	width:20%;
	height:333px;
	z-index:5;
	left: 315px;
	top: 453px;
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
.style5 {
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
        <td bgcolor="#CCCCCC"><strong><a href="schlteachnotification.aspx">Teacher Confirmation</a></strong></td>
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
    <table width="100%" height="360" border="0">
      <tr>
        <td height="27" colspan="2" bordercolor="#FFFFFF" bgcolor="#999999">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>          </td>
        <td width="59%" bordercolor="#FFFFFF" bgcolor="#999999">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                ForeColor="Black" onclick="LinkButton1_Click">Logout</asp:LinkButton>          </td>
        </tr>
      <tr>
        <td height="32" colspan="3" bgcolor="#0d152e"><span class="style5">Student Notice</span></td>
      </tr>
      <tr>
        <td width="36%" height="27"><strong>Current Date</strong></td>
        <td colspan="2">
            <asp:TextBox ID="t1" runat="server"></asp:TextBox>
          </td>
        </tr>
      <tr>
        <td height="27"><strong>Class</strong></td>
        <td colspan="2">
            <asp:DropDownList ID="d1" runat="server">
            </asp:DropDownList>
          </td>
        </tr>
      <tr>
        <td height="28"><strong>Student ID</strong></td>
        <td colspan="2">
            <asp:DropDownList ID="d2" runat="server">
            </asp:DropDownList>
          </td>
        </tr>
      <tr>
        <td height="28"><strong> Student Name</strong></td>
        <td colspan="2">
            <asp:TextBox ID="t2" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="26"><strong>Father Name</strong></td>
        <td colspan="2">
            <asp:TextBox ID="t3" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="26"><strong>Mobile No</strong></td>
        <td colspan="2">
            <asp:TextBox ID="t4" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="27"><strong>Student Email</strong></td>
        <td colspan="2">
            <asp:TextBox ID="t5" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="26"><strong>Notification Subject</strong></td>
        <td colspan="2">
            <asp:TextBox ID="t6" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="30"><strong>Notification</strong> <strong>Description</strong></td>
        <td colspan="2">
            <asp:TextBox ID="t7" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="30">
            <asp:Button ID="Button1" runat="server" BackColor="#0D152E" Font-Bold="True" 
                ForeColor="White" Text="Submit" Width="20%" onclick="Button1_Click" />
          </td>
        <td colspan="2">
            <asp:Button ID="Button2" runat="server" BackColor="#0D152E" Font-Bold="True" 
                ForeColor="White" Height="40%" Text="Reset" Width="20%" 
                onclick="Button2_Click" />
          </td>
      </tr>
    </table>
  </div>
  </div>
    </form>
</body>
</html>
