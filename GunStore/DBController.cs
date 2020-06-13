using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;
using System.Data;

namespace GunStore
{
    public class DBController
    {
        private static DBController instance;
        private DBController()
        { }
        public static DBController Instance
        {
            get
            {
                if (instance == null)
                    instance = new DBController();
                return instance;
            }
        }
        private SqlConnection DbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["config"].ConnectionString);

        public void Open()
        {
            DbConn.Open();
        }
        public void Close()
        {
            DbConn.Close();
        }
         public int AddCustomer(string name, string phone)
        {
            var cmd = DbConn.CreateCommand();
            cmd.CommandText = "EXEC ДобавитьКлиента @ИмяКлиента, @ТелефонКлиента, @Номер OUTPUT";
            cmd.Parameters.Add("@ИмяКлиента", SqlDbType.VarChar).Value = name;
            cmd.Parameters.Add("@ТелефонКлиента", SqlDbType.VarChar).Value = phone;
            cmd.Parameters.Add("@Номер", SqlDbType.Int);
            cmd.Parameters["@Номер"].Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            return Convert.ToInt32(cmd.Parameters["@Номер"].Value);
        }
    }
}
