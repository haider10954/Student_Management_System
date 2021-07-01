<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="STUDENT_MANAGEMENT.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<link href="Feedback.css" rel="stylesheet" type="text/css" />		
	 <script src="Foundation/js/foundation.min.js" type="text/javascript"></script>  
    <link href="Foundation/css/foundation.min.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
	.auto-style1 {
		width: 650px;
	}
</style>
	<br />
	<div class="container12" style="background-color:lightcoral; font-family:cursive;"> 
	<table border="1">
		<tr>
			<td>STUDENT NAME</td>
			<td class="auto-style1">
				<asp:DropDownList ID="DDLFeedBack" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="ST_fname" DataValueField="ST_fname" Width="825px">
					<asp:ListItem Value="0" Text="---SELECT---"></asp:ListItem>
				</asp:DropDownList>
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentManagementSystemConnectionString3 %>" SelectCommand="SELECT [ST_fname] FROM [student]"></asp:SqlDataSource>
			</td>
		</tr>
		<tr>
			<td>MESSAGE</td>
			<td class="auto-style1">
				<asp:TextBox ID="TxtFeedback" runat="server" Height="100px" Width="817px"></asp:TextBox></td>
			
		</tr>
		
		<tr>
			<td>
				
		<asp:Button ID="ButFeedback" runat="server" Text="SUBMIT FOR MESSAGES" OnClick="ButFeedback_Click" />
			</td>
			<td class="auto-style1">
				<asp:Label ID="LabFeeback" runat="server" Text="" ForeColor="Yellow"></asp:Label></td>

		</tr>
	</table>
		</div><br />
	<div class="footer-basic2">
        <footer>
            <div class="social2">
				<a href="#"><img src="https://img.icons8.com/doodle/50/000000/facebook-new.png"/><i class="icon ion-social-instagram"></i></a>
				<a href="#"><img src="https://img.icons8.com/doodle/48/000000/snapchat.png"/><i class="icon ion-social-snapchat"></i></a>
				<a href="#"><img src="https://img.icons8.com/doodle/48/000000/twitter--v1.png"/><i class="icon ion-social-twitter"> </i></a>
				</div>
            <ul class="list-inline2">
                <li class="list-inline-item6"><a href="#">HOME</a></li>
                <li class="list-inline-item7"><a href="#">SERVICES</a></li>
                <li class="list-inline-item8"><a href="#">ABOUT</a></li>
                <li class="list-inline-item9"><a href="#">TERMS</a></li>
                <li class="list-inline-item10"><a href="#">PRIVACY POLICY</a></li>
            </ul>
            <p class="copyright2">BAHRIA © 2018</p>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</asp:Content>
