using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class YemekAdminUpdate : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        String yemekID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                GetCategory();
            }
            GetByYemek();

        }

        public void GetCategory()
        {
            SqlCommand sqlCommand = new SqlCommand("Select * From Categories", sqlBaglanti.Baglanti());
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            DrpDownCategories.DataTextField = "CategoryName";
            DrpDownCategories.DataValueField = "CategoryId";
            DrpDownCategories.DataSource = sqlData;
            DrpDownCategories.DataBind();
        }

        public void GetByYemek()
        {
            yemekID = Request.QueryString["YemekId"];
            SqlCommand sqlCommand = new SqlCommand("Select * From Yemekler Where YemekId=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1",Convert.ToInt32(yemekID));
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            while (sqlData.Read())
            {
                TxtYemekName.Text = sqlData[1].ToString();
                TxtMalzemeler.Text = sqlData[2].ToString();
                TxtYemekTarif.Text = sqlData[3].ToString();
                DrpDownCategories.DataTextField = sqlData[4].ToString();
            }
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            UpdateYemek();
        }

        public void UpdateYemek()
        {
            yemekID = Request.QueryString["YemekId"];
            FileYemekImage.SaveAs(Server.MapPath("/Assets/yemekler/" + FileYemekImage.FileName));
            SqlCommand sqlCommand = new SqlCommand("Update Yemekler Set YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, CategoryId=@p4, YemekResim=@p6 Where YemekId=@p5", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", TxtYemekName.Text);
            sqlCommand.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            sqlCommand.Parameters.AddWithValue("@p3", TxtYemekTarif.Text);
            sqlCommand.Parameters.AddWithValue("@p4", DrpDownCategories.SelectedValue);
            sqlCommand.Parameters.AddWithValue("@p5", Convert.ToInt32(yemekID));
            sqlCommand.Parameters.AddWithValue("@p6", "~/Assets/yemekler/"+FileYemekImage.FileName);
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
            Response.Write("Güncelleme işlemi başarılı bir şekilde yapıldı");
        }

        protected void BtnGununYemek_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("Update Yemekler Set GununYemek=0", sqlBaglanti.Baglanti());
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();

            yemekID = Request.QueryString["YemekId"];
            SqlCommand sqlCommand2 = new SqlCommand("Update Yemekler Set GununYemek=1 Where YemekId=@p1", sqlBaglanti.Baglanti());
            sqlCommand2.Parameters.AddWithValue("@p1", Convert.ToInt32(yemekID));
            sqlCommand2.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
            Response.Write("Günün yemeği değiştirldi.");
        }
    }
}