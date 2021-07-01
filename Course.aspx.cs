using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace STUDENT_MANAGEMENT
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButCourse_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[CourseTable] (C_name, Duration, C_fees) values (@C_name,@Duration,@C_fees)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@C_name", TxtCoursename.Text);
            sqlcomm.Parameters.AddWithValue("@Duration", TxtCourseDuration.Text);
            sqlcomm.Parameters.AddWithValue("@C_fees", TxtFees.Text);
            sqlcomm.ExecuteNonQuery();
            LabCourse.Text="THE COURSE " + TxtCoursename.Text + "IS SAVED SUCCESSFULLY....!";
            TxtCoursename.Text = " ";
            TxtCourseDuration.Text = " ";
            TxtFees.Text = " ";
            sqlconn.Close();
        }
    }
}