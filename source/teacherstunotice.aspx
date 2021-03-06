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
        t1.Text = Format(Now, "dd/MM/yyyy")
        t1.Enabled = False
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select uname from teachertemp")
        command.Connection = conn
        Label1.Text = command.ExecuteScalar
        If Label1.Text = "Null" Then
            MsgBox("Login Your Account")
            Response.Redirect("teacherlogin.aspx")
        Else
            command = New Data.SqlClient.SqlCommand("select TeacherName from teacherreg where Email='" & Label1.Text & "'")
            command.Connection = conn
            fname = command.ExecuteScalar
           
            Label2.Text = "Welcome: " & fname
            conn.Close()
            
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete  from teachertemp")
        command.Connection = conn
        command.ExecuteScalar()
        sql = "insert into teachertemp values('" & "Null" & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
       
        Response.Redirect("teacherlogin.aspx")
        conn.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*) from studentnotice where  Class='" & d1.Text & "' and Section='" & d2.Text & "' and NoticeSubject='" & t2.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("This Student Notice Is Alredy Exists")
            t2.Text = ""
            conn.Close()
        Else
            sql = "insert into studentnotice values('" & t1.Text & "','" & UCase(d1.Text) & "','" & UCase(d2.Text) & "','" & UCase(t2.Text) & "','" & t3.Text & "','" & Label1.Text & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("Student Notice Has Been Saved")
            conn.Close()
            t1.Text = ""
            t2.Text = ""
            t3.Text = ""
        End If
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*) from studentnotice where Class='" & d1.Text & "' and Section='" & d2.Text & "' and NoticeSubject='" & t2.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            command = New Data.SqlClient.SqlCommand("select Class from studentnotice where ClassName='" & d1.Text & "' and Section='" & d2.Text & "' and NoticeSubject='" & t2.Text & "'")
            command.Connection = conn
            d1.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select Section from studentnotice where ClassName='" & d1.Text & "' and Section='" & d2.Text & "' and NoticeSubject='" & t2.Text & "'")
            command.Connection = conn
            d2.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select NoteSubject from studentnotice where ClassName='" & d1.Text & "' and Section='" & d2.Text & "' and NoticeSubject='" & t2.Text & "'")
            command.Connection = conn
            t2.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select CurrentDate from studentnotice where ClassName='" & d1.Text & "' and Section='" & d2.Text & "' and NoticeSubject='" & t2.Text & "'")
            command.Connection = conn
            t1.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select NoticeDescription from studentnotice where ClassName='" & d1.Text & "' and Section='" & d2.Text & "' and NoticeSubject='" & t2.Text & "'")
            command.Connection = conn
            t3.Text = command.ExecuteScalar
        Else
            MsgBox("Student Notice Is Not Find")
            t1.Text = ""
            t2.Text = ""
            t3.Text = ""
        End If
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete from studentnotice where Class='" & d1.Text & "' and Section='" & d2.Text & "' and NoticeSubject='" & t2.Text & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("Student Notice Has Been Deleted")
        t1.Text = ""
        t2.Text = ""
        t3.Text = ""
    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("update studentnotice set NoticeDescription='" & t3.Text & "' where Class='" & d1.Text & "'and Section='" & d2.Text & "' and NoticeSubject='" & t2.Text & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("Student Notice Has Been Update")
        t1.Text = ""
        t2.Text = ""
        t3.Text = ""
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
	height:83px;
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
	width:200px;
	height:267px;
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
	height:377px;
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
.style7 {font-size: 18px; font-weight: bold; color: #FFFFCC; }
.style9 {font-size: 18px; font-weight: bold; color: #FFFFFF; }
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
    <div id="apDiv12"><img src="../images/techer.jpg" width="100" height="80" /></div>
    <div id="apDiv13">
      <div align="center" class="style1">TEACHER DASHBOARD</div>
    </div>
  </div>
  <div class="style3" id="apDiv14"></div>
  <div id="apDiv15">
    <table width="100%" height="326" border="0">
      <tr>
        <td height="38" bgcolor="#0D152E"><img src="../images/home.png" width="25" height="25" /></td>
        <td bgcolor="#0D152E"><div align="center">
          <h3><span class="style7">Home</span></h3>
        </div></td>
      </tr>
      <tr>
        <td height="38" colspan="2" bgcolor="#0D152E"><div align="center"><span class="style7">Teacher Dashboard</span></div></td>
        </tr>
      <tr>
        <td height="38" bgcolor="#CCCCCC"><img src="../images/clllss.png" alt="" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><strong><a href="teacherclass.aspx">Class Detail &amp; Section</a></strong></td>
      </tr>
      <tr>
        <td height="38" bgcolor="#CCCCCC"><img src="../images/confirrrr.png" alt="" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><strong><a href="teachrstuconfirm.aspx">Student Confirmation</a></strong></td>
      </tr>
      <tr>
        <td height="38" bgcolor="#CCCCCC"><img src="../images/ssssss.png" alt="" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><strong><a href="teachernotesuplod.aspx">Student Notes Upload</a></strong></td>
      </tr>
      <tr>
        <td height="38" bgcolor="#CCCCCC"><img src="../images/nnn.png" alt="" width="25" height="25" /></td>
        <td bgcolor="#CCCCCC"><strong><a href="teacherstunotice.aspx">Student Notice</a></strong></td>
      </tr>
      <tr>
        <td width="19%" height="38" bgcolor="#CCCCCC"><div align="center" class="style2"><img src="../images/bb.png" alt="" width="25" height="25" /></div></td>
        <td width="81%" bgcolor="#CCCCCC"><strong><a href="teacherschlnotice.aspx">School Notice</a></strong></td>
      </tr>
      <tr>
        <td height="42" colspan="2" bgcolor="#CCCCCC">&nbsp;</td>
      </tr>
    </table>
  </div>
  <div id="apDiv16">
    <table width="100%" height="311" border="0">
      <tr>
        <td colspan="3" bordercolor="#FFFFFF" bgcolor="#999999">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                ForeColor="Black" onclick="LinkButton1_Click">Logout</asp:LinkButton>          </td>
      </tr>
      <tr>
        <td colspan="3" bgcolor="#0D152E"><span class="style9">Student Notice</span></td>
      </tr>
      <tr>
        <td width="22%" height="28">Current Date</td>
        <td colspan="2">
            <asp:TextBox ID="t1" runat="server"></asp:TextBox>
          </td>
        </tr>
      <tr>
        <td height="29">Class </td>
        <td colspan="2">
            <asp:DropDownList ID="d1" runat="server">
                <asp:ListItem>Select Any One</asp:ListItem>
                <asp:ListItem>Play Pen</asp:ListItem>
                <asp:ListItem>Nursery</asp:ListItem>
                <asp:ListItem>L.K.G</asp:ListItem>
                <asp:ListItem>U.K.G</asp:ListItem>
                <asp:ListItem>First</asp:ListItem>
                <asp:ListItem>Second</asp:ListItem>
                <asp:ListItem>Third</asp:ListItem>
                <asp:ListItem>Fourth</asp:ListItem>
                <asp:ListItem>Fiveth</asp:ListItem>
                <asp:ListItem>Sixth</asp:ListItem>
                <asp:ListItem>Seventh</asp:ListItem>
                <asp:ListItem>Eighth</asp:ListItem>
                <asp:ListItem>Nineth</asp:ListItem>
                <asp:ListItem>Tenth</asp:ListItem>
                <asp:ListItem>+1</asp:ListItem>
                <asp:ListItem>+2</asp:ListItem>
            </asp:DropDownList>
          </td>
      </tr>
      <tr>
        <td height="28">Section</td>
        <td colspan="2">
            <asp:DropDownList ID="d2" runat="server">
                <asp:ListItem>Select Any One</asp:ListItem>
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
                <asp:ListItem>E</asp:ListItem>
                <asp:ListItem>F</asp:ListItem>
                <asp:ListItem>G</asp:ListItem>
                <asp:ListItem>H</asp:ListItem>
            </asp:DropDownList>
            </td>
      </tr>
      <tr>
        <td height="30">Notes Subject</td>
        <td colspan="2">
            <asp:TextBox ID="t2" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="31">Notes Discription</td>
        <td colspan="2">
            <asp:TextBox ID="t3" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="44" colspan="2">
            <asp:Button ID="Button1" runat="server" BackColor="#0D152E" Font-Bold="True" 
                Font-Size="Large" ForeColor="White" Text="Save" Width="108px" 
                onclick="Button1_Click" />
          </td>
        <td height="44">
            <asp:Button ID="Button5" runat="server" BackColor="#0D152E" Font-Bold="True" 
                Font-Size="Large" ForeColor="White" Text="Search" Width="108px" 
                onclick="Button5_Click" />
          </td>
      </tr>
      <tr>
        <td height="44" colspan="2">
            <asp:Button ID="Button6" runat="server" BackColor="#0D152E" Font-Bold="True" 
                Font-Size="Large" ForeColor="White" Text="Delete" Width="108px" 
                onclick="Button6_Click" />
          </td>
        <td width="59%" height="44">
            <asp:Button ID="Button7" runat="server" BackColor="#0D152E" Font-Bold="True" 
                Font-Size="Large" ForeColor="White" Text="Update" Width="108px" 
                onclick="Button7_Click" />
          </td>
        </tr>
    </table>
  </div>
  </div>
    </form>
</body>
</html>
