using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace FinalProject2
{
    public class DataOperation
    {
        public int count;
        public string connectstr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        public int ExecuteQuery(string query)
        {

            SqlConnection conn = new SqlConnection(connectstr);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand(query, conn);

            try
            {
                cmd.ExecuteNonQuery();
                return 1;

            }
            catch (SqlException ex)
            {
                return 0;
            }

        }
        public void CheckIfExist(string query)
        {
            SqlConnection conn = new SqlConnection(connectstr);

            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand(query, conn);

            try
            {

                count = (int)cmd.ExecuteScalar();


            }
            catch (SqlException ex)
            {

            }


        }
        public DataTable GetDataTable(string query)
        {
            SqlConnection conn = new SqlConnection(connectstr);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

    }
}