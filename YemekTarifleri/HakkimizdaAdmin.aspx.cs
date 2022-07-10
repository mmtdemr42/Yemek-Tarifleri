using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                GetHakkimizda();
            }
        }

        public void GetHakkimizda()
        {
            SqlCommand sqlCommand = new SqlCommand("Select * From Hakkimizda", sqlBaglanti.Baglanti());
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            while (sqlData.Read())
            {
                TxtHakkimizda.Text = sqlData[0].ToString();
            }
            sqlBaglanti.Baglanti().Close();
        }

        protected void BtnUpdateHakkimizda_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("Update Hakkimizda Set Hakkimizda=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", TxtHakkimizda.Text);
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
            Response.Write("Hakkımızda başarılı bir şekilde güncellendi.");
        }
    }
}