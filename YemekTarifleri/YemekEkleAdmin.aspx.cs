using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class YemekEkleAdmin : System.Web.UI.Page
    {
        SqlSinifi sqlBaglanti = new SqlSinifi();
        
        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;
            Panel4.Visible = false;
            GetYemek();
            if (Page.IsPostBack == false)
            {
                GetCategory();
            }
        }

        public void GetYemek()
        {
            SqlCommand sqlComannd = new SqlCommand("Select * From Yemekler", sqlBaglanti.Baglanti());
            SqlDataReader sqlData = sqlComannd.ExecuteReader();
            DataList1.DataSource = sqlData;
            DataList1.DataBind();
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

        public void AddYemek()
        {
            FileImageYemek.SaveAs(Server.MapPath("/Assets/yemekler/" + FileImageYemek.FileName));
            SqlCommand sqlCommand = new SqlCommand("Insert into Yemekler (YemekAd,YemekMalzeme, YemekTarif, CategoryId, YemekResim) values (@p1,@p2,@p3,@p4,@p5)", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", TxtYemekName.Text);
            sqlCommand.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            sqlCommand.Parameters.AddWithValue("@p3", TxtYemekTarif.Text);
            sqlCommand.Parameters.AddWithValue("@p4", DrpDownCategories.SelectedValue);
            sqlCommand.Parameters.AddWithValue("@p5", "~/Assets/yemekler/" + FileImageYemek.FileName);
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
            Response.Write("Başarılı bir şekilde eklendi.");
        }


        public void UpdateCategoryCount()
        {
            SqlCommand sqlCommand = new SqlCommand("Update Categories Set CategoryCount=CategoryCount+1 Where CategoryId=@p1", sqlBaglanti.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", DrpDownCategories.SelectedValue);
            sqlCommand.ExecuteNonQuery();
            sqlBaglanti.Baglanti().Close();
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
            AddYemek();
            UpdateCategoryCount();
        }
    }
}