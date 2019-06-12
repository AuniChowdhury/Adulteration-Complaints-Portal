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
    public partial class SecondPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("~/FirstPage.aspx");
            }
            else { 

            string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("getImage", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter ParamID = new SqlParameter()
                    {
                        ParameterName = "@ID",
                        Value = Request.QueryString["ID"]

                    };
                    cmd.Parameters.Add(ParamID);
                    con.Open();
                    byte[] bytes=(byte[])cmd.ExecuteScalar();
                    string strbase64 = Convert.ToBase64String(bytes);
                    imgnid.ImageUrl = "data:Image/png;base64, " + strbase64;

                }

            }

        }





    }
}