<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="Tutor.aspx.cs" Inherits="STUDENT_MANAGEMENT.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
		.auto-style1 {
			width: 781px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<link href="Teacher.css" rel="stylesheet" type="text/css" media="screen" />
	 <script src="Foundation/js/foundation.min.js" type="text/javascript"></script>  
    <link href="Foundation/css/foundation.min.css" rel="stylesheet" type="text/css" />
	<br />
	<div class="container12" style="background-color:lightgreen; font-family:cursive;">
		<table border="1">
			<tr>
				<td>TEACHER NAME
				</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtTeachername" runat="server" Width="1320px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>EMAIL</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtEmail" runat="server" Width="1320px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>COURSE NAME</td>
				<td class="auto-style1">
					<asp:DropDownList ID="DDLCoursename" runat="server" Height="16px" Width="1300px" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="C_name" DataValueField="C_name">
						<asp:ListItem Value="0" Text="-----SELECT-----"></asp:ListItem> 
					</asp:DropDownList>
					<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentManagementSystemConnectionString %>" SelectCommand="SELECT [C_name] FROM [CourseTable]"></asp:SqlDataSource>
				</td>
			</tr>
			<tr>
				<td>PHONE NUMBER</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtPhone" runat="server" Width="1320px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>QUALIFICATION</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtQualification" runat="server" Width="1320px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>JOIN DATE</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtDate" runat="server" Width="1320px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>
					<asp:Button ID="ButTeacher" runat="server" Text="INSERT NEW RECORD" OnClick="ButTeacher_Click" />
				</td>
				<td><asp:Label ID="LabTeacher" runat="server" Text="" ForeColor="yellow"></asp:Label></td>
			</tr>
		</table>
	</div><br />
	<div class="footer-basic5">
        <footer>
            <div class="social5">
				<a href="#"><img src="https://img.icons8.com/doodle/50/000000/facebook-new.png"/><i class="icon ion-social-instagram"></i></a>
				<a href="#"><img src="https://img.icons8.com/doodle/48/000000/snapchat.png"/><i class="icon ion-social-snapchat"></i></a>
				<a href="#"><img src="https://img.icons8.com/doodle/48/000000/twitter--v1.png"/><i class="icon ion-social-twitter"> </i></a>
				</div>
            <ul class="list-inline5">
                <li class="list-inline-item20"><a href="#">HOME</a></li>
                <li class="list-inline-item21"><a href="#">SERVICES</a></li>
                <li class="list-inline-item22"><a href="#">ABOUT</a></li>
                <li class="list-inline-item23"><a href="#">TERMS</a></li>
                <li class="list-inline-item24"><a href="#">PRIVACY POLICY</a></li>
            </ul>
            <p class="copyright5">BAHRIA © 2018</p>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</asp:Content>
