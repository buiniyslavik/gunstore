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
        {
            Open();
        }
        public static DBController Instance
        {
            get
            {
                if (instance == null)
                    instance = new DBController();
                return instance;
            }
        }
        private SqlConnection DbConn = new SqlConnection("Data Source=CIA;Initial Catalog=Gunstore;Integrated Security=True");//(ConfigurationManager.ConnectionStrings["config"].ConnectionString);

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
            int i;
            using (var cmd = DbConn.CreateCommand())
            {
                cmd.CommandText = "EXEC @Номер = ДобавитьКлиента @ИмяКлиента, @ТелефонКлиента, @СуммаПокупок";
                //cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ИмяКлиента", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@ТелефонКлиента", SqlDbType.VarChar).Value = phone;
                cmd.Parameters.Add("@СуммаПокупок", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@Номер", SqlDbType.Int);
                cmd.Parameters["@Номер"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                i = Convert.ToInt32(cmd.Parameters["@Номер"].Value);
            }
            return i;
        }

        public decimal GetOrderTotal(int orderNumber)
        {
            decimal i;
            using (var cmd = DbConn.CreateCommand())
            {
                cmd.CommandText = "SELECT @sum = СуммаЗаказа FROM Заказы WHERE НомерЗаказа = @НомерЗаказа";
                //cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@НомерЗаказа", SqlDbType.Int).Value = orderNumber;               
                cmd.Parameters.Add("@sum", SqlDbType.Money);
                cmd.Parameters["@sum"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                i = Convert.ToDecimal(cmd.Parameters["@sum"].Value);
            }
            return i;
        }

        public int CreateOrder(int ClientId)
        {
            int i;
            using (var cmd = DbConn.CreateCommand())
            {
                cmd.CommandText = "exec @id = СоздатьЗаказ @НомерКлиента";
                cmd.Parameters.Add("@НомерКлиента", SqlDbType.Int).Value = ClientId;
                cmd.Parameters.Add("@id", SqlDbType.Int);
                cmd.Parameters["@id"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                i = Convert.ToInt32(cmd.Parameters["@id"].Value);
            }
            return i;
        }
        public void AddMerchToOrder(int OrderId, int MerchId, int Quantity)
        {
            using (var cmd = DbConn.CreateCommand())
            {
                cmd.CommandText = "exec ДобавитьТоварВЗаказ @OID, @MID, @Q";
                cmd.Parameters.Add("@OID", SqlDbType.Int).Value = OrderId;
                cmd.Parameters.Add("@MID", SqlDbType.Int).Value = MerchId;
                cmd.Parameters.Add("@Q", SqlDbType.Int).Value = Quantity;               
                cmd.ExecuteNonQuery();    
            }
        }
    }
}
