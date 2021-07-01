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
    public partial class Attendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = " MARK ATTENDANCE FOR " + DateTime.Now.ToShortDateString();  
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row1 in GridView1.Rows)
            {
                RadioButton rbnt1 = (row1.Cells[2].FindControl("RadioButton2") as RadioButton);
                RadioButton rbnt2 = (row1.Cells[2].FindControl("RadioButton3") as RadioButton);
                string status1;
                if(rbnt1.Checked)
                {
                    status1 ="PRESENT";
                }
                else
                {
                    status1 ="ABSENT";
                }
                string date1 = DateTime.Now.ToShortDateString();
                string course1 = DropDownList1.SelectedItem.Text;
                saveattendance(date1, status1, course1);

            }
            Label2.Text = " ATTENDANCE IS SAVED.......";
        }

        private void saveattendance(string date1, String status1, String course1)
        {
            string query = "insert into [dbo].[StudentAttendance] (ROLL_NO,STUDENT_NAME,COURSE_NAME,ATTENDANCE_STATUS,DATE) values( " + date1 + " ' , ' " + status1 + " ',' " + course1 + " ',')";

                string myconn = "@Data Source=DESKTOP-9ENSOIH;Initial Catalog=StudentManagementSystem;Integrated Security=True";
            SqlConnection con = new SqlConnection(myconn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }
    }
}