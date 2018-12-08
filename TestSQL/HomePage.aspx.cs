using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 
namespace Model
{
    public partial class HomePage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnSign_Click(object sender, EventArgs e)
        {
            if (txtUser.Text != "" && txtPass.Text != "")
            {
                SqlCommand cmd = new SqlCommand("select * from member where member_name='" + txtUser.Text + "'and member_pass='" + txtPass.Text + "'", con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Session["member_id"] = reader["member_id"];
                    Response.RedirectPermanent("Inventory.aspx");
                }
                else
                {
                    Response.Write("<script>alert('ไม่พบข้อมูล');</script>");
                }
                con.Close();
            }

            else if (txtUser.Text == "" || txtPass.Text == "")
            {
                Response.Write("<script>alert('กรุณากรอกข้อมูลให้ครบ');</script>");
               
            }
        }

        protected void register_Click(object sender, EventArgs e)
        {
            SqlCommand RegisterUser = new SqlCommand("select * from member where member_name='" + ReUser.Text + "'", con);
            con.Open();
            SqlDataReader reader = RegisterUser.ExecuteReader();
            if (reader.Read())
            {
                Response.Write("<script>alert('มี Username นี้แล้ว');</script>");
                ReUser.Text = "";
                return;
            }
            con.Close();

            if (ReUser.Text == "" || RePass.Text == "" || ReFirt.Text == "" || ReLast.Text == "" || ReEmail.Text == "" || ReConPass.Text == "")
            {
                Response.Write("<script>alert('กรุณากรอกข้อมูลให้ครบ');</script>");
            }


            else if (ReConPass.Text == RePass.Text)
            {
                DbSQL data = new DbSQL()
                {
                    Member_name = ReUser.Text,
                    Member_pass = RePass.Text,
                    Member_myname = ReFirt.Text,
                    Member_lastname = ReLast.Text,
                    Member_email = ReEmail.Text,
                    Member_point = 0                    
                };
                ConnSQL.insertMember(data);

                ReUser.Text = "";
                ReFirt.Text = "";
                ReLast.Text = "";
                ReEmail.Text = "";
                ReComplete.Visible = true;
                ReComplete.ForeColor = System.Drawing.Color.Green;
                ReComplete.Text = "ลงทะเบียนเรียบร้อย";
                
            }


            else if (RePass.Text != ReConPass.Text)
            {
                Response.Write("<script>alert('กรุณายืนยันรหัสผ่านอีกครั้ง');</script>");

            }

        }
    }
}