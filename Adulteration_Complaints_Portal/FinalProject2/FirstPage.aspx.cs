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
    public partial class FirstPage : System.Web.UI.Page
    {
        DataOperation db = new DataOperation();
        User user = new User();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string Query = "select count(*) from UsersInfo where Username='" + loginusername.Text + "' and Password='" + loginpw.Text + "'";
            db.CheckIfExist(Query);
            if (db.count == 0)
            {
                Response.Write("<script>alert('Username or Password incorrect')</script>");
               
            }

            else
            {

                Session["user"] = loginusername.Text;
                string query = "Select ID from UsersInfo where Username='" + Session["user"].ToString() + "'";
                SqlConnection con = new SqlConnection(db.connectstr);
                SqlCommand cmd2 = new SqlCommand(query, con);
                con.Open();
                user.getid = (int)cmd2.ExecuteScalar();
                con.Close();
                Session["id"] = user.getid;
                if (loginusername.Text == "Admin")
                {
                    Response.Redirect("~/AdminPanel.aspx");
                }
                else if(loginusername.Text == "Fox123")
                {
                    Response.Redirect("~/AuthorityFirstPage.aspx");
                }
                else
                {

                    Response.Redirect("/UserComplaints.aspx");
                }

            }
        }
    }
}