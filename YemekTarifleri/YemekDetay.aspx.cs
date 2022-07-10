using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        string yemekId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            YemekId();       
            YorumGetir();
        }

        public void YorumGetir()
        {
            SqlCommand sqlCommand = new SqlCommand("Select * From Yorumlar where yemekId=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", yemekId);
            SqlDataReader oku = sqlCommand.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
        }

        public void YemekId()
        {
            yemekId = Request.QueryString["YemekId"];
            SqlCommand sqlCommand = new SqlCommand("Select * From Yemekler where yemekId=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", yemekId);
            SqlDataReader dr = sqlCommand.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[1].ToString();
            }
            sqlBaglanti.Baglanti().Close();
        }

        protected void BtnYorumAdd_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("Insert into Yorumlar (YorumAdSoyad, YorumMail, YorumIcerik, YemekId) values (@t1,@t2,@t3,@t4)", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@t1", TxtAdSoyad.Text);
            sqlCommand.Parameters.AddWithValue("@t2", TxtEMail.Text);
            sqlCommand.Parameters.AddWithValue("@t3", TxtYorumIcerik.Text);
            sqlCommand.Parameters.AddWithValue("@t4", yemekId);
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
            Response.Write("Tarifiniz alınmıştır.");  
        }
    }
}