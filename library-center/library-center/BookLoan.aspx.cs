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
        private static int quantityBookBd;
        private static int idBookBd;
        private static Boolean redirect = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CatalogBook();
                sectionForm.Visible = false;
                inputQuantityCopy.Text = String.Empty;
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

                Label nameBook = (Label)row.FindControl("titulo");
                Label quantityBookLabel = (Label)row.FindControl("stock");
                Label idBook = (Label)row.FindControl("idBook");

                quantityBookBd = !string.IsNullOrEmpty(quantityBookLabel.Text) ? Convert.ToInt32(quantityBookLabel.Text) : 0;
                idBookBd = !string.IsNullOrEmpty(idBook.Text) ? Convert.ToInt32(idBook.Text) : 0;

                sectionForm.Visible = true;
                nameBookTitle.Text = nameBook.Text;
            }
        }

        protected void saveLoan_Click(object sender, EventArgs e)
        {
            int inputQuantity = !string.IsNullOrEmpty(inputQuantityCopy.Text) ? Convert.ToInt32(inputQuantityCopy.Text) : 0;
            int inputQuantityDays = !string.IsNullOrEmpty(inputQuantityDay.Text) ? Convert.ToInt32(inputQuantityDay.Text) : 0;

            HttpContext.Current.Session["inputQuantityDays"] = inputQuantityDays;

            if (inputQuantity <= quantityBookBd)
            {
                int stockFinal = quantityBookBd - inputQuantity;
                string query = "update library.book set stock = @stock, diaprestamo = @inputQuantityDays, cantreserva = @quantityCopy  where idbook = @idbook";
                redirect = ConnectionSevice.updateBook(idBookBd, inputQuantityDays, stockFinal, inputQuantity, query);
            }
            else
            {
                inputQuantityCopy.Text = String.Empty;
                Response.Write("<script>alert('Cantidad ingresada es mayor a lo que existe en stock') </script>");
            }

            if (redirect)
            {
                Response.Redirect("~/Detail.aspx");
            }
        }
    }
}