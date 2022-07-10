using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class TarifDetayAdmin : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        String tarifID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            GetTarifDetay();
        }

        public void GetTarifDetay()
        {
            tarifID = Request.QueryString["tarifId"];
            SqlCommand sqlCommand = new SqlCommand("Select * From Tarifler Where TarifId=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", Convert.ToInt32(tarifID));
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            while (sqlData.Read())
            {
                TxtTarifAdi.Text = sqlData[1].ToString();
                TxtTarifMalzeme.Text = sqlData[2].ToString();
                TxtTarif.Text = sqlData[3].ToString();
                TxtTarifÖneren.Text = sqlData[4].ToString();
                TxtEMail.Text = sqlData[6].ToString();
            }
        }

        protected void BtnTarifOnayla_Click(object sender, EventArgs e)
        {
            tarifID = Request.QueryString["tarifId"];
            SqlCommand sqlCommand = new SqlCommand("Update Tarifler Set TarifDurum=1 Where TarifId=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", Convert.ToInt32(tarifID));
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
            Response.Write("Ürün başarılı bir şekilde onaylandı.");
        }
    }
}