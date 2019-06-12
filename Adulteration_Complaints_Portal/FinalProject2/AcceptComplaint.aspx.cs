using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace FinalProject2
{
    public partial class AcceptComplaint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"]==null)
            {
                Response.Redirect("FirstPage.aspx");
            }
            DataOperation db = new DataOperation();
            SqlConnection con = new SqlConnection(db.connectstr);
            int cid = int.Parse(Request.QueryString["ComplaintID"]);
            string query = "Update UserComplaints set Status='Accepted' where ComplaintID='" + cid + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            string ar = (string)cmd.ExecuteScalar();
            con.Close();
            Response.Redirect("managecomplaints.aspx");

        }
    }
}