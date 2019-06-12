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
    public partial class ViewComplaints : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("FirstPage.aspx");
            }

            DataOperation db = new DataOperation();
            User user = new User();
            string complaintid = Request.QueryString["ComplaintID"];
            int cid = int.Parse(complaintid);
            int id = 0;
            string area = "";
            string cat = "";
            string com = "";
            byte[] bytes = null;

            SqlConnection con = new SqlConnection(db.connectstr);
            string query = "Select ID,Area, Category,Complaints,ImgData from UserComplaints where ComplaintID='" + cid + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = null;
            con.Open();
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                id = (int)reader["ID"];
                area = reader["Area"].ToString();
                cat = reader["Category"].ToString();
                com = reader["Complaints"].ToString();
                bytes = (byte[])(reader["ImgData"]);
            }
            uid.Text = id.ToString();
            cidlabel.Text = cid.ToString();
            carea.Text = area.ToString();
            ccategory.Text = cat.ToString();
            complaint.Text = com.ToString();
            string strbase64 = Convert.ToBase64String(bytes);
            img.ImageUrl = "data:Image/png;base64, " + strbase64;

            con.Close();

        }
    }
}