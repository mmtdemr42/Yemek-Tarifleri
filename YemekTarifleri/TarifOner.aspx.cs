using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileTarifImage.SaveAs(Server.MapPath("/assets/yemekler/" + FileTarifImage.FileName));
            SqlCommand sqlCommand = new SqlCommand("Insert into Tarifler (TarifAd, TarifMalzeme, TarifYapilis, TarifSahibi, TarifResim, TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@t1", TxtTarifAdi.Text);
            sqlCommand.Parameters.AddWithValue("@t2", TxtTarifMalzeme.Text);
            sqlCommand.Parameters.AddWithValue("@t3", TxtTarif.Text);
            sqlCommand.Parameters.AddWithValue("@t4", TxtTarifÖneren.Text);
            sqlCommand.Parameters.AddWithValue("@t5", FileTarifImage.FileName);
            sqlCommand.Parameters.AddWithValue("@t6", TxtEMail.Text);
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
            Response.Write("Tarifiniz alınmıştır.");

        }
    }
}