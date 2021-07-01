<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="STUDENT_MANAGEMENT.Attendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 100%;
		}
		.auto-style3 {
			width: 144px;
		}
		.auto-style4 {
			width: 340px;
			height: 69px;
		}
	</style>
</head>
<body style="width: 618px; height: 323px">
    <form id="form1" runat="server">
		<div class="auto-style4">
        <table border="1" class="auto-style1">
			<tr>
				<td class="auto-style3">SELECT COURSE</td>
				<td>
					<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Course_join" DataValueField="Course_join">
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td class="auto-style3">&nbsp;</td>
				<td>
					<asp:Button ID="Button1" runat="server" BackColor="#66FFFF" Text="MARK ATTENDANCE"/>
				</td>
			</tr>
		</table>
			</div>
    	<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
		13<br />
		<br />
		<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
			<AlternatingRowStyle BackColor="White" />
			<Columns>
				<asp:BoundField DataField="ST_fname" HeaderText="ST_fname" SortExpression="ST_fname" />
				<asp:BoundField DataField="Course_join" HeaderText="Course_join" SortExpression="Course_join" />
				<asp:TemplateField HeaderText="MARK ATTENDANCE">
					<ItemTemplate>
						<asp:RadioButton ID="RadioButton2" runat="server" Checked="True" Text="PRESENT" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:RadioButton ID="RadioButton3" runat="server" Checked="True" Text="ABSENT" />
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
			<EditRowStyle BackColor="#7C6F57" />
			<FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
			<HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
			<RowStyle BackColor="#E3EAEB" />
			<SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
			<SortedAscendingCellStyle BackColor="#F8FAFA" />
			<SortedAscendingHeaderStyle BackColor="#246B61" />
			<SortedDescendingCellStyle BackColor="#D4DFE1" />
			<SortedDescendingHeaderStyle BackColor="#15524A" />
		</asp:GridView>
		<br />
		<asp:Button ID="Button2" runat="server" BorderColor="#FFCCFF" BorderStyle="Solid" OnClick="Button2_Click" Text="SAVE ATTENDANCE" />
		<br />
		<br />
		<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
		<br />
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentManagementSystemConnectionString6 %>" SelectCommand="SELECT DISTINCT [Course_join] FROM [student]"></asp:SqlDataSource>
		<br />
		<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudentManagementSystemConnectionString8 %>" SelectCommand="SELECT [ST_fname], [Course_join] FROM [student] WHERE ([Course_join] = @Course_join)">
			<SelectParameters>
				<asp:ControlParameter ControlID="DropDownList1" Name="Course_join" PropertyName="SelectedValue" Type="String" />
			</SelectParameters>
		</asp:SqlDataSource>
    </form>
</body>
</html>
