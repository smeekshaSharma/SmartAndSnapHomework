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
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If t6.Text <> "smartwork" Then
            MsgBox("Admin Code Not Match")
            t6.Text = ""
            Exit Sub
        End If
        If t3.Text <> t7.Text Then
            MsgBox("Password & Reenter Password Not Match")
            t3.Text = ""
            t7.Text = ""
            Exit Sub 
        End If
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("select count(*) from adminreg where Email='" & t2.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("this adminreg is alredy exists")
            t2.Text = ""
            conn.Close()                                            
        Else
            sql = "insert into adminreg values('" & t1.Text & "','" & t5.Text & "','" & t2.Text & "','" & t6.Text & "','" & t3.Text & "','" & t7.Text & "','" & d1.Text & "'," & t8.Text & ",'" & t4.Text & "','" & d2.Text & "','" & t9.Text & "')"
            datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
            datareader.InsertCommand.ExecuteScalar()
            MsgBox("adminreg has been submit")
            conn.Close()
            t1.Text = ""
            t2.Text = ""
            t3.Text = ""
            t4.Text = ""
            t5.Text = ""
            t6.Text = ""
            t7.Text = ""
            t8.Text = ""
            t9.Text = ""
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("delete from adminreg where Email='" & t2.Text & "'")
        command.Connection = conn
        command.ExecuteScalar()
        MsgBox("adminreg has been reset")
        t1.Text = ""
        t2.Text = ""
        t3.Text = ""
        t4.Text = ""
        t5.Text = ""
        t6.Text = ""
        t7.Text = ""
        t8.Text = ""
        t9.Text = ""
    End Sub
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:100%;
	height:1045px;
	z-index:1;
	left: 0;
	top: 0;
}
#apDiv2 {
	position:absolute;
	width:50%;
	height:331px;
	z-index:1;
	left: 302px;
	top: 96px;
	background-color: #C1C1C1;
}
#apDiv3 {
	position:absolute;
	width:20%;
	height:106px;
	z-index:1;
	left: 231px;
	top: -115px;
	background-color: #C1C1C1;
}
#apDiv4 {
	position:absolute;
	width:40%;
	height:22px;
	z-index:2;
	left: 27px;
	top: 142px;
}
#apDiv5 {
	position:absolute;
	width:70%;
	height:23px;
	z-index:3;
	left: 27px;
	top: 179px;
	background-color: #FFFFFF;
}
#apDiv6 {
	position:absolute;
	width:70%;
	height:22px;
	z-index:4;
	left: 26px;
	top: 226px;
	background-color: #FFFFFF;
}
#apDiv7 {
	position:absolute;
	width:70%;
	height:27px;
	z-index:5;
	left: 27px;
	top: 286px;
	background-color: #000066;
}
#apDiv8 {
	position:absolute;
	width:70%;
	height:30px;
	z-index:6;
	left: 30px;
	top: 342px;
}
#apDiv9 {
	position:absolute;
	width:30%;
	height:46px;
	z-index:2;
	left: 500px;
	top: 108px;
}
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style2 {
	font-size: 36px;
	color: #000066;
}
body {
	background-color: #FFFFFF;
}
#apDiv10 {
	position:absolute;
	width:148px;
	height:31px;
	z-index:2;
	left: 30px;
	top: 255px;
}
#apDiv11 {
	position:absolute;
	width:30%;
	height:32px;
	z-index:2;
	left: 62px;
	top: 253px;
}
#apDiv12 {
	position:absolute;
	width:30%;
	height:32px;
	z-index:2;
	left: 355px;
	top: 251px;
}
#apDiv13 {
	position:absolute;
	width:50%;
	height:346px;
	z-index:3;
	left: 303px;
	top: 165px;
}
#apDiv14 {
	position:absolute;
	width:20%;
	height:31px;
	z-index:2;
	left: 124px;
	top: 294px;
}
#apDiv15 {
	position:absolute;
	width:20%;
	height:32px;
	z-index:2;
	left: 381px;
	top: 293px;
}
#apDiv16 {
	position:absolute;
	width:7%;
	height:104px;
	z-index:4;
	left: 384px;
	top: 56px;
}
-->
</style>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv13">
    <table width="100%" border="0">
      <tr>
        <td width="22%" height="47"><strong>First Name</strong></td>
        <td width="26%">
            <asp:TextBox ID="t1" runat="server"></asp:TextBox>          </td>
        <td width="25%"><strong>Last Name</strong></td>
        <td width="27%">
            <asp:TextBox ID="t5" runat="server"></asp:TextBox>          </td>
      </tr>
      <tr>
        <td height="45"><strong>Email</strong></td>
        <td>
            <asp:TextBox ID="t2" runat="server"></asp:TextBox>          </td>
        <td><strong>Admin Code</strong></td>
        <td>
            <asp:TextBox ID="t6" runat="server" TextMode="Password"></asp:TextBox>          </td>
      </tr>
      <tr>
        <td height="42"><strong>New Password</strong></td>
        <td>
            <asp:TextBox ID="t3" runat="server" TextMode="Password"></asp:TextBox>          </td>
        <td><strong>Reenter Password</strong></td>
        <td>
            <asp:TextBox ID="t7" runat="server" TextMode="Password"></asp:TextBox>          </td>
      </tr>
      <tr>
        <td height="47"><strong>Gender</strong></td>
        <td>
            <asp:DropDownList ID="d1" runat="server" Height="23px" Width="125px">
                <asp:ListItem>Select Any One </asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>          </td>
        <td><strong>Mobile No</strong></td>
        <td>
            <asp:TextBox ID="t8" runat="server"></asp:TextBox>          </td>
      </tr>
      <tr>
        <td height="44"><strong>Address</strong></td>
        <td>
            <asp:TextBox ID="t4" runat="server"></asp:TextBox>          </td>
        <td><strong>Answer</strong></td>
        <td>
            <asp:TextBox ID="t9" runat="server"></asp:TextBox>          </td>
      </tr>
      <tr>
        <td height="44"><strong>Security Question</strong></td>
        <td>
            <asp:DropDownList ID="d2" runat="server" Height="29px" Width="124px">
                <asp:ListItem>Select Any One</asp:ListItem>
                <asp:ListItem>What is your nickname?</asp:ListItem>
                <asp:ListItem>What is your father&#39;s name?</asp:ListItem>
                <asp:ListItem>Which is your favourite colour?</asp:ListItem>
                <asp:ListItem>What is your best cricketer?</asp:ListItem>
            </asp:DropDownList>          </td>
        <td colspan="2">&nbsp;</td>
        </tr>
      <tr>
        <td height="52" colspan="4"><div id="apDiv14">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                Font-Underline="True" Text="SUBMIT" Width="100%" BackColor="#000066" 
                ForeColor="White" onclick="Button1_Click" />
            </div>
        <div id="apDiv15">
            <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Overline="False" 
                Font-Size="Large" Font-Underline="True" Text="RESET" Width="100%" 
                BackColor="#000066" ForeColor="White" onclick="Button2_Click" />            </div></td>
      </tr>
    </table>
  </div>
  <div class="style1" id="apDiv9">
    <div align="center" class="style2">Admin Registration</div>
  </div>
  <div id="apDiv16"><img src="../images/adminnnnnn.png" width="100" height="100" /></div>
</div>
    </form>
</body>
</html>
