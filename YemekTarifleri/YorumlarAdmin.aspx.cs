using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class YorumlarAdmin : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            GetOnayliYorum();
            GetOnaysiz();
           
        }

        public void GetOnayliYorum()
        {
            SqlCommand sqlCommad = new SqlCommand("Select * From Yorumlar where YorumOnay=1", sqlBaglanti.Baglanti());
            SqlDataReader sqlData = sqlCommad.ExecuteReader();
            DataList1.DataSource = sqlData;
            DataList1.DataBind();
        }

        public void GetOnaysiz()
        {
            SqlCommand sqlCommad = new SqlCommand("Select * From Yorumlar where YorumOnay=0", sqlBaglanti.Baglanti());
            SqlDataReader sqlData = sqlCommad.ExecuteReader();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;

        }
    }
}