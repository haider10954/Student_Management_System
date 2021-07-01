using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace STUDENT_MANAGEMENT
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButStudent_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[student] (ST_fname, ST_Lname, ST_fathername,ST_fatherphone,ST_email,ST_phone,Course_join,Course_fees,First_installment,Fees_Due,Join_date) " +
                "values (@ST_fname,@ST_Lname,@ST_fathername,@ST_fatherphone,@ST_email,@ST_phone,@Course_join,@Course_fees,@First_installment,@Fees_Due,@Join_date)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@ST_fname", TxtStudentFname.Text);
            sqlcomm.Parameters.AddWithValue("@ST_Lname", TxtStudentLname.Text);
            sqlcomm.Parameters.AddWithValue("@ST_fathername", TxtFathername.Text);
            sqlcomm.Parameters.AddWithValue("@ST_fatherphone", TxtFatherPhoneNumber.Text);
            sqlcomm.Parameters.AddWithValue("@ST_email", TxtStudentEmail.Text);
            sqlcomm.Parameters.AddWithValue("@ST_phone", TxtStudentPhone.Text);
            sqlcomm.Parameters.AddWithValue("@Course_join", DDLCourseName.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("@Course_fees", LabCourseFees.Text);
            sqlcomm.Parameters.AddWithValue("@First_installment", TxtFeesInstallment.Text);
            sqlcomm.Parameters.AddWithValue("@Fees_Due", LabFeesDue.Text);
            sqlcomm.Parameters.AddWithValue("@Join_date", TxtSudentJoinDate.Text);
            sqlcomm.ExecuteNonQuery();
            LabStudent.Text = "THE DATA OF  " + TxtStudentFname.Text + " IS SAVED SUCCESSFULLY....!" ;
         
            sqlconn.Close();
        }

        protected void DDLCourseName_SelectedIndexChanged(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquey = "select * from [dbo].[CourseTable] where C_name=@C_name";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquey, sqlconn);
            sqlcomm.Parameters.AddWithValue("@C_name", DDLCourseName.SelectedItem.Text);
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            while (sdr.Read())
            {
                LabCourseFees.Text = sdr["C_fees"].ToString();
            }
            sqlconn.Close();
        }

        protected void TxtFeesInstallment_TextChanged(object sender, EventArgs e)
        {
            int balance = Convert.ToInt32(LabCourseFees.Text) - Convert.ToInt32(TxtFeesInstallment.Text);
            LabFeesDue.Text = balance.ToString();
        }
    }
}