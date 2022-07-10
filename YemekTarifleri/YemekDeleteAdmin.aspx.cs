using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class YemekDeleteAdmin : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        String yemekID = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                GetCategory();
            }
            GetByYemekler();
        }

        public void GetCategory()
        {
            SqlCommand sqlCommand = new SqlCommand("Select * From Categories", sqlBaglanti.Baglanti());
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            DrpDownCategories.DataTextField = "CategoryName";
            DrpDownCategories.DataValueField = "CategoryId";
            DrpDownCategories.DataSource = sqlData;
            DrpDownCategories.DataBind();
        }

        public void GetByYemekler()
        {
            yemekID = Request.QueryString["YemekId"];
            SqlCommand sqlCommand = new SqlCommand("Select * From Yemekler Where YemekId=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", Convert.ToInt32(yemekID));
            SqlDataReader sqlData = sqlCommand.ExecuteReader();
            while (sqlData.Read()) 
            {
                TxtYemekName.Text = sqlData[1].ToString();
                TxtMalzemeler.Text = sqlData[2].ToString();
                TxtYemekTarif.Text = sqlData[3].ToString();
                DrpDownCategories.DataTextField = sqlData[4].ToString();
            }
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            DeleteYemek();
        }

        public void DeleteYemek()
        {
            yemekID = Request.QueryString["YemekId"];
            SqlCommand sqlCommand = new SqlCommand("Delete From Yemekler Where YemekId=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", Convert.ToInt32(yemekID));
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
            UpdateCategoryCount();
            Response.Write("Silme işlemi başarılı bir şekilde gerçekleştirildi.");
        }

        public void UpdateCategoryCount()
        {
            SqlCommand sqlCommand = new SqlCommand("Update Categories Set CategoryCount=CategoryCount-1 Where CategoryId=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", DrpDownCategories.SelectedValue);
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
        }
    }

}