using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_center
{
    public partial class ChoiceAction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void goLoanBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BookLoan.aspx");
        }

        protected void goReservationBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BookReservation.aspx");
        }
    }
}