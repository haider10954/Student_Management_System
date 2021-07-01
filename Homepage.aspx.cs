using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace STUDENT_MANAGEMENT
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButLogin_Click(object sender, EventArgs e)
        {
            if(TxtAdminId.Text=="Admin" && TxtPwdAdmin.Text=="123")
            {
                Session["Adminname"] = "WELCOME " + TxtAdminId.Text;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Labmsg.Text = "LOGIN FAILED........";
            }
        }

       
        protected void ButPortfolio_Click(object sender, EventArgs e)
        {
            Response.Redirect("PORTFOLIO.html");
        }

       
    }
}