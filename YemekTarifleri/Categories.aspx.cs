using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class Categories : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            GetCategories();           
        }

        public void GetCategories()
        {
            SqlCommand sqlCommand = new SqlCommand("Select * From Categories", sqlBaglanti.Baglanti());
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            DataList1.DataSource = sqlData;
            DataList1.DataBind();
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

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("Insert into Categories (CategoryName, CategoryImage) values (@p1, @p2)", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", TxtCategoryName.Text);
            sqlCommand.Parameters.AddWithValue("@p2", TxtCategoryIcon.Text);
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
            Response.Write("Kategori Eklenmiştir.");
        }
    }
}