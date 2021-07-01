<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="STUDENT_MANAGEMENT.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link href="Viewadmin.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
	
    <form id="form1" runat="server">
		<link href="Viewadmin.css" rel="stylesheet" type="text/css" />
		 <script src="Foundation/js/foundation.min.js" type="text/javascript"></script>  
    <link href="Foundation/css/foundation.min.css" rel="stylesheet" type="text/css" />
		<div class="LogoutCrud">
				<asp:Button ID="ButLogoutCrud" runat="server" Text="LOGOUT" OnClick="ButLogoutCrud_Click"></asp:Button>
			</div>
		<center>
        <div class="ViewAdmin">
			
			<div class="h1">
			<h1> CRUD OPERATIONS </h1>
				</div>
			<div class="Viewgrid">
        	<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
				CellPadding="3" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="ID"
				ShowHeaderWhenEmpty="true" OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing"
				OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
				
				<%--GRID THEME--%>

				<FooterStyle BackColor="White" ForeColor="#000066" />
				<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
				<RowStyle ForeColor="#000066" />
				<SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
				<SortedAscendingCellStyle BackColor="#F1F1F1" />
				<SortedAscendingHeaderStyle BackColor="#007DBB" />
				<SortedDescendingCellStyle BackColor="#CAC9C9" />
				<SortedDescendingHeaderStyle BackColor="#00547E" />
				<Columns>

					<asp:TemplateField HeaderText="NAME">
						<ItemTemplate>
							<asp:Label runat="server" Text='<% # Eval("NAME") %>'></asp:Label>
						</ItemTemplate>
						<EditItemTemplate>
							<asp:TextBox ID="txtNameDetails" Text='<% # Eval("NAME") %>' runat="server">
							</asp:TextBox>
						</EditItemTemplate>
						<FooterTemplate>
							<asp:TextBox ID="txtNameFooter" runat="server">
							</asp:TextBox>
						</FooterTemplate>
						 
					</asp:TemplateField>

				

					<asp:TemplateField HeaderText="CONTACT">
						<ItemTemplate>
							<asp:Label runat="server" Text='<% # Eval("CONTACT") %>'></asp:Label>
						</ItemTemplate>
						<EditItemTemplate>
							<asp:TextBox ID="txtContactDetails" Text='<% # Eval("CONTACT") %>' runat="server">
							</asp:TextBox>
						</EditItemTemplate>
						<FooterTemplate>
							<asp:TextBox ID="txtContactFooter" runat="server">
							</asp:TextBox>
						</FooterTemplate>
						 
					</asp:TemplateField>


						<asp:TemplateField HeaderText="EMAIL">
						<ItemTemplate>
							<asp:Label runat="server" Text='<% # Eval("EMAIL") %>'></asp:Label>
						</ItemTemplate>
						<EditItemTemplate>
							<asp:TextBox ID="txtEmailDetails" Text='<% # Eval("EMAIL") %>' runat="server">
							</asp:TextBox>
						</EditItemTemplate>
						<FooterTemplate>
							<asp:TextBox ID="txtEmailFooter" runat="server">
							</asp:TextBox>
						</FooterTemplate>
					</asp:TemplateField>


					<asp:TemplateField>
						<ItemTemplate>
							<asp:ImageButton ImageUrl="~/Icone images/icons8-edit-26.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
							<asp:ImageButton ImageUrl="~/Icone images/icons8-delete-bin-64.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />

						
						</ItemTemplate>
						<EditItemTemplate>
							<asp:ImageButton ImageUrl="~/Icone images/icons8-save-64.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
							<asp:ImageButton ImageUrl="~/Icone images/icons8-cancel-26.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
						</EditItemTemplate>
						<FooterTemplate>
							<asp:ImageButton ImageUrl="~/Icone images/icons8-add-new-100.png" runat="server" CommandName="Addnew" ToolTip="Addnew" Width="20px" Height="20px" />
						</FooterTemplate>
					</asp:TemplateField>
				</Columns>
			</asp:GridView>
			<br />
			<asp:Label id="lblSuccessmessage" Text="" runat="server" ForeColor="Green" ></asp:Label>
		
			<asp:Label id="LabErrormessage" Text="" runat="server" ForeColor="Green">
			</asp:Label>
				</div>
        </div>
			</center>
    </form>
		
</body>
</html>
