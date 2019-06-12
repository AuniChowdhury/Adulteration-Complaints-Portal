using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace FinalProject2
{
    public partial class GenerateReport : System.Web.UI.Page
    {
        DataOperation db = new DataOperation();
        User user = new User();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Redirect("FirstPage.aspx");
            }

        }

        protected void savereport_Click(object sender, EventArgs e)
        {
            string dec = decision.SelectedValue.ToString();
            string details = reportdetails.Text.ToString();
            int cid = int.Parse(Request.QueryString["ComplaintID"]);
            SqlConnection con = new SqlConnection(db.connectstr);
            con.Open();
            string query = "select ID from UserComplaints where ComplaintId='" + cid + "'";
           
            SqlCommand cmd = new SqlCommand(query, con);
            int uid = (int)cmd.ExecuteScalar();
            string query2 = "insert into Reports(ComplaintID,ID,Decision,ReportDetails) values ('" + cid + "', '" + uid + "','" + dec + "','" + details + "')";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();

            string query3 = "update UserComplaints set Status='Complete' where ComplaintID='" + cid + "'";
            SqlCommand cmd3 = new SqlCommand(query3, con);
            cmd3.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Report Saved successfully!')</script>");



        }
    }
}