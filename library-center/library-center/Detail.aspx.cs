using library_center.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_center
{
    public partial class Detail : System.Web.UI.Page
    {
        public string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            string quantityCopy = Convert.ToString(System.Web.HttpContext.Current.Session["inputQuantity"]);
            string quantityDays = Convert.ToString(System.Web.HttpContext.Current.Session["inputQuantityDays"]);

            if (!string.IsNullOrEmpty(quantityCopy))
            {
                query = "select * from library.book where cantreserva > 0";
            } else if (!string.IsNullOrEmpty(quantityDays))
            {
                query = "select * from library.book where diaprestamo  > 0";
            }
            ConnectionSevice.DetailInformation(gridView: GridViewBookDetail, query);
        }
    }
}