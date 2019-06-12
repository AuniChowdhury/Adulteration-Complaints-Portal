using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject2
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        DataOperation db = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("FirstPage.aspx");
            }
            string query = "select ID,Name,Email,Mobile from UsersInfo where ID>1";
            GridView1.DataSource = db.GetDataTable(query);
            GridView1.DataBind();

        }
    }
}