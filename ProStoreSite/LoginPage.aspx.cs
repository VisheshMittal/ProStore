using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
    SqlCommand cmd;
    SqlDataReader dr;
    string person;

    protected void Page_Load(object sender, EventArgs e)
    {    
        //if (!IsPostBack)
        {
            if (Request.QueryString["person"] != null)
            {
                if (Request.QueryString["person"] == "user")
                {
                    MultiView1.ActiveViewIndex = 0;
                    person = "user";
                }
                else if (Request.QueryString["person"] == "admin")
                {
                    MultiView1.ActiveViewIndex = 1;
                    person = "admin";
                }
            }
            else
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }
    }

    protected void user_Authenticate(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select UserName, Password from ProStoreUser where UserName=@user and Password=@pass", con);
        cmd.Parameters.AddWithValue("@user", userNameTextBox.Text);
        cmd.Parameters.AddWithValue("@pass", userPasswordTextBox.Text);

        dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            Session["userSession"] = Convert.ToString(dr[0]);
            Response.Redirect("~/UserMainPage.aspx");
        }
        else
        {
            Response.Write("<span style= 'color:black'>Invalid Username/Password</span>");
        }
        con.Close();
    }

    protected void admin_Authenticate(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select UserName, Password from ProStoreAdmin where UserName=@user and Password=@pass", con);
        cmd.Parameters.AddWithValue("@user", adminUserNameTextBox.Text);
        cmd.Parameters.AddWithValue("@pass", adminPasswordTextBox.Text);

        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["adminSession"] = Convert.ToString(dr[0]);
            Response.Redirect("~/AdminMainPage.aspx");
        }
        else
        {
            Response.Write("<span style= 'color:black'>Invalid Username/Password</span>");
        }
        con.Close();
    }

    protected void ForgotPass_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ForgotPassword.aspx?personfp="+person);
    }

    
}