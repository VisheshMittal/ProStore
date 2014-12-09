using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void userPageButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/LoginPage.aspx?person=user");
    }
    protected void adminPageButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/LoginPage.aspx?person=admin");
    }
}