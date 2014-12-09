using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgotPassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
    SqlCommand cmd;
    SqlDataReader dr;
    string personfp, securityQuesAns, password;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["personfp"] != null)
        {
            if (Request.QueryString["personfp"] == "user")
            {
                personfp = "user";
            }
            else if (Request.QueryString["personfp"] == "admin")
            {
                personfp = "admin";
            }
        }
    }

    protected void forgotPassSubmit1_Click(object sender, EventArgs e)
    {
        securityQuesTable.Visible = true;

        con.Open();
        string str = "";
        if (personfp == "user")
        {
            str = "select Security_Ques, Security_Ques_Ans, Password from ProStoreUser where UserName='" + forgotPassUserNameTextBox.Text + "'";
        }
        else if (personfp == "admin")
        {
            str = "select Security_Ques, Security_Ques_Ans, Password from ProStoreAdmin where UserName='" + forgotPassUserNameTextBox.Text + "'";
        }

        cmd = new SqlCommand(str, con);
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            securityQuesBlock.Text = Convert.ToString(dr[0]);
            ViewState["securityQuesAns"] = Convert.ToString(dr[1]);
            ViewState["password"] = Convert.ToString(dr[2]);
        }
        else
        { Response.Write("<span style= 'color:black;'>Invalid Username!</span>"); }
    }

    protected void forgotPassSubmit2_Click(object sender, EventArgs e)
    {
        if (answerTextBox.Text == ViewState["securityQuesAns"].ToString())
        { Response.Write("<span style= 'color:cyan'>Password : " + ViewState["password"].ToString()+"</span>"); }
        else
        { Response.Write("<span style= 'color:black;'>Incorrect Answer!</span>"); }
    }
}