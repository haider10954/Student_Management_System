using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace STUDENT_MANAGEMENT
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        string connection = @"Data Source=DESKTOP-9ENSOIH;Initial Catalog=StudentManagementSystem;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                populateGridview();
            }
        }
        void populateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlcon = new SqlConnection(connection))
            {
                sqlcon.Open();
                SqlDataAdapter sqlda = new SqlDataAdapter("SELECT * FROM VIEW_ADMIN", sqlcon);
                sqlda.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GridView1.Rows[0].Cells[0].Text = "NO DATA FOUND ......";
                GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Addnew"))
            {
                using (SqlConnection sqlcon = new SqlConnection(connection))
                {
                    sqlcon.Open();
                    String query = "INSERT into [dbo].[VIEW_ADMIN] (NAME,EMAIL,CONTACT) values (@NAME,@EMAIL,@CONTACT)";
                    SqlCommand cmd = new SqlCommand(query, sqlcon);
                    cmd.Parameters.AddWithValue("@NAME", (GridView1.FooterRow.FindControl("txtNameFooter") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@EMAIL", (GridView1.FooterRow.FindControl("txtEmailFooter") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@CONTACT", (GridView1.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim());
                    cmd.ExecuteNonQuery();
                    populateGridview();
                    lblSuccessmessage.Text = " NEW RECORD ADDED";
                    LabErrormessage.Text = "";
                }
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            populateGridview();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            populateGridview();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
                using (SqlConnection sqlcon = new SqlConnection(connection))
                {
                    sqlcon.Open();
                    String query = "UPDATE [dbo].[VIEW_ADMIN] set EMAIL=@EMAIL,NAME=@NAME,CONTACT=@CONTACT where  ID=@ID";
                    SqlCommand cmd = new SqlCommand(query, sqlcon);
                    cmd.Parameters.AddWithValue("@NAME", (GridView1.Rows[e.RowIndex].FindControl("txtNameDetails") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@EMAIL", (GridView1.Rows[e.RowIndex].FindControl("txtEmailDetails") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@CONTACT", (GridView1.Rows[e.RowIndex].FindControl("txtContactDetails") as TextBox).Text.Trim());
                cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    cmd.ExecuteNonQuery();
                GridView1.EditIndex = -1;
                    populateGridview();
                    lblSuccessmessage.Text = " SELECTED ROW IS UPDATED ";
                    LabErrormessage.Text = "";
                }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(connection))
            {
                sqlcon.Open();
                String query = "delete from [dbo].[VIEW_ADMIN] where  ID=@ID";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                cmd.ExecuteNonQuery();
                populateGridview();
                lblSuccessmessage.Text = " SELECTED ROW DELETED"; 
                LabErrormessage.Text = "";
            }
        }

        protected void ButLogoutCrud_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }
    }
}