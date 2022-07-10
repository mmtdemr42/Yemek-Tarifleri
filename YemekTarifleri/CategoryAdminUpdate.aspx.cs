using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class CategoryUpdate : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        String CategoryID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            GetCategoryDetail();

        }

        protected void BtnKategoriUpdate_Click(object sender, EventArgs e)
        {
            CategoryID = Request.QueryString["CategoryId"];
            SqlCommand sqlCommand = new SqlCommand("Update Categories Set CategoryName=@p1, CategoryCount=@p2, CategoryImage=@p3 Where CategoryId=@p4", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", TxtCategoryName.Text);
            sqlCommand.Parameters.AddWithValue("@p2", TxtCategoryCount.Text);
            sqlCommand.Parameters.AddWithValue("@p3", FileImage.FileName);
            sqlCommand.Parameters.AddWithValue("@p4", Convert.ToInt32(CategoryID));
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
            Response.Write("Güncelleme başarılı.");
        }

        public void GetCategoryDetail()
        {
            CategoryID = Request.QueryString["CategoryId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand sqlCommand = new SqlCommand("Select * From Categories Where CategoryId=@p1", sqlBaglanti.Baglanti());
                sqlCommand.Parameters.AddWithValue("@p1", Convert.ToInt32(CategoryID));
                SqlDataReader sqlData = sqlCommand.ExecuteReader();
                while (sqlData.Read())
                {
                    TxtCategoryName.Text = sqlData[1].ToString();
                    TxtCategoryCount.Text = Convert.ToInt16(sqlData[2]).ToString();
                }
            }
        }
    }
}