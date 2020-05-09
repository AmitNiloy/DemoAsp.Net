using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebStudent
{
    public partial class searchData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String constring = "Data Source=.;Initial Catalog=webDB;Integrated Security=True";
            SqlConnection sqlcon = new SqlConnection(constring);
            String pname = "studentData"; ;
            sqlcon.Open();
            SqlCommand com = new SqlCommand(pname, sqlcon);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@StudentID", Convert.ToInt32(TextBox1.Text));
            SqlDataReader dr;
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                TextBox2.Text = dr["StudentName"].ToString();
                TextBox3.Text = dr["Email"].ToString();
                TextBox4.Text = dr["Mobile"].ToString();
                TextBox5.Text = dr["SemesterID"].ToString();
                Label1.Text = "Data Has Been Found";
            }
            else
            {
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                Label1.Text = "Data Has Not Been Found";
            }


            sqlcon.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("selectRowPopUP.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}