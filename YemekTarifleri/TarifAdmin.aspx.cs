using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class TarifAdmin : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            GetTarifOnayli();
            GetTarifOnaysiz();
        }

        public void GetTarifOnayli()
        {
            SqlCommand sqlCommand = new SqlCommand("Select * From Tarifler Where TarifDurum=1", sqlBaglanti.Baglanti());
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            DataList1.DataSource = sqlData;
            DataList1.DataBind();
        }


        public void GetTarifOnaysiz()
        {
            SqlCommand sqlCommand = new SqlCommand("Select * From Tarifler  Where TarifDurum=0", sqlBaglanti.Baglanti());
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            DataList2.DataSource = sqlData;
            DataList2.DataBind();
        }

        protected void BtnOn_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void BtnOff_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void BtnOn0_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void BtnOff0_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}