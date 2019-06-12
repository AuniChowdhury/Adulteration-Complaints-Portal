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
    public partial class UserComplaints : System.Web.UI.Page
    {
        DataOperation db = new DataOperation();
        User user = new User();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("FirstPage.aspx");
            }


        }

        protected void save_btn_Click(object sender, EventArgs e)
        {

            string username = Session["user"].ToString();
            string area = selectarea.SelectedValue.ToString();
            string category = selectcat.SelectedValue.ToString();
            string complaint = complaintbody.Text.ToString();

            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection(db.connectstr);
                HttpPostedFile postedfile = file.PostedFile;
                string filename = Path.GetFileName(postedfile.FileName);
                string fileExtension = Path.GetExtension(filename);
                Stream stream = postedfile.InputStream;
                BinaryReader binaryreader = new BinaryReader(stream);
                byte[] bytes = binaryreader.ReadBytes((int)stream.Length);
                string query = "Select ID from UsersInfo where Username='" + username + "'";
                SqlCommand cmd2 = new SqlCommand(query, con);
                con.Open();
                user.getid = (int)cmd2.ExecuteScalar();
                con.Close();
               SqlCommand cmd = new SqlCommand("insertcomplaints", con);
                cmd.CommandType = CommandType.StoredProcedure;
                
               
                    SqlParameter ParaID = new SqlParameter()
                    {
                        ParameterName = "@ID",
                        Value = user.getid
                    };
                    cmd.Parameters.Add(ParaID);
                    SqlParameter ParaArea = new SqlParameter()
                    {
                        ParameterName = "@Area",
                        Value = area
                    };
                    cmd.Parameters.Add(ParaArea);
                    SqlParameter ParaCategory = new SqlParameter()
                    {
                        ParameterName = "@Category",
                        Value = category
                    };
                    cmd.Parameters.Add(ParaCategory);
                    SqlParameter ParaComplaints = new SqlParameter()
                    {
                        ParameterName = "@Complaints",
                        Value = complaint
                    };
                    cmd.Parameters.Add(ParaComplaints);
                    SqlParameter ParaStatus = new SqlParameter()
                    {
                        ParameterName = "@Status",
                        Value = "Pending"
                    };
                    cmd.Parameters.Add(ParaStatus);
                    SqlParameter Paraimg = new SqlParameter()
                    {
                        ParameterName = "@ImgData",
                        Value = bytes
                    };
                    cmd.Parameters.Add(Paraimg);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Complaint Sent Successfully!')</script>");


                
              




            }
        }
    }
}
