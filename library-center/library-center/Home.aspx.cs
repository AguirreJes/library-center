﻿using library_center.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library_center
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signIn_Click(object sender, EventArgs e)
        {
            if (ConnectionSevice.SignIn(inputUser.Text, inputPassword.Text, radioTypeUser.SelectedValue))
            {
                Response.Redirect("~/ChoiceAction.aspx");
            }
            else
            {
                inputUser.Text = null;
                inputPassword.Text = null;
                radioTypeUser.ClearSelection();
                Response.Write("<script>alert('Usuario o contrasena erronea, Favor verifique') </script>");
            }
        }
    }
}