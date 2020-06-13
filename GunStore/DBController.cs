using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;

namespace GunStore
{
    public class DBController
    {
        public SqlConnection DbConn = new SqlConnection();
        private string connString = ConfigurationManager.ConnectionStrings[0].ConnectionString; 

        public void Open()
        {
            DbConn.Open();
        }
        public void Close()
        {
            DbConn.Close();
        }
    }
}
