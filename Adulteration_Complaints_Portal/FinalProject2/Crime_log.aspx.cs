using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FinalProject2

{
    public partial class Crime_log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataOperation db = new DataOperation();


        protected void crime_search_Click(object sender, EventArgs e)
        {
            string area = crime_area.SelectedValue.ToString();
            string query = "select UserComplaints.ComplaintID,Category,Complaints,Decision from UserComplaints,Reports where Area='" + area + "' and UserComplaints.ComplaintID=Reports.ComplaintID";
            crimes.DataSource = db.GetDataTable(query);
            crimes.DataBind();


        }
    }
}