using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        String YemekID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("Select * From Yemekler", sqlBaglanti.Baglanti());
            SqlDataReader oku = sqlCommand.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
        }
    }
}