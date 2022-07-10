using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("Select * From Categories", sqlBaglanti.Baglanti());
            SqlDataReader oku = sqlCommand.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();



        }
    }
}