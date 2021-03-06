﻿using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GunStore
{
    public class DBController
    {
        private static DBController _instance;
        private DBController()
        {
           
        }
        public static DBController Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new DBController();
                return _instance;
            }
        }
        private SqlConnection _conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GunStore.Properties.Settings.GunstoreConnectionString"].ConnectionString);

        private void openConn()
        {
            _conn.Open();
        }
        private void closeConn()
        {
            _conn.Close();
        }
        public int AddCustomer(string name, string phone)
        {
            openConn();
            int i;
            using (var cmd = _conn.CreateCommand())
            {
                cmd.CommandText = "EXEC @Номер = ДобавитьКлиента @ИмяКлиента, @ТелефонКлиента, @СуммаПокупок";
                cmd.Parameters.Add("@ИмяКлиента", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@ТелефонКлиента", SqlDbType.VarChar).Value = phone;
                cmd.Parameters.Add("@СуммаПокупок", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@Номер", SqlDbType.Int);
                cmd.Parameters["@Номер"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                i = Convert.ToInt32(cmd.Parameters["@Номер"].Value);
            }
            closeConn();
            return i;
        }

        public decimal GetOrderTotal(int orderNumber)
        {
            openConn();
            decimal i;
            using (var cmd = _conn.CreateCommand())
            {
                cmd.CommandText = "SELECT @sum = СуммаЗаказа FROM Заказы WHERE НомерЗаказа = @НомерЗаказа";
                cmd.Parameters.Add("@НомерЗаказа", SqlDbType.Int).Value = orderNumber;
                cmd.Parameters.Add("@sum", SqlDbType.Money);
                cmd.Parameters["@sum"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                i = Convert.ToDecimal(cmd.Parameters["@sum"].Value);
            }
            closeConn();
            return i;
        }

        public int CreateOrder(int ClientId)
        {
            openConn();
            int i;
            using (var cmd = _conn.CreateCommand())
            {
                cmd.CommandText = "exec @id = СоздатьЗаказ @НомерКлиента";
                cmd.Parameters.Add("@НомерКлиента", SqlDbType.Int).Value = ClientId;
                cmd.Parameters.Add("@id", SqlDbType.Int);
                cmd.Parameters["@id"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                i = Convert.ToInt32(cmd.Parameters["@id"].Value);
            }            
            closeConn();
            return i;
        }


        public int CreateMerch(string name, string desc, decimal price, int stock)
        {
            openConn();
            int i;
            using (var cmd = _conn.CreateCommand())
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
            closeConn();
            return i;
        }

        public void AddMerchToOrder(int OrderId, int MerchId, int Quantity)
        {
            openConn();
            using (var cmd = _conn.CreateCommand())
            {
                cmd.CommandText = "exec ДобавитьТоварВЗаказ @OID, @MID, @Q";
                cmd.Parameters.Add("@OID", SqlDbType.Int).Value = OrderId;
                cmd.Parameters.Add("@MID", SqlDbType.Int).Value = MerchId;
                cmd.Parameters.Add("@Q", SqlDbType.Int).Value = Quantity;
                cmd.ExecuteNonQuery();
            }
            closeConn();
        }

        public void AddLicense(License l) 
        {
            openConn();
            using (var cmd = _conn.CreateCommand())
            {
                switch (l.Type)
                {
                    case FirearmClass.Shotgun:
                        cmd.CommandText = "exec ДобавитьЛицензиюГс @licnum, @owner, @issued, @expires, @issuer";
                        cmd.Parameters.Add("@licnum", SqlDbType.VarChar).Value = l.Number;
                        cmd.Parameters.Add("@owner", SqlDbType.NVarChar).Value = l.HolderName;
                        cmd.Parameters.Add("@issued", SqlDbType.Date).Value = l.IssueDate;
                        cmd.Parameters.Add("@expires", SqlDbType.Date).Value = l.ExpiryDate;
                        cmd.Parameters.Add("@issuer", SqlDbType.VarChar).Value = l.Issuer;
                        cmd.ExecuteNonQuery();

                        break;
                    case FirearmClass.Rifle:
                        cmd.CommandText = "exec ДобавитьЛицензиюНар @licnum, @owner, @issued, @expires, @issuer";
                        cmd.Parameters.Add("@licnum", SqlDbType.VarChar).Value = l.Number;
                        cmd.Parameters.Add("@owner", SqlDbType.NVarChar).Value = l.HolderName;
                        cmd.Parameters.Add("@issued", SqlDbType.Date).Value = l.IssueDate;
                        cmd.Parameters.Add("@expires", SqlDbType.Date).Value = l.ExpiryDate;
                        cmd.Parameters.Add("@issuer", SqlDbType.VarChar).Value = l.Issuer;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.LessLethal:
                        cmd.CommandText = "exec ДобавитьЛицензиюОООП @licnum, @owner, @issued, @expires, @issuer";
                        cmd.Parameters.Add("@licnum", SqlDbType.VarChar).Value = l.Number;
                        cmd.Parameters.Add("@owner", SqlDbType.NVarChar).Value = l.HolderName;
                        cmd.Parameters.Add("@issued", SqlDbType.Date).Value = l.IssueDate;
                        cmd.Parameters.Add("@expires", SqlDbType.Date).Value = l.ExpiryDate;
                        cmd.Parameters.Add("@issuer", SqlDbType.VarChar).Value = l.Issuer;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.NotAGun:
                        throw new Exception("Разрешаю и так!");
                }

            }
            closeConn();
        }

        public void AddFirearmToOrder(int orderId, Firearm gun)
        {
            openConn();
            using (var cmd = _conn.CreateCommand())
            {
                switch (gun.Type)
                {
                    case FirearmClass.Shotgun:
                        cmd.CommandText = "exec ДобавитьГсВЗаказ @gunid, @orderid";
                        cmd.Parameters.Add("@gunid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.Parameters.Add("@orderid", SqlDbType.Int).Value = orderId;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.Rifle:
                        cmd.CommandText = "exec ДобавитьНарВЗаказ @gunid, @orderid";
                        cmd.Parameters.Add("@gunid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.Parameters.Add("@orderid", SqlDbType.Int).Value = orderId;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.LessLethal:
                        cmd.CommandText = "exec ДобавитьОоопВЗаказ @gunid, @orderid";
                        cmd.Parameters.Add("@gunid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.Parameters.Add("@orderid", SqlDbType.Int).Value = orderId;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.NotAGun:
                        throw new Exception("Разрешаю и так!");
                }
            }
            closeConn();
        }
        public void BindLicense(License lic, Firearm gun)
        {
            openConn();
            using (var cmd = _conn.CreateCommand())
            {
                switch (gun.Type)
                {
                    case FirearmClass.Shotgun:
                        cmd.CommandText = "exec ОтпуститьОружиеГс @gunid, @licid";
                        cmd.Parameters.Add("@gunid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.Parameters.Add("@licid", SqlDbType.VarChar).Value = lic.Number;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.Rifle:
                        cmd.CommandText = "exec ОтпуститьОружиеНар @gunid, @licid";
                        cmd.Parameters.Add("@gunid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.Parameters.Add("@licid", SqlDbType.VarChar).Value = lic.Number;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.LessLethal:
                        cmd.CommandText = "exec ОтпуститьОружиеОооп @gunid, @licid";
                        cmd.Parameters.Add("@gunid", SqlDbType.Int).Value = gun.PieceId;
                        cmd.Parameters.Add("@licid", SqlDbType.VarChar).Value = lic.Number;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.NotAGun:
                        throw new Exception("Разрешаю и так!");
                }
            }
            closeConn();
        }

        public int GetUnusedGun(FirearmClass type)
        {
            openConn();
            int i = -1;
            using (var cmd = _conn.CreateCommand())
            {
                switch (type)
                {

                    case FirearmClass.Shotgun:
                        cmd.CommandText = "exec СвободнаяЕдиницаГс @id output";
                        cmd.Parameters.Add("@id", SqlDbType.Int);
                        cmd.Parameters["@id"].Direction = ParameterDirection.Output;
                        cmd.ExecuteNonQuery();
                        i = Convert.ToInt32(cmd.Parameters["@id"].Value);
                        break;
                    case FirearmClass.Rifle:
                        cmd.CommandText = "exec СвободнаяЕдиницаНар @id output";
                        cmd.Parameters.Add("@id", SqlDbType.Int);
                        cmd.Parameters["@id"].Direction = ParameterDirection.Output;
                        cmd.ExecuteNonQuery();
                        i = Convert.ToInt32(cmd.Parameters["@id"].Value);
                        break;
                    case FirearmClass.LessLethal:
                        cmd.CommandText = "exec СвободнаяЕдиницаОооп @id output";
                        cmd.Parameters.Add("@id", SqlDbType.Int);
                        cmd.Parameters["@id"].Direction = ParameterDirection.Output;
                        cmd.ExecuteNonQuery();
                        i = Convert.ToInt32(cmd.Parameters["@id"].Value);
                        break;
                    case FirearmClass.NotAGun:
                        throw new Exception("Разрешаю и так!");
                }
            }
            closeConn();
            return i;
        }

        public int GetFirearmIdForAnOrder(int orderId, Firearm gun)
        {
            openConn();
            int i = -1;
            using (var cmd = _conn.CreateCommand())
            {
                switch (gun.Type)
                {
                    case FirearmClass.Shotgun:
                        cmd.CommandText = "exec НомерЕдиницыВЗаказеГс @oid @tid @id output";
                        cmd.Parameters.Add("@oid", SqlDbType.Int).Value = orderId;
                        cmd.Parameters.Add("@tid", SqlDbType.Int).Value = gun.TypeId;
                        cmd.Parameters.Add("@id", SqlDbType.Int);
                        cmd.Parameters["@id"].Direction = ParameterDirection.Output;
                        cmd.ExecuteNonQuery();
                        i = Convert.ToInt32(cmd.Parameters["@id"].Value);
                        break;
                    case FirearmClass.Rifle:
                        cmd.CommandText = "exec НомерЕдиницыВЗаказеНар @oid @tid @id output";
                        cmd.Parameters.Add("@oid", SqlDbType.Int).Value = orderId;
                        cmd.Parameters.Add("@tid", SqlDbType.Int).Value = gun.TypeId;
                        cmd.Parameters.Add("@id", SqlDbType.Int);
                        cmd.Parameters["@id"].Direction = ParameterDirection.Output;
                        cmd.ExecuteNonQuery();
                        i = Convert.ToInt32(cmd.Parameters["@id"].Value);
                        break;
                    case FirearmClass.LessLethal:
                        cmd.CommandText = "exec НомерЕдиницыВЗаказеОооп @oid @tid @id output";
                        cmd.Parameters.Add("@oid", SqlDbType.Int).Value = orderId;
                        cmd.Parameters.Add("@tid", SqlDbType.Int).Value = gun.TypeId;
                        cmd.Parameters.Add("@id", SqlDbType.Int);
                        cmd.Parameters["@id"].Direction = ParameterDirection.Output;
                        cmd.ExecuteNonQuery();
                        i = Convert.ToInt32(cmd.Parameters["@id"].Value);
                        break;
                    case FirearmClass.NotAGun:
                        throw new Exception("Разрешаю и так!");
                }
            }
            closeConn();
            return i;            
        }

        public void CompleteOrder(int orderId)
        {
            openConn();
            using (var cmd = _conn.CreateCommand())
            {
                cmd.CommandText = "exec ЗавершитьЗаказ @oid";
                cmd.Parameters.Add("@oid", SqlDbType.Int).Value = orderId;
                cmd.ExecuteNonQuery();
            }
            closeConn();
        }

        public void DeleteOrder(int orderId)
        {
            openConn();
            using (var cmd = _conn.CreateCommand())
            {
                cmd.CommandText = "exec УдалитьЗаказ @oid";
                cmd.Parameters.Add("@oid", SqlDbType.Int).Value = orderId;
                cmd.ExecuteNonQuery();
            }
            closeConn();
        }

        public void DeleteMerchFromOrder(int orderId, int itemId)
        {
            openConn();
            using (var cmd = _conn.CreateCommand())
            {
                cmd.CommandText = "exec УдалитьТоварИзЗаказа @oid, @mid";
                cmd.Parameters.Add("@oid", SqlDbType.Int).Value = orderId;
                cmd.Parameters.Add("@mid", SqlDbType.Int).Value = itemId;
                cmd.ExecuteNonQuery();
            }
            closeConn();
        }

        public void LockFirearm(Firearm gun)
        {
            openConn();
            using (var cmd = _conn.CreateCommand())
            {
                switch (gun.Type)
                {
                    case FirearmClass.Shotgun:
                        cmd.CommandText = "exec ЗанятьЕдиницуГс @id";
                        cmd.Parameters.Add("@id", SqlDbType.Int).Value = gun.PieceId;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.Rifle:
                        cmd.CommandText = "exec ЗанятьЕдиницуНар @id";
                        cmd.Parameters.Add("@id", SqlDbType.Int).Value = gun.PieceId;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.LessLethal:
                        cmd.CommandText = "exec ЗанятьЕдиницуОооп @id";
                        cmd.Parameters.Add("@id", SqlDbType.Int).Value = gun.PieceId;
                        cmd.ExecuteNonQuery();
                        break;
                    case FirearmClass.NotAGun:
                        throw new Exception("Разрешаю и так!");
                }
            }
            closeConn();
        }
    }
}

