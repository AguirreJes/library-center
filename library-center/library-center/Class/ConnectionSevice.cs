using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

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

                string query = "select count(1) from library.login where username = @username and password = @password and userType = @userType";
                MySqlCommand cmd;
                cmd = new MySqlCommand(query, connectionBd);
                cmd.Parameters.AddWithValue("@username", user);
                cmd.Parameters.AddWithValue("@password", pass);
                cmd.Parameters.AddWithValue("@userType", typeUser);
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

        public static void DetailInformation(GridView gridView, string querySentence)
        {
            try
            {
                MySqlConnection connectionBd = getConnection();
                MySqlCommand cmd;
                cmd = new MySqlCommand(querySentence, connectionBd);
                gridView.DataSource = cmd.ExecuteReader();
                gridView.DataBind();
                connectionBd.Close();
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }

        }

        public static Boolean updateBook(int idBook, int quantity, int quantityStock, string query)
        {
            Boolean redirect = false;
            try
            {
                MySqlConnection connectionBd = getConnection();
                MySqlCommand cmd;
                cmd = new MySqlCommand(query, connectionBd);
                cmd.Parameters.AddWithValue("@idbook", idBook);
                cmd.Parameters.AddWithValue("@quantity", quantity);
                cmd.Parameters.AddWithValue("@stock", quantityStock);
                cmd.ExecuteNonQuery();
                connectionBd.Close();
                redirect = true;
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }
            return redirect;
        }

        public static Boolean updateBook(int idBook, int inputQuantityDays, int quantityStock, int quantityCopy, string query)
        {
            Boolean redirect = false;
            try
            {
                MySqlConnection connectionBd = getConnection();
                MySqlCommand cmd;
                cmd = new MySqlCommand(query, connectionBd);
                cmd.Parameters.AddWithValue("@idbook", idBook);
                cmd.Parameters.AddWithValue("@inputQuantityDays", inputQuantityDays);
                cmd.Parameters.AddWithValue("@stock", quantityStock);
                cmd.Parameters.AddWithValue("@quantityCopy", quantityCopy);
                cmd.ExecuteNonQuery();
                connectionBd.Close();
                redirect = true;
            }
            catch (Exception exc)
            {
                showMessage("Error Message", exc.Message);
            }
            return redirect;
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