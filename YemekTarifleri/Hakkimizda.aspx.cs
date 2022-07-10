using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("Select * From Hakkimizda", sqlBaglanti.Baglanti());
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            DataList2.DataSource = sqlData;
            DataList2.DataBind();

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}