 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="STUDENT_MANAGEMENT.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Homepage.css" rel="stylesheet" type="text/css" media="screen" />
    <script src="Foundation/js/foundation.min.js" type="text/javascript"></script>  
    <link href="Foundation/css/foundation.min.css" rel="stylesheet" type="text/css" />
    <title>WEB PROJECT</title>
	<style type="text/css">
		.auto-style1 {
			width: 100%;
		}
		.auto-style7 {
			width: 277px;
		}
	</style>
</head>
<body>
    <div class="header">
  <a href="#default" class="logo">BAHRIA</a>
  <div class="header-right">
    <a class="active" href="https://www.bahria.edu.pk/">HOME</a>
    <a href="https://www.bahria.edu.pk/contact-us/">CONTACT</a>
    <a href="https://www.bahria.edu.pk/why-bahria/">ABOUT</a>
  </div>
</div><br />
    <div class="imagehomepage">
    <img src="4.jpg" style="width:100%" />
        </div>
    <div>
        <h1 style="background-color:aqua; font-family:cursive; text-align:center">STUDENT MANAGEMENT SYSTEM</h1>
        <h2 style="background-color:aqua; font-family:cursive; text-align:center">USING ASP.NET</h2>
    </div><br />
    <form id="form1" runat="server">
        <div id="main">
            <div id="system">
        <div id="container9">
            <h3>
                <marquee>
                    *****WELCOME TO OUR SYSTEM*****
                </marquee>
            </h3>
        </div><br />
                </div>
            </div>
        <br />
   <div class="flex-container">

  <div class="flex-child magenta">
    <div id="container10" style="background-color:lightcoral; font-family:cursive;">
            <table border="1";>
                <tr>
                    <td>ADMIN ID</td>
                    <td class="auto-style1">
						<asp:TextBox ID="TxtAdminId" runat="server" Width="99%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>PASSWORD</td>
                    <td class="auto-style1">
						<asp:TextBox ID="TxtPwdAdmin" runat="server" TextMode="Password" Width="99%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
						<asp:Button ID="ButLogin" runat="server" Text="LOGIN" OnClick="ButLogin_Click" style="height: 26px" Width="93px" /></td>
                    <td class="auto-style1">
						<asp:Label ID="Labmsg" runat="server" Text="" ForeColor="Red"></asp:Label></td>
                </tr>
            </table>

             </div>
        <br />
  </div>
  <div class="flex-child green">
      <div class="images" style="width:100%">
    <img src="Bahria.jpg" style="width:100%"/>
          </div>
  </div>
  
</div>
        <br />
        <div class="Portfoliobtn">
            <div class="auto-style7">
                <asp:Button ID="ButPortfolio" runat="server" Text="PORTFOLIO" OnClick="ButPortfolio_Click" Width="255px" />
            </div>
        </div>
    </form>
</body>
</html>
