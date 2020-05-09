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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string conn= ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using(SqlConnection con =new SqlConnection(conn))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("AddStudent", con);
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.Add("@StudentName", SqlDbType.VarChar, 20).Value = TextBox1.Text;
                cmd.Parameters.Add("@StudentID", SqlDbType.Int).Value = TextBox2.Text;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 20).Value = TextBox3.Text;
                cmd.Parameters.Add("@Mobile", SqlDbType.VarChar, 20).Value = TextBox4.Text;
                cmd.Parameters.Add("@SemesterID", SqlDbType.NVarChar, 50).Value = DropDownList1.Text;
               //cmd.Parameters.Add("@CreateDate", SqlDbType.DateTime, 20).Value = createdate.Text;
                //cmd.Parameters.Add("@UpdateDate", SqlDbType.DateTime, 20).Value = updatedate.Text;


                
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("course.aspx");
               TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                DropDownList1.ClearSelection();

            }
        }

       
    }
}