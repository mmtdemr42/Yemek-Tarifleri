using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace YemekTarifleri
{
    public class SqlSinifi
    {
        public SqlConnection Baglanti()
        {
            SqlConnection _sqlConnection = new SqlConnection(@"server = (localdb)\mssqllocaldb;initial catalog=Dbo_yemektarifi;integrated security=true");
            
                if (_sqlConnection.State == ConnectionState.Closed)
                {
                    _sqlConnection.Open();
                }
            return _sqlConnection;
        }
    }
}