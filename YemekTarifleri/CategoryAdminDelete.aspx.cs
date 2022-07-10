using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class CategoryAdminDelete : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        String CategoryID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            GetCategory();
        }

        public void GetCategory()
        {
            CategoryID = Request.QueryString["CategoryId"];
            SqlCommand sqlCommand = new SqlCommand("Select * From Categories Where CategoryId=@p1",sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", Convert.ToInt32(CategoryID));
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            while (sqlData.Read())
            {
                TxtCategoryName.Text = sqlData[1].ToString();
                TxtCategoryCount.Text = Convert.ToInt16(sqlData[2]).ToString();
            }

        }

        protected void BtnKategoriUpdate_Click(object sender, EventArgs e)
        {
            CategoryID = Request.QueryString["CategoryId"];
            SqlCommand sqlCommand = new SqlCommand("Delete From Categories Where CategoryId=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", Convert.ToInt32(CategoryID));
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
        }
    }
}