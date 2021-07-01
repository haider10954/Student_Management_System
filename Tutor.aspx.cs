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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButTeacher_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Tutor] (T_name, T_email,Tphone, T_course,T_qualification,join_date) values (@T_name,@T_email,@Tphone,@T_course,@T_qualification,@join_date)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@T_name", TxtTeachername.Text);
            sqlcomm.Parameters.AddWithValue("@T_email", TxtEmail.Text);
            sqlcomm.Parameters.AddWithValue("@Tphone", TxtPhone.Text);
            sqlcomm.Parameters.AddWithValue("@T_course", DDLCoursename.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("@T_qualification", TxtQualification.Text);
            sqlcomm.Parameters.AddWithValue("@join_date", TxtDate.Text);
            sqlcomm.ExecuteNonQuery();
            LabTeacher.Text = "THE TEACHER " + TxtTeachername.Text + "INFO IS SAVED SUCCESSFULLY....!";
            TxtTeachername.Text = " ";
            TxtEmail.Text = " ";
            TxtPhone.Text = " ";
            TxtQualification.Text = " ";
            sqlconn.Close();
        }
    }
}