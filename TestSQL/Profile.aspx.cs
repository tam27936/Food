using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Model
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {


                if (Session["member_id"] != null)
                {

                    SqlCommand se = new SqlCommand("select * from member where member_id='" + Session["member_id"] + "'", con);
                    con.Open();
                    SqlDataReader reader = se.ExecuteReader();
                    if (reader.Read())
                    {

                        TxtFirtName.Text = reader["Member_myname"].ToString();
                        TxtLastName.Text = reader["Member_lastname"].ToString();
                        TxtEmail.Text = reader["Member_email"].ToString();
                    }
                    con.Close();
                }
            }
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.RedirectPermanent("Inventory.aspx");
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["member_id"]);
            con.Open();
            SqlCommand ed = new SqlCommand("update [member] set member_myname='" + TxtFirtName.Text + "',member_lastname='" + TxtLastName.Text + "', member_email='" + TxtEmail.Text + "' where member_id='" + id + "'", con);
            ed.ExecuteNonQuery();
            con.Close();

            Response.Write(string.Format("<script>alert('บันทึกข้อมูลเสร็จสิ้น');window.location='Inventory.aspx'</script>"));
            
        }
    }
}