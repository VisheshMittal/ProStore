using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void home_Click(object sender, EventArgs e)
    {
        if(Session["adminSession"] != null)
        {
            Response.Redirect("~/AdminMainPage.aspx");
        }
        else if(Session["userSession"] !=null)
        {
            Response.Redirect("~/UserMainPage.aspx");
        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
    }
    protected void about_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AboutPage.aspx");
    }
}
