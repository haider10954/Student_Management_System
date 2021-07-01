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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButFeedback_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Feedback] (STUDENt_NAME,Message) values (@STUDENt_NAME,@Message)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@STUDENt_NAME", DDLFeedBack.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("Message", TxtFeedback.Text);
            sqlcomm.ExecuteNonQuery();
            LabFeeback.Text = "THE FEEDBACK OF STUDENT " + DDLFeedBack.SelectedItem.Text + " IS SAVED SUCCESSFULLY....!";
            TxtFeedback.Text = " ";
            sqlconn.Close();
        }
    }
}