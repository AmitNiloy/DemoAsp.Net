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
    public partial class MarksForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Gridview1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete Row")
            {
                int student;
                student = Convert.ToInt32(e.CommandArgument.ToString());
                String StudentID = GridView1.Rows[student].Cells[1].Text;
                deleterowdata(StudentID);
            }
        }

        private void deleterowdata(String StudentID)
        {
            String mycon = "Data Source=.;Initial Catalog=webDB;Integrated Security=True";
            String deletedata = "delete from studentReg where StudentID=" + Convert.ToInt32(StudentID);
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = deletedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();

            String mycon1 = "Data Source=.;Initial Catalog=webDB;Integrated Security=True";
            String deletedata1 = "delete from Course where StudentID=" + Convert.ToInt32(StudentID);
            SqlConnection con1 = new SqlConnection(mycon1);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = deletedata1;
            cmd1.Connection = con1;
            cmd1.ExecuteNonQuery();
            con1.Close();
            Label1.Text = "Record with Student ID " + StudentID + " has been deleted successfully";
            GridView1.DataBind();
            Label1.Text = "";
        }



    }
}