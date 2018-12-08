using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Model
{
    public partial class Inventory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);

        public void ShowGrid()
        {
            string gridtext = "select * from [order]";
            GVMenu.DataSource = ConnSQL.SelectUnit(gridtext);
            GVMenu.DataBind();

        }

        public void RollDropdown()
        {
            string CheckRows = "select order_unit from [order]";
            var a = ConnSQL.SelectUnit(CheckRows);
            for (int i = 0; i < 12; i++)
            {
                var b = Int32.Parse(a.Rows[i]["order_unit"].ToString());
                var DDL = GVMenu.Rows[i].FindControl("DDL_Select") as DropDownList;

                if (b < 5)
                {
                    DDL.Items.Clear();
                    for (int j = 0; j <= b; j++)
                    {
                        DDL.Items.Add(j.ToString());
                    }

                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (! Page.IsPostBack)
            {
                ShowGrid();
                RollDropdown();
            }
            
            if (Session["member_id"] != null)
            {
                SqlCommand se = new SqlCommand("select * from member where member_id='" + Session["member_id"] + "'", con);
                con.Open();
                SqlDataReader reader = se.ExecuteReader();
                if (reader.Read())
                {
                    LbId.Text = reader["Member_id"].ToString();
                    LbFirtName.Text = reader["Member_myname"].ToString();
                    LbLastName.Text = reader["Member_lastname"].ToString();
                    LbPoint.Text = reader["Member_point"].ToString();
                }
                con.Close();
            }
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            Response.RedirectPermanent("Profile.aspx");
        }

        protected void BtnOut_Click(object sender, EventArgs e)
        {
            Response.RedirectPermanent("HomePage.aspx");
        }

        protected void Ordering_Click(object sender, EventArgs e)
        {
            DropDownList[] UnitRows = new DropDownList[GVMenu.Rows.Count];
            int[] OrderNum = new int[GVMenu.Rows.Count];
            for (int i = 0; i < GVMenu.Rows.Count; i++)
            {
                UnitRows[i] = GVMenu.Rows[i].FindControl("DDL_Select") as DropDownList;
                OrderNum[i] = Convert.ToInt32(UnitRows[i].SelectedValue);
            }

            
            string SePeUn = "select order_unit,order_price from [order]";
            var aa1 = ConnSQL.SelectUnit(SePeUn);
            int[] aa3 = new int[aa1.Rows.Count];
            int TotalPrice = 0;
            for (int i = 0; i < aa1.Rows.Count; i++)
            {
                var a4 = Int32.Parse(aa1.Rows[i]["order_price"].ToString());
                var a2 = Convert.ToInt32(UnitRows[i].SelectedValue);
                var z6 = a4 * a2;
                aa3[i] = z6;
                TotalPrice += aa3[i];
            }
            if (TotalPrice == 0)
            {
                Response.Write("<script>alert('กรุณาเลือกรายการอาหาร');</script>");
                return;
            }
            Session["ordernum"] = OrderNum;
            Session["price"] = TotalPrice;
            Response.RedirectPermanent("Delivery.aspx");
        }

    }
}