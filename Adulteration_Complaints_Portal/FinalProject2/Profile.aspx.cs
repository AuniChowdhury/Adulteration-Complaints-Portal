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
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"]==null)
            {
                Response.Redirect("FirstPage.aspx");
            }

            DataOperation db = new DataOperation();
            User user = new User();
            string uname = Session["user"].ToString();
            string name = "";
            string email = "";
            string mobile = "";
            string status = "";
            SqlConnection con = new SqlConnection(db.connectstr);
            string query = "Select ID from UsersInfo where Username='" + uname + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            user.getid = (int)cmd.ExecuteScalar();
            con.Close();
            Session["id"] = user.getid;
            string query2 = "Select Name, Email,Mobile from UsersInfo where ID='" + user.getid + "' ";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            SqlDataReader reader = null;
            con.Open();
            reader = cmd2.ExecuteReader();
            
            while(reader.Read())
            {
                name = reader["Name"].ToString();
                email = reader["Email"].ToString();
                mobile = reader["Mobile"].ToString();
            }
            con.Close();
            Name.Text = name;
            Email.Text = email;
            Mobile.Text = mobile;
            Username.Text = uname;

            string query3 = "Select ComplaintID, Status from UserComplaints where ID='"+user.getid+"'";
            complaints.DataSource = db.GetDataTable(query3);
            complaints.DataBind();
            con.Open();
            SqlDataReader reader2 = null;
            SqlCommand cmd3 = new SqlCommand(query3, con);
            reader = cmd3.ExecuteReader();
            while(reader.Read())
            {
                status = reader["Status"].ToString();

            }

            if(status=="Pending" || status=="Accepted" || status=="Processing")
            {
                complaints.Columns[3].Visible = false;
            }
            else
            {
                complaints.Columns[3].Visible = true;

            }
        }

       
    }
}