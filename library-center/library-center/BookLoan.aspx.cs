using library_center.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_center
{
    public partial class BookLoan : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CatalogBook();
            }
        }

        private void CatalogBook()
        {
            string query = "select * from library.book";
            ConnectionSevice.DetailInformation(gridView: GridViewBookCatalog, query);
        }

        protected void GridViewBookCatalog_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Loan")
            {
                GridViewRow row = GridViewBookCatalog.Rows[Convert.ToInt32(e.CommandArgument)];

                string id = (row.FindControl("idbook") as Label).Text;
                string cantidad = (row.FindControl("stock") as Label).Text;

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ID: " + id + "\\nCantidad: " + cantidad + "');", true);
            }
        }
    }
}