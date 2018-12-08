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
    public partial class Delivery : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            if (! Page.IsPostBack)
            {
                GVOder();
            }
            
            Label[] GVLabel = new Label[GVList.Rows.Count];
            int[] OrderNum = (int[])Session["ordernum"];
            for (int i = 0; i < GVList.Rows.Count; i++)
            {
                GVLabel[i] = GVList.Rows[i].FindControl("LB") as Label;
                GVLabel[i].Text = Convert.ToString(OrderNum[i]);
                if (GVLabel[i].Text == "0")
                {
                    GVList.Rows[i].Visible = false;
                }
            }

            TxtPrice.Text = Session["price"].ToString();
            string xxxx = (Convert.ToInt32(TxtPrice.Text) + 50).ToString();
            TxtCharge.Text = xxxx;
            TxtTotalPrice.Text = xxxx;
            SqlCommand se = new SqlCommand("select * from [member] where member_id='" + Session["member_id"] + "'", con);
            con.Open();
            SqlDataReader reader = se.ExecuteReader();
            if (reader.Read())
            {
                LBPoint.Text = reader["Member_point"].ToString();
            }
            con.Close();
        }

        public void GVOder()
        {
            string gridtext = "select order_id,order_name from [order]";
            GVList.DataSource = ConnSQL.SelectUnit(gridtext);
            GVList.DataBind();
        }

        protected void BTConfirm_Click(object sender, EventArgs e)
        {
            string[] IdFood = { "0001", "0002", "0003", "0004", "0005", "0006", "0007", "0008", "0009", "0010", "0011", "0012" };
            DataSet[] aa2 = new DataSet[GVList.Rows.Count];
            var aa1 = ConnSQL.SelectUnit("select * from [order]");
            int[] a22 = (int[])Session["ordernum"];
            string OrderDelivery = "";
            for (int i = 0; i < GVList.Rows.Count; i++)
            {
                var a1 = Int32.Parse(aa1.Rows[i]["order_unit"].ToString());
                var a2 = a22[i];
                var a3 = a1 - a2;
                aa2[i] = ConnSQL.UpdateUnit(IdFood[i], a3);
                OrderDelivery += IdFood[i] + '-' + a22[i] + ',';
            }

            if (TxtPoint.Text == "")
            {
                TxtPoint.Text = "0";
            }

            int idNum = Convert.ToInt32(Session["member_id"]);
            int point2 = (Convert.ToInt32(TxtTotalPrice.Text) - 50) / 50;
            int point = (Convert.ToInt32(LBPoint.Text) - Convert.ToInt32(TxtPoint.Text)) + point2;

            if (TxtAddress.Text != "")
            {
                DbSQL data = new DbSQL()
                {
                    dd_idUser = (int)Session["member_id"],
                    dd_order = OrderDelivery,
                    dd_totalPrice = TxtTotalPrice.Text,
                    dd_address = TxtAddress.Text,
                    dd_usePoint = TxtPoint.Text
                };
                ConnSQL.insertOrder(data);
                ConnSQL.updatePoint(point, idNum);
                Response.Write("<script>alert('ทำรายการเรียบร้อย');window.location='Inventory.aspx'</script>");
            }

            else if (TxtAddress.Text == "")
            {
                Response.Write("<script>alert('กรุณาใส่ที่อยู่ในการจัดส่ง');</script>");
                return;
            }
        }

        protected void BtCancel_Click(object sender, EventArgs e)
        {
            Response.RedirectPermanent("Inventory.aspx");
        }

        protected void TxtPoint_TextChanged(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(TxtPoint.Text);

            if (a > Convert.ToUInt32(LBPoint.Text) || a > Convert.ToInt32(TxtCharge.Text))
            {
                Response.Write("<script>alert('กรุณาใส่ Point ให้ถูกต้อง');</script>");
                TxtPoint.Text = "";
                return;
            }
            TxtTotalPrice.Text = (Convert.ToInt32(TxtCharge.Text) - Convert.ToInt32(TxtPoint.Text)).ToString();
        }
    }
}