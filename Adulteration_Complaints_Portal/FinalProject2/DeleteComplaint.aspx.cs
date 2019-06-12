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
using System.Net;
using System.Net.Mail;


namespace FinalProject2
{
    public partial class DeleteComplaint : System.Web.UI.Page
    {
        DataOperation db = new DataOperation();
        User user = new FinalProject2.User();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("FirstPage.aspx");
            }
           

        }

        protected void delete_Click(object sender, EventArgs e)
        {
            int cid = int.Parse(Request.QueryString["ComplaintID"]);
            string message = cmp.Text;
            SqlConnection con = new SqlConnection(db.connectstr);
            con.Open();
            string query3 = "select ID from UserComplaints where ComplaintID='"+cid+"'";
            SqlCommand cmd3 = new SqlCommand(query3, con);
            int uid = (int)cmd3.ExecuteScalar();
            string query = "select Email from UsersInfo where  ID = '"+uid+"'";
            string query2 = "delete from UserComplaints where ComplaintID='" + cid + "'";
            
            SqlCommand cmd = new SqlCommand(query, con);
            string dest_email = cmd.ExecuteScalar().ToString();
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();
            con.Close();

            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            // setup Smtp authentication
            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("onnosamee@gmail.com", "19940509");
            client.UseDefaultCredentials = false;
            client.Credentials = credentials;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("onnosamee@gmail.com");
            msg.To.Add(new MailAddress(dest_email.ToString()));

            msg.Subject = "This is a test Email subject";
            msg.IsBodyHtml = true;
            msg.Body = string.Format("<html><head></head><body><b>'"+message+"'</b></body>");

            try
            {
                client.Send(msg);
               
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Message is not sent')</script>");
            }






        }
    }
}