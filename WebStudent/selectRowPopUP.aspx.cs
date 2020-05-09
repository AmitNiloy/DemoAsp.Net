using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStudent
{
    public partial class selectRowPopUP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = GridView1.SelectedRow.Cells[0].Text;
            Label2.Text = GridView1.SelectedRow.Cells[1].Text;
            Label3.Text = GridView1.SelectedRow.Cells[2].Text;
            Label4.Text = GridView1.SelectedRow.Cells[3].Text;
            Label5.Text = GridView1.SelectedRow.Cells[4].Text;
            Label6.Text = GridView1.SelectedRow.Cells[5].Text;
            ModalPopupExtender1.Show();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}