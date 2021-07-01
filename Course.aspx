<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="STUDENT_MANAGEMENT.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
	.auto-style1 {
		width: 1109px;
	}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<link href="Course.css" rel="stylesheet" type="text/css" media="screen" />
	 <script src="Foundation/js/foundation.min.js" type="text/javascript"></script>  
    <link href="Foundation/css/foundation.min.css" rel="stylesheet" type="text/css" />
	<br />
    <br />
	<div class="container21">
		<table border="1">
			<tr>
				<td>COURSE NAME</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtCoursename" runat="server" Width="1320px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>
					COURSE DURATION
				</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtCourseDuration" runat="server" Width="1320px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>
					COURSE FEES
				</td>
				<td class="auto-style1">
					<asp:TextBox ID="TxtFees" runat="server" Width="1320px"></asp:TextBox></td>
			</tr>
			<tr>
				<td>
					<asp:Button ID="ButCourse" runat="server" Text="INSERT NEW COURSE" Width="130px" OnClick="ButCourse_Click" /></td>
				<td class="auto-style1">
					<asp:Label ID="LabCourse" runat="server" Text="" ForeColor="yellow"></asp:Label></td>
			</tr>
		</table>
	</div><br /><br />
	<div class="footer-basic">
        <footer>
            <div class="social">
				<a href="#"><img src="https://img.icons8.com/doodle/50/000000/facebook-new.png"/><i class="icon ion-social-instagram"></i></a>
				<a href="#"><img src="https://img.icons8.com/doodle/48/000000/snapchat.png"/><i class="icon ion-social-snapchat"></i></a>
				<a href="#"><img src="https://img.icons8.com/doodle/48/000000/twitter--v1.png"/><i class="icon ion-social-twitter"> </i></a>
				</div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#">HOME</a></li>
                <li class="list-inline-item"><a href="#">SERVICES</a></li>
                <li class="list-inline-item"><a href="#">ABOUT</a></li>
                <li class="list-inline-item"><a href="#">TERMS</a></li>
                <li class="list-inline-item"><a href="#">PRIVACY POLICY</a></li>
            </ul>
            <p class="copyright">BAHRIA © 2018</p>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</asp:Content>
