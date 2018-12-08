using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace Model
{
    public class ConnSQL
    {
        public static DataSet getclass(string cmdtext)
        { 
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString);
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand(cmdtext, conn);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(ds);
            return ds;
        }

        public static DataTable SelectUnit(string cmdtext)
        {
            
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString);
            DataTable ds = new DataTable();
            SqlCommand cmd = new SqlCommand(cmdtext, conn);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(ds);
            return ds;
        }

        public static void updatePoint(int point,int id)
        {
            string cmdtext = "update [member] set member_point='" + point + "' where member_id='" + id + "'";
            SelectUnit(cmdtext);
        }

        public static DataSet UpdateUnit(string id,int unit)
        {
            string cmdtext = "update [order] set order_unit='"+unit+"' where order_id='"+id+"' ";
            return getclass(cmdtext);
        }

        public static void insertMember(DbSQL data)
        {
            string cmdTextRaw = "insert into [member] values ('{0}', '{1}', '{2}', '{3}', '{4}','{5}')";
            string cmdText = string.Format(cmdTextRaw,data.Member_name,data.Member_pass,data.Member_myname,data.Member_lastname,data.Member_email,data.Member_point);
            dataBase(cmdText);
        }

        public static void insertOrder(DbSQL data)
        {
            string cmdTextRaw = "insert into [delivery_details] values ('{0}', '{1}', '{2}', '{3}', '{4}',getdate())";
            string cmdText = string.Format(cmdTextRaw, data.dd_idUser, data.dd_order, data.dd_totalPrice, data.dd_address, data.dd_usePoint);
            dataBase(cmdText);
        }

        public static void dataBase(string cmdText)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString);
            SqlCommand cmd = new SqlCommand(cmdText, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            conn.Dispose();
        }
    }

    public class DbSQL
    {
        public string Member_name { get; set; }
        public string Member_pass { get; set; }
        public string Member_myname { get; set; }
        public string Member_lastname { get; set; }
        public string Member_email { get; set; }
        public int Member_point { get; set; }
        public int dd_idUser { get; set; }
        public string dd_order { get; set; }
        public string dd_totalPrice { get; set; }
        public string dd_address { get; set; }
        public string dd_usePoint { get; set; }

    }
}