using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        String mesajID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           
            GetMesajDetay();
        }
        public void GetMesajDetay()
        {
            mesajID = Request.QueryString["MesajId"];
            SqlCommand sqlCommand = new SqlCommand("Select * From Mesajlar where MesajId=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", Convert.ToInt32(mesajID));
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            while (sqlData.Read())
            {
                TxtMesajGonderen.Text = sqlData[1].ToString();
                TxtMesajKonu.Text = sqlData[2].ToString();
                TxtMesaEMail.Text = sqlData[3].ToString();
                TxtMesajIcerik.Text = sqlData[4].ToString();
            }
            sqlBaglanti.Baglanti().Close();
            
        }
    }
}