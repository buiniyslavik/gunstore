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


        public int CreateMerch(string name, string desc, decimal price, int stock)
        {
            int i;
            using (var cmd = DbConn.CreateCommand())
            {
                cmd.CommandText = "exec @id = ДобавитьТовар @n, @d, @p, @s";
                cmd.Parameters.Add("@n", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@d", SqlDbType.NVarChar).Value = desc;
                cmd.Parameters.Add("@p", SqlDbType.Money).Value = price;
                cmd.Parameters.Add("@s", SqlDbType.Int).Value = stock;
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

        public void AddLicense(License l) //(string number, string holderName, DateTime issueDate, DateTime expiryDate, string issuer, FirearmClass type)
        {
            using (var cmd = DbConn.CreateCommand())
            {
                switch (l.Type)
                {
                    case FirearmClass.SHOTGUN:
                        cmd.CommandText = "exec ДобавитьЛицензиюГс @licnum, @owner, @issued, @expires, @issby";
                        cmd.Parameters.Add("@licnum", SqlDbType.VarChar).Value = l.Number;
                        cmd.Parameters.Add("@owner", SqlDbType.NVarChar).Value = l.HolderName;
                        cmd.Parameters.Add("@issued", SqlDbType.Date).Value = l.IssueDate;
                        cmd.Parameters.Add("@expires", SqlDbType.Date).Value = l.ExpiryDate;
                        cmd.Parameters.Add("@issuer", SqlDbType.VarChar).Value = l.Issuer;
                        cmd.ExecuteNonQuery();

                        break;
                    case FirearmClass.RIFLE:
                        cmd.CommandText = "exec ДобавитьЛицензиюНар @licnum, @owner, @issued, @expires, @issby";
                        cmd.Parameters.Add("@licnum", SqlDbType.VarChar).Value = l.Number;
                        cmd.Parameters.Add("@owner", SqlDbType.NVarChar).Value = l.HolderName;
                        cmd.Parameters.Add("@issued", SqlDbType.Date).Value = l.IssueDate;
                        cmd.Parameters.Add("@expires", SqlDbType.Date).Value = l.ExpiryDate;
                        cmd.Parameters.Add("@issuer", SqlDbType.VarChar).Value = l.Issuer;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.LESSLETHAL:
                        cmd.CommandText = "exec ДобавитьЛицензиюОООП @licnum, @owner, @issued, @expires, @issby";
                        cmd.Parameters.Add("@licnum", SqlDbType.VarChar).Value = l.Number;
                        cmd.Parameters.Add("@owner", SqlDbType.NVarChar).Value = l.HolderName;
                        cmd.Parameters.Add("@issued", SqlDbType.Date).Value = l.IssueDate;
                        cmd.Parameters.Add("@expires", SqlDbType.Date).Value = l.ExpiryDate;
                        cmd.Parameters.Add("@issuer", SqlDbType.VarChar).Value = l.Issuer;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.NOTAGUN:
                        throw new Exception("Разрешаю и так!");
                }

            }
        }

        public void AddFirearmToOrder(int orderId, Firearm gun)
        {
            using (var cmd = DbConn.CreateCommand())
            {
                switch (gun.Type)
                {
                    case FirearmClass.SHOTGUN:
                        cmd.CommandText = "exec ДобавитьГсВЗаказ @gunid, @orderid";
                        cmd.Parameters.Add("@gunid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.Parameters.Add("@orderid", SqlDbType.Int).Value = orderId;                       
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.RIFLE:
                        cmd.CommandText = "exec ДобавитьНарВЗаказ @gunid, @orderid";
                        cmd.Parameters.Add("@gunid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.Parameters.Add("@orderid", SqlDbType.Int).Value = orderId;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.LESSLETHAL:
                        cmd.CommandText = "exec ДобавитьОоопВЗаказ @gunid, @orderid";
                        cmd.Parameters.Add("@gunid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.Parameters.Add("@orderid", SqlDbType.Int).Value = orderId;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.NOTAGUN:
                        throw new Exception("Разрешаю и так!");
                }
            }
        }
        public void BindLicense(License lic, Firearm gun)
        {
            using (var cmd = DbConn.CreateCommand())
            {
                switch (gun.Type)
                {
                    case FirearmClass.SHOTGUN:
                        cmd.CommandText = "exec ОтпуститьОружиеГс @gunid, @licid";
                        cmd.Parameters.Add("@gunid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.Parameters.Add("@licid", SqlDbType.VarChar).Value = lic.Number;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.RIFLE:
                        cmd.CommandText = "exec ОтпуститьОружиеНар @gunid, @licid";
                        cmd.Parameters.Add("@gunid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.Parameters.Add("@licid", SqlDbType.VarChar).Value = lic.Number;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.LESSLETHAL:
                        cmd.CommandText = "exec ОтпуститьОружиеОооп @gunid, @licid";
                        cmd.Parameters.Add("@gunid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.Parameters.Add("@licid", SqlDbType.VarChar).Value = lic.Number;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.NOTAGUN:
                        throw new Exception("Разрешаю и так!");
                }
            }
        }

        public int GetUnusedGun(FirearmClass type)
        {
            int i = -1;
            using (var cmd = DbConn.CreateCommand())
            {
                switch (type)
                {

                    case FirearmClass.SHOTGUN:
                        cmd.CommandText = "exec СвободнаяЕдиницаГс @id output";
                        cmd.Parameters.Add("@id", SqlDbType.Int);
                        cmd.Parameters["@id"].Direction = ParameterDirection.Output;
                        cmd.ExecuteNonQuery();
                        i = Convert.ToInt32(cmd.Parameters["@id"].Value);
                        break;
                    case FirearmClass.RIFLE:
                        cmd.CommandText = "exec СвободнаяЕдиницаНар @id output";
                        cmd.Parameters.Add("@id", SqlDbType.Int);
                        cmd.Parameters["@id"].Direction = ParameterDirection.Output;
                        cmd.ExecuteNonQuery();
                        i = Convert.ToInt32(cmd.Parameters["@id"].Value);
                        break;
                    case FirearmClass.LESSLETHAL:
                        cmd.CommandText = "exec СвободнаяЕдиницаОооп @id output";
                        cmd.Parameters.Add("@id", SqlDbType.Int);
                        cmd.Parameters["@id"].Direction = ParameterDirection.Output;
                        cmd.ExecuteNonQuery();
                        i = Convert.ToInt32(cmd.Parameters["@id"].Value);
                        break;
                    case FirearmClass.NOTAGUN:
                        throw new Exception("Разрешаю и так!");
                }
            }
            return i;
        }
        
        public void BindGunToOrder(int orderId, Firearm gun)
        {
            using (var cmd = DbConn.CreateCommand())
            {
                switch (gun.Type)
                {
                    case FirearmClass.SHOTGUN:
                        cmd.CommandText = "exec ДобавитьГсВЗаказ @oid, @gid";
                        cmd.Parameters.Add("@oid", SqlDbType.Int).Value = orderId;
                        cmd.Parameters.Add("@gid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.RIFLE:
                        cmd.CommandText = "exec ДобавитьНарВЗаказ @oid, @gid";
                        cmd.Parameters.Add("@oid", SqlDbType.Int).Value = orderId;
                        cmd.Parameters.Add("@gid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.LESSLETHAL:
                        cmd.CommandText = "exec ДобавитьОоопВЗаказ @oid, @gid";
                        cmd.Parameters.Add("@oid", SqlDbType.Int).Value = orderId;
                        cmd.Parameters.Add("@gid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.NOTAGUN:
                        throw new Exception("Разрешаю и так!");
                }
            }
        } 
    }
}

