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
    public partial class AdminMessage : System.Web.UI.Page
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
            int userid = (int)Session["id"];
            msg.Text = userid.ToString();
            SqlConnection con = new SqlConnection(db.connectstr);
            string query = "select count(*) from AdminMessages where ID='" + userid + "'";
            db.CheckIfExist(query);
            if(db.count==0)
            {
                msg.Text = "No Messages";
                date.Visible = false;
            }
            else
            {
                string query2 = "select Message from AdminMessages where ID='" + userid + "' ";
                SqlCommand cmd = new SqlCommand(query2, con);
                SqlDataReader reader = null;
                string message="";
                con.Open();
                reader = cmd.ExecuteReader();
                while(reader.Read())
                {
                     message = reader["Message"].ToString();
                }
                msg.Text = message.ToString();
                date.Text = DateTime.Today.ToString("dd-MM-yyyy");


            }

        }
    }
}