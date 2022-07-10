using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class MEsajlarAdmin : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            SqlCommand sqlCommand = new SqlCommand("Select * From Mesajlar",sqlBaglanti.Baglanti());
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            DataList1.DataSource = sqlData;
            DataList1.DataBind();
        }

        protected void BtnOn_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void BtnOff_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}