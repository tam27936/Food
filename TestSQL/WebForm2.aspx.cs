using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Model
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int aaa = GridView1.Rows.Count;
            string[] s = new string[aaa];
            for (int i = 0; i < aaa; i++)
            {
                var ddl = GridView1.Rows[i].FindControl("DropDownList1") as DropDownList;
                

            }
            //var ddl = GridView1.Rows[0].FindControl("DropDownList1") as DropDownList;
            //TextBox1.Text = ddl.SelectedItem.Value;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}