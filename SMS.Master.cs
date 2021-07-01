using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STUDENT_MANAGEMENT
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Adminname"] != null)
            {
                LabeUserlogin.Text = Session["Adminname"].ToString();
            }
            else
            {
                Response.Redirect("Homepage.aspx");
            }
        }

        protected void LinkCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("Course.aspx");
        }

        protected void LinkTeacher_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tutor.aspx");
        }

        protected void LinkStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student.aspx");
        }

        protected void LinkLogout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon();
            Response.Redirect("Homepage.aspx");
        }

        protected void LinkFeedBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Feedback.aspx");
        }

        protected void LinkAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void LinkViewbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewDetails.aspx");
        }
    }
}