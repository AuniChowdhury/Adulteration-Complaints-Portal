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
    public partial class ViewReport : System.Web.UI.Page
    {

        DataOperation db = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("FirstPage.aspx");
            }
            int cid = int.Parse(Request.QueryString["ComplaintID"]);
            string decision = "";
           string details="";
            SqlDataReader reader = null;
            SqlConnection con = new SqlConnection(db.connectstr);
            string query = "Select Decision,ReportDetails from Reports where ComplaintID='" + cid + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            reader = cmd.ExecuteReader();
            while(reader.Read())
            {
                decision = reader["Decision"].ToString();
                details = reader["ReportDetails"].ToString();
            }
            dec.Text = decision.ToString();
            det.Text = details.ToString();
            con.Close();

            
        }
    }
}