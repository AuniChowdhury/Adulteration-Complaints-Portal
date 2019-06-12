using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace FinalProject2
{
    public partial class ProcessingComplaint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("FirstPage.aspx");
            }
            DataOperation db = new DataOperation();
            User user = new User();
            string query = "select ID,ComplaintID from UserComplaints where Status='Processing'";
            comprocess.DataSource = db.GetDataTable(query);
            comprocess.DataBind();

        }
    }
}