using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class YorumDetayAdmin : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        String yorumID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            GetYorum();
        }
        public void GetYorum()
        {
            yorumID = Request.QueryString["yorumId"];
            SqlCommand sqlCommad = new SqlCommand("Select * From Yorumlar Inner Join Yemekler On Yorumlar.YemekId=Yemekler.YemekId where YorumId=@p1 ", sqlBaglanti.Baglanti());
            sqlCommad.Parameters.AddWithValue("@p1", Convert.ToInt32(yorumID));
            SqlDataReader sqlData = sqlCommad.ExecuteReader();
            while (sqlData.Read())
            {
                TxtAdSoyad.Text = sqlData[1].ToString();
                TxtEMail.Text = sqlData[2].ToString();
                TxtIcerik.Text = sqlData[5].ToString();
                TxtYemekAd.Text = sqlData[8].ToString();
            }
        }

        protected void BtnOnay_Click(object sender, EventArgs e)
        {
            yorumID = Request.QueryString["yorumId"];
            SqlCommand sqlCommand = new SqlCommand("Update Yorumlar Set YorumOnay=1, YorumIcerik=@p2 Where YorumId=@p1",sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", Convert.ToInt32(yorumID));
            sqlCommand.Parameters.AddWithValue("@p2", TxtIcerik.Text);
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
            Response.Write("Onaylandı!");
        }
    }
}