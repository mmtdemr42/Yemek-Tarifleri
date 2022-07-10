using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class Iletisim : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnMesajGonder_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("Insert into Mesajlar (MesajBaslik, MesajEMail, MesajIcerik) values (@t1,@t2,@t3)", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@t1", TxtMesajKonu.Text);
            sqlCommand.Parameters.AddWithValue("@t2", TxtMesaEMail.Text);
            sqlCommand.Parameters.AddWithValue("@t3", TxtMesajIcerik.Text);
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
            Response.Write("Tarifiniz alınmıştır.");
        }
    }
}