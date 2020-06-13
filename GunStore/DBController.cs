﻿using System;
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
    }
}
