using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMainPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userSession"] != null)
        {
            Literal1.Text = Session["userSession"].ToString();
        }
        else
        {
            Response.Redirect("~/LoginPage.aspx?person=user");
        }
    }
    protected void signOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/LoginPage.aspx?person=user");
    }

    protected void gridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //e.Row.Attributes.Add("style", "cursor:help;");
        if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowState == DataControlRowState.Alternate)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='orange'");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='gray'");
                e.Row.BackColor = Color.FromName("gray");
            }
        }
        else
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='orange'");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#e67e22'");
                e.Row.BackColor = Color.FromName("#e67e22");
            }
        }
    }
}