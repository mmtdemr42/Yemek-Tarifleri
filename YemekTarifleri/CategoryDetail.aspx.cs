using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class CategoryDetail : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        String CategoryId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
             CategoryYemekGetir();

        }

        public void CategoryYemekGetir()
        {
            CategoryId = Request.QueryString["CategoryId"];
            SqlCommand sqlCommand = new SqlCommand("Select * From Yemekler where CategoryId=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", CategoryId);
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            DataList2.DataSource = sqlData;
            DataList2.DataBind();
        }
    }
}