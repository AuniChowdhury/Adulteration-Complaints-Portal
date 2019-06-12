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
    public partial class WebForm1 : System.Web.UI.Page

    {
        DataOperation db = new DataOperation();
        User user = new FinalProject2.User();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                HttpPostedFile postedfile = file.PostedFile;
                string filename = Path.GetFileName(postedfile.FileName);
                string fileExtension = Path.GetExtension(filename);
                int fileSize = postedfile.ContentLength;
                

                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".bmp" ||
                    fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png")
                {
                    Stream stream = postedfile.InputStream;
                    BinaryReader binaryreader = new BinaryReader(stream);
                    byte[] bytes = binaryreader.ReadBytes((int)stream.Length);
                    user.name = name.Text.ToString();
                    user.email = email.Text.ToString();
                    user.mobile = mob.Text.ToString();
                    user.username = username.Text.ToString();
                    user.password = pw.Text.ToString();

                    name.Text = "";
                    email.Text = "";
                    mob.Text = "";
                    username.Text = "";
                    pw.Text = "";

                   

                    string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        SqlCommand cmd = new SqlCommand("uploadimage", con);
                        cmd.CommandType = CommandType.StoredProcedure;

                        SqlParameter Paramname = new SqlParameter()
                        {
                            ParameterName = "@Name",
                            Value = user.name

                        };
                        cmd.Parameters.Add(Paramname);
                        SqlParameter Paramemail = new SqlParameter()
                        {
                            ParameterName = "@Email",
                            Value = user.email

                        };
                        cmd.Parameters.Add(Paramemail);
                        SqlParameter Parammob = new SqlParameter()
                        {
                            ParameterName = "@Mobile",
                            Value = user.mobile

                        };
                        cmd.Parameters.Add(Parammob);
                        SqlParameter Paramuname = new SqlParameter()
                        {
                            ParameterName = "@Username",
                            Value = user.username

                        };
                        cmd.Parameters.Add(Paramuname);
                        SqlParameter Parampw = new SqlParameter()
                        {
                            ParameterName = "@Password",
                            Value = user.password

                        };
                        cmd.Parameters.Add(Parampw);
                        SqlParameter Paramimgname = new SqlParameter()
                        {
                            ParameterName = "@ImageName",
                            Value = filename

                        };
                        cmd.Parameters.Add(Paramimgname);
                        SqlParameter Paramsize = new SqlParameter()
                        {
                            ParameterName = "@ImageSize",
                            Value = fileSize

                        };
                        cmd.Parameters.Add(Paramsize);
                        SqlParameter Paramdata = new SqlParameter()
                        {
                            ParameterName = "@ImageData",
                            Value = bytes

                        };
                        cmd.Parameters.Add(Paramdata);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                    }

                }
                else
                {
                    Response.Write("<script>alert('You can only upload image files (.jpg, .png, .bmp, .gif')</script>");
                }


                  

                Response.Write("<script>alert('Sign-up successful!')</script>");
            }
        }

       
    }
}
        
    
