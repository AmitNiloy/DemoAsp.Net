using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;

namespace WebStudent
{
    public partial class Semester : System.Web.UI.Page
    {
        
        string conn = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

       

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            
                using (SqlConnection con = new SqlConnection(conn))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Semister_SAVE", con);
                    cmd.CommandType = CommandType.StoredProcedure;


                    cmd.Parameters.Add("@SemisterCode", SqlDbType.NVarChar, 50).Value = semesterCode.Text;
                    cmd.Parameters.Add("@Name", SqlDbType.NVarChar, 50).Value = SemesterName.Text;
                    cmd.Parameters.Add("@CreateDate", SqlDbType.DateTime).Value = CreateDate.Text;
                    cmd.Parameters.Add("@UpdateDate", SqlDbType.DateTime).Value = UpdateDate.Text;
                    



                    cmd.ExecuteNonQuery();
                    con.Close();
                    semesterCode.Text = "";
                    SemesterName.Text = "";
                    CreateDate.Text = "";
                    UpdateDate.Text = "";
                Response.Redirect("Home.aspx");

                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}