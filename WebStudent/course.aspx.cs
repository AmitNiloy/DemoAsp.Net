using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebStudent
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(conn))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("webCourse", con);
                cmd.CommandType = CommandType.StoredProcedure;


                //cmd.Parameters.Add("@StudentName", SqlDbType.VarChar, 20).Value = TextBox1.Text;
                   cmd.Parameters.Add("@StudentID", SqlDbType.Int).Value = DropDownStuID.Text;
                //md.Parameters.Add("@CourseName", SqlDbType.VarChar, 20).Value = CourseNameBox.Text;
                cmd.Parameters.Add("@CourseID", SqlDbType.Int).Value = CourseIDBox.Text;
                cmd.Parameters.Add("@CourseCredit", SqlDbType.Float).Value = CreditBox.Text;
                cmd.Parameters.Add("@CourseName", SqlDbType.VarChar, 20).Value = CourseNameBox.Text;
                cmd.Parameters.Add("@TotalMarks", SqlDbType.Float).Value = MarksBox.Text;
                cmd.Parameters.Add("@ObtainedMarks", SqlDbType.Float).Value = obtainedBox.Text;
                //cmd.Parameters.Add("@CreateDate", SqlDbType.DateTime, 20).Value = createdate.Text;
                //cmd.Parameters.Add("@UpdateDate", SqlDbType.DateTime, 20).Value = updatedate.Text;



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("gridview.aspx");
                // CourseStudBox.Text = "";
                CourseIDBox.Text = "";
                CourseNameBox.Text = "";
                MarksBox.Text = "";
                obtainedBox.Text = "";
                CreditBox.Text = "";
                //md.ExecuteNonQuery();
            }
        }
    }
}