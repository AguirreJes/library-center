using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace library_center.Class
{
    public class ConnectionSevice
    {
        public static Boolean SignIn(string user, string pass, string typeUser)
        {
            Boolean response = false;
            try
            {
                MySqlConnection connectionBd = getConnection();

                string query = "select count(1) from library.login where username = @username and password = @password";
                MySqlCommand cmd;
                cmd = new MySqlCommand(query, connectionBd);
                cmd.Parameters.AddWithValue("@username", user);
                cmd.Parameters.AddWithValue("@password", pass);
                cmd.Parameters.AddWithValue("@", typeUser);
                cmd.ExecuteNonQuery();
                Int32 countUser = Convert.ToInt32(cmd.ExecuteScalar());
                connectionBd.Close();
                if (countUser > 0)
                {
                    response = true;
                }
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }
            return response;
        }

        private static MySqlConnection getConnection()
        {
            MySqlConnection con;
            con = new MySqlConnection("Data Source=localhost;Database=library;User ID=root;Password=rootnitch;port=3306");
            try
            {
                con.Open();
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }
            return con;
        }

        private static void showMessage(string v, string message)
        {
            throw new NotImplementedException();
        }
    }
}