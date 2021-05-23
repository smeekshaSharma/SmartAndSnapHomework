<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Smart &amp; Snap homework</title>
<script runat="server">
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        d2.Items.Clear()
        If d1.Text = "Punjab" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Amritsar")
            d2.Items.Add("Ludhiana")
            d2.Items.Add("Chandhigarh")
            d2.Items.Add("Pathankot")
            d2.Items.Add("Patiala")
            d2.Items.Add("Phagwara")
            d2.Items.Add("Mohaki")
            d2.Items.Add("Bathinda")
            d2.Items.Add("Hoshiarpur")
            d2.Items.Add("Kapurthala")
            d2.Items.Add("Faridkot")
            d2.Items.Add("Sangrur")
        ElseIf d1.Text = "Haryana" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Dabwali")
            d2.Items.Add("Rohtak")
            d2.Items.Add("Hisar")
            d2.Items.Add("Karnal")
            d2.Items.Add("Ambala")
        ElseIf d1.Text = "Himachal Pardesh" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Shimla")
            d2.Items.Add("Chamba")
            d2.Items.Add("Manali")
            d2.Items.Add("Chail")
            d2.Items.Add("Kasuli")
        ElseIf d1.Text = "Uttar Pardesh" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Lukhnow")
            d2.Items.Add("Kanpur")
            d2.Items.Add("Jhansi")
            d2.Items.Add("Aligarh")
            d2.Items.Add("Meerut")
        ElseIf d1.Text = "Assam" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Guwahati")
            d2.Items.Add("Johar")
            d2.Items.Add("Tezpur")
            d2.Items.Add("Dhubri")
            d2.Items.Add("Lanka")
        ElseIf d1.Text = "Gujrat" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Ahmedabad")
            d2.Items.Add("Surat")
            d2.Items.Add("Rajkot")
            d2.Items.Add("Morvi")
            d2.Items.Add("Jamnagar")
        ElseIf d1.Text = "Goa" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Panaji")
            d2.Items.Add("Ponda")
            d2.Items.Add("Sancoale")
            d2.Items.Add("Mapuca")
            d2.Items.Add("Mormugao")
        ElseIf d1.Text = "Arunachal Pardesh" Then
            d2.Items.Add("Select Any City")
            d2.Items.Add("Twanga")
            d2.Items.Add("Itanagar")
            d2.Items.Add("Ziro")
            d2.Items.Add("Tezu")
            d2.Items.Add("Along")
        Else
            MsgBox("Please Select Any State")
        End If
    End Sub
    Dim conn As New Data.SqlClient.SqlConnection
    Dim command As New Data.SqlClient.SqlCommand
    Dim datareader As New Data.SqlClient.SqlDataAdapter
    Dim sql As String
    Dim count As New Integer
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If t1.Text = "" Or t2.Text = "" Or t3.Text = "" Or t4.Text = "" Or t5.Text = "" Or t6.Text = "" Or t7.Text = "" Or d1.Text = "Select Any One" Or d2.Text = "Select Any One" Or d3.Text = "Select Any One" Or d4.Text = "Select Any One" Or d5.Text = "Select Any One" Or d6.Text = "Select Any One" Then
            MsgBox("Please Fill All Fields")
            Exit Sub
        End If
        If IsNumeric(t1.Text) Then
            MsgBox("Enter Student Name In text")
            t1.Text = ""
            Exit Sub 
        End If
        If IsNumeric(t2.Text) Then
            MsgBox("Enter Father's Name In text")
            t2.Text = ""
            Exit Sub
        End If
        If IsNumeric(t3.Text) Then
            MsgBox("Enter Mother Name In text")
            t3.Text = ""
            Exit Sub
        End If
        If Not IsNumeric(t4.Text) Then
            MsgBox("Enter Rollno in Numeric")
            Exit Sub
            t4.Text=""
        End If
        If Not IsNumeric(t6.Text) Then
            MsgBox("Enter Contact No in Numeric")
            t6.Text = ""
            Exit Sub
        End If
       
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("Select count(*)from stureg where RollNo = '" & t4.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            MsgBox("Student Registration alredy exist")
            t4.Text = ""
            conn.Close()
        End If                                       
        sql = "insert into stureg values('" & d1.Text & "','" & d2.Text & "','" & d3.Text & "','" & t1.Text & "','" & t2.Text & "','" & t3.Text & "','" & d4.Text & "','" & d5.Text & "'," & t4.Text & ",'" & d6.Text & "','" & t5.Text & "'," & t6.Text & ",'" & t7.Text & "','" & "pwd" & "')"
        datareader.InsertCommand = New Data.SqlClient.SqlCommand(sql, conn)
        datareader.InsertCommand.ExecuteScalar()
        MsgBox("Student Registration has been saved")
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
        conn = New Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\snapwork.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        command = New Data.SqlClient.SqlCommand("Select count(*)from stureg where RollNo='" & t4.Text & "'")
        command.Connection = conn
        count = command.ExecuteScalar
        If (count > 0) Then
            command = New Data.SqlClient.SqlCommand("select State from stureg where RollNo='" & t4.Text & "'")
            command.Connection = conn
            d1.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select city from stureg RollNo='" & t4.Text & "'")
            command.Connection = conn
            d2.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select SchoolName from stureg RollNo='" & t4.Text & "'")
            command.Connection = conn
            d3.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select StudentName from stureg RollNo='" & t4.Text & "'")
            command.Connection = conn
            t1.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select FatherName from stureg RollNo='" & t4.Text & "'")
            command.Connection = conn
            t2.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select MotherName from stureg RollNo='" & t4.Text & "'")
            command.Connection = conn
            t3.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select ClassName from stureg RollNo='" & t4.Text & "'")
            command.Connection = conn
            d4.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select Section from stureg RollNo='" & t4.Text & "'")
            command.Connection = conn
            d5.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select RollNo from stureg RollNo='" & t4.Text & "'")
            command.Connection = conn
            d6.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select Email from stureg RollNo='" & t4.Text & "'")
            command.Connection = conn
            t5.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select ContactNo from stureg RollNo='" & t4.Text & "'")
            command.Connection = conn
            t6.Text = command.ExecuteScalar
            command = New Data.SqlClient.SqlCommand("select Address from stureg RollNo='" & t4.Text & "'")
            command.Connection = conn
            t7.Text = command.ExecuteScalar
        Else
            MsgBox("RollNo Not Found")
            t1.Text = ""
            t2.Text = ""
            t3.Text = ""
            t4.Text = ""
            t5.Text = ""
            t6.Text = ""
            t7.Text = ""
            conn.Close()
        End If
        
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
      
    End Sub

    Protected Sub t1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
</script>
<style type="text/css">
    
#apDiv1 {
	position:absolute;
	width:100%;
	height:1371px;
	z-index:1;
	left: 0px;
	top: 0px;
}
#apDiv2 {
	position:absolute;
	width:100%;
	height:49px;
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
	left: -45px;
	top: 293px;
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
	color: #af0028;
}
a:active {
	text-decoration: none;
	color: #af0028;
}
#apDiv7 {
	position:absolute;
	width:100%;
	height:381px;
	z-index:2;
	left: -1px;
	top: 62px;
}
#apDiv8 {
	position:absolute;
	width:460px;
	height:219px;
	z-index:2;
	left: 402px;
	top: 80px;
}
.style6 {
	font-size: 36px;
	font-weight: bold;
	color: #FFFFFF;
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
	height:769px;
	z-index:4;
	left: 2px;
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
	height:50px;
	z-index:5;
	left: 0px;
	top: 1313px;
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
	width:50%;
	height:677px;
	z-index:1;
	left: 77px;
	top: 56px;
}
#apDiv24 {
	position:absolute;
	width:448px;
	height:42px;
	z-index:1;
	left: 258px;
	top: 21px;
}
#apDiv25 {
	position:absolute;
	width:50%;
	height:35px;
	z-index:2;
	left: 302px;
	top: 13px;
	background-color: #CCCCCC;
}
.style20 {
	font-size: 18px;
	font-weight: bold;
}
.style21 {
	font-size: 24px
}
#apDiv26 {
	position:absolute;
	width:30%;
	height:324px;
	z-index:3;
	left: 569px;
	top: 66px;
}
#apDiv27 {
	position:absolute;
	width:662px;
	height:20px;
	z-index:4;
	left: 514px;
	top: 478px;
	background-color: #CCCCCC;
}
    .style23
    {
        height: 22px;
    }
    .style24
    {
        height: 30px;
    }
.style25 {height: 30px; font-weight: bold; }
.style26 {height: 22px; font-weight: bold; }
.style27 {
	height: 22px;
	font-weight: bold;
	font-size: 18px;
}
.style29 {font-size: 18px}
    .style30
    {
        height: 32px;
    }
    .style31
    {
        height: 36px;
    }
    .style32
    {
        height: 31px;
    }
#apDiv28 {	position:absolute;
	width:100%;
	height:58px;
	z-index:1;
	left: 0px;
	top: 0px;
	background-color: #0d152e;
}
#apDiv29 {	position:absolute;
	width:20;
	height:20;
	z-index:1;
	left: 0;
	top: 0;
}
#apDiv30 {
	position:absolute;
	width:100%;
	height:61px;
	z-index:6;
	left: 0;
	top: 0;
	background-color: #0d152e;
}
-->
</style>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1">
  <div id="apDiv7">
    <script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','100%','height','394','src','../animation/Movie3 (2)','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','../animation/Movie3 (2)' ); //end AC code
    </script>
    <noscript>
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="100%" height="394">
      <param name="movie" value="../animation/Movie3 (2).swf" />
      <param name="quality" value="high" />
      <embed src="../animation/Movie3 (2).swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="100%" height="394"></embed>
    </object>
    </noscript>
    </div>
  <div id="apDiv10">
    <div id="apDiv23">
      <table width="100%" height="533" border="0">
        <tr>
          <td width="244" height="43" class="style31"><strong>State</strong></td>
    <td class="style31" colspan="2">&nbsp;
    <asp:DropDownList ID="d1" runat="server" 
                  onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                  AutoPostBack="True" style="margin-bottom: 0px" Width="40%" Height="60%">
                  <asp:ListItem>Select Any One</asp:ListItem>
                  <asp:ListItem>Punjab</asp:ListItem>
                  <asp:ListItem>Haryana</asp:ListItem>
                  <asp:ListItem>Himachal Pardesh</asp:ListItem>
                  <asp:ListItem>Uttar Pardesh</asp:ListItem>
                  <asp:ListItem>Assam</asp:ListItem>
                  <asp:ListItem>Gujrat</asp:ListItem>
                  <asp:ListItem>Goa</asp:ListItem>
                  <asp:ListItem>Arunachal Pardesh</asp:ListItem>
              </asp:DropDownList>            </td>
        </tr>
        <tr>
          <td height="32" class="style25">City</td>
          <td class="style24" colspan="2">
              &nbsp;<asp:DropDownList ID="d2" runat="server" 
                  AutoPostBack="True" Height="60%" 
                  Width="40%">
                  <asp:ListItem>Select Any One</asp:ListItem>
              </asp:DropDownList>
&nbsp;&nbsp;&nbsp;            </td>
        </tr>
        <tr>  
          <td height="32"><strong>School Name</strong></td>
          <td colspan="2">
              <asp:DropDownList ID="d3" runat="server" 
                  AutoPostBack="True" Height="60%" Width="40%" DataSourceID="SqlDataSource1" 
                  DataTextField="SchoolName" DataValueField="SchoolName">
                  <asp:ListItem Value="Select any city">Select Any One</asp:ListItem>
              </asp:DropDownList>            
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT [SchoolName] FROM [schlreg] WHERE ([City] = @City)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="d2" Name="City" PropertyName="SelectedValue" 
                          Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
          <td height="34"><strong>Student Name</strong></td>
          <td colspan="2">
              <asp:TextBox ID="t1" runat="server" Height="100%" Width="51%" 
                  ontextchanged="t1_TextChanged"></asp:TextBox>            </td>
        </tr>
        
        <tr>
          <td height="34" class="style30"><p><strong>Father's Name</strong></p>            </td>
          <td class="style30" colspan="2">
              <asp:TextBox ID="t2" runat="server" Height="100%" Width="51%"></asp:TextBox>            </td>
        </tr>
        <tr>
          <td height="32"><strong>Mother's Name</strong></td>
          <td colspan="2">
              <asp:TextBox ID="t3" runat="server" Height="100%" Width="51%"></asp:TextBox>            </td>
        </tr>
        
        <tr>
          <td height="29"><strong>Class Name</strong></td>
          <td colspan="2">
            <asp:DropDownList ID="d4" runat="server">
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
                <asp:ListItem>Eight</asp:ListItem>
                <asp:ListItem>Nineth</asp:ListItem>
                <asp:ListItem>Tenth</asp:ListItem>
                <asp:ListItem>+1</asp:ListItem>
                <asp:ListItem>+2</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>
        
        <tr>
          <td height="34" class="style32"><strong>Section</strong></td>
          <td class="style32" colspan="2">
            <asp:DropDownList ID="d5" runat="server">
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
          <td height="37" class="style26">Roll No</td>
          <td class="style23" colspan="2">
              <asp:TextBox ID="t4" runat="server" Height="100%" Width="51%"></asp:TextBox>            </td>
        </tr>
        
        <tr>
          <td height="24" class="style27">Gender</td>
          <td class="style23" colspan="2">
              <asp:DropDownList ID="d6" runat="server" AppendDataBoundItems="True" 
                  Height="60%" Width="40%">
                  <asp:ListItem>Select Any One</asp:ListItem>
                  <asp:ListItem>Male</asp:ListItem>
                  <asp:ListItem>Female</asp:ListItem>
              </asp:DropDownList>            </td>
        </tr>
        <tr>
          <td height="45" class="style23"><span class="style29"><strong>Emai</strong>l</span></td>
          <td width="160" class="style23">
            <asp:TextBox ID="t5" runat="server" Height="100%" Width="100%"></asp:TextBox>            </td>
          <td width="239" class="style23">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                  ControlToValidate="t5" ErrorMessage="Enter Correct Email" ForeColor="Red" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>            </td>
        </tr>
        <tr>
          <td height="39" class="style27">Contact No</td>
          <td class="style23" colspan="2">
              <asp:TextBox ID="t6" runat="server" Height="100%" Width="51%"></asp:TextBox>            </td>
        </tr>
        <tr>
          <td height="43" class="style27">Address</td>
          <td class="style23" colspan="2">
              <asp:TextBox ID="t7" runat="server" Width="51%" Height="100%"></asp:TextBox>            </td>
        </tr>
        <tr>
          <td height="45" class="style23">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" 
                  onclick="Button1_Click" Text="Save" Width="126px" />            </td>
          <td class="style23" colspan="2">
              <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Medium" 
                  Text="Search" Width="115px" onclick="Button2_Click" />            </td>
        </tr>
      </table>
    </div>
    <div class="style20" id="apDiv25">
      <div align="center" class="style21">STUDENT REGISTRATION</div>
    </div>
    <div id="apDiv26"><img src="../images/reg 3.jpg" width="100%" height="320" /></div>
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
  <div id="apDiv30">
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
</div>
</form>
</body>
</html>
