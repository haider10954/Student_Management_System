<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="STUDENT_MANAGEMENT.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
		.auto-style1 {
			width: 724px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<link href="Student.css" rel="stylesheet" type="text/css" />
	<br />
	<div class="container12">
		<table border="1">
			<tr>
				<td>STUDENT FIRST NAME</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtStudentFname" runat="server" Width="1275px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>STUDENT LAST NAME</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtStudentLname" runat="server" Width="1275px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>FATHER NAME</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtFathername" runat="server" Width="1275px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>FATHER PHONE NUMBER</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtFatherPhoneNumber" runat="server" Width="1275px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>STUDENT EMAIL</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtStudentEmail" runat="server" Width="1275px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>STUDENT PHONE</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtStudentPhone" runat="server" Width="1275px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>COURSE JOIN</td>
				<td>
					<asp:DropDownList ID="DDLCourseName" runat="server" Height="16px" Width="1275px" AutoPostBack="true" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="C_name" DataValueField="C_name" OnSelectedIndexChanged="DDLCourseName_SelectedIndexChanged">
						<asp:ListItem Value="0" Text="----SELECT----"></asp:ListItem>
					</asp:DropDownList>
					<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentManagementSystemConnectionString2 %>" SelectCommand="SELECT [C_name] FROM [CourseTable]"></asp:SqlDataSource>
				</td>
			</tr>
			<tr>
				<td>COURSE FEES</td>
				<td class="auto-style1">
					<asp:Label ID="LabCourseFees" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<td>COURSE FIRST INSTALLMENT</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtFeesInstallment" runat="server" Width="1275px" AutoPostBack="true" OnTextChanged="TxtFeesInstallment_TextChanged"></asp:TextBox></td>
			</tr>
			<tr>
				<td>FEES DUE</td>
				<td class="auto-style1">
					<asp:Label ID="LabFeesDue" runat="server" Text=""></asp:Label></td>
			</tr>
			<tr>
				<td>JOIN DATE</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtSudentJoinDate" runat="server" Width="1275px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>
					<asp:Button ID="ButStudent" runat="server" Text="INSERT RECORD" OnClick="ButStudent_Click" Width="191px" />
				</td>
				<td>
					<asp:Label ID="LabStudent" runat="server" Text="" ForeColor="yellow"></asp:Label>
				</td>
			</tr>
		</table>
	</div><br />
	<div class="footer-basic4">
        <footer>
            <div class="social4">
				<a href="#"><img src="https://img.icons8.com/doodle/50/000000/facebook-new.png"/><i class="icon ion-social-instagram"></i></a>
				<a href="#"><img src="https://img.icons8.com/doodle/48/000000/snapchat.png"/><i class="icon ion-social-snapchat"></i></a>
				<a href="#"><img src="https://img.icons8.com/doodle/48/000000/twitter--v1.png"/><i class="icon ion-social-twitter"> </i></a>
				</div>
            <ul class="list-inline4">
                <li class="list-inline-item15"><a href="#">HOME</a></li>
                <li class="list-inline-item16"><a href="#">SERVICES</a></li>
                <li class="list-inline-item17"><a href="#">ABOUT</a></li>
                <li class="list-inline-item18"><a href="#">TERMS</a></li>
                <li class="list-inline-item19"><a href="#">PRIVACY POLICY</a></li>
            </ul>
            <p class="copyright4">BAHRIA © 2018</p>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</asp:Content>
