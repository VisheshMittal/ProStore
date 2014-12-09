using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMainPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminSession"] != null)
        {
            Literal1.Text = Session["adminSession"].ToString();
        }
        else
        {
            Response.Redirect("~/LoginPage.aspx?person=admin");
        }
    }
    protected void signOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/LoginPage.aspx?person=admin");
    }
    protected void addCompany_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/AdminAddOptions.aspx?add=company");
    }
    protected void addCategory_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/AdminAddOptions.aspx?add=cat");
    }
    protected void addSubcategory_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/AdminAddOptions.aspx?add=subcat");
    }
    protected void addProduct_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/AdminAddOptions.aspx?add=product");
    }
}