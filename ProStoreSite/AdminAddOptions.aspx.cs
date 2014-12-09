using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminAddOptions : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
    SqlCommand cmd;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["add"] != null)
        {
            switch(Request.QueryString["add"])
            {
                case "company": MultiView1.ActiveViewIndex = 0; break;
                case "cat": MultiView1.ActiveViewIndex = 1; break;
                case "subcat": MultiView1.ActiveViewIndex = 2; break;
                case "product": MultiView1.ActiveViewIndex = 3; break;
                default: break;
            }
        }
        else
        { MultiView1.ActiveViewIndex = 3; }


        if(!IsPostBack)
        {
            switch(MultiView1.ActiveViewIndex)
            {
                case 1: BindCompanyDropDown(companyDropDown); break;
                case 2: BindCompanyDropDown(DropDownList1); break;
                case 3: BindCompanyDropDown(DropDownList3); break;
                default: break;
            }
        }
    }

    protected void BindCompanyDropDown(DropDownList ddl)
    {
        string str = "select * from Company";
        con.Open();
        da = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ddl.DataSource = dt;
            ddl.DataTextField = "C_Name";
            ddl.DataValueField = "C_Id";
            ddl.DataBind();
        }
        ddl.Items.Insert(0, new ListItem("Select..", "0"));
    }

    //Add Company
    protected void addCompany_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("insert into Company (C_Name) values ('" + companyNameTextBox.Text + "')", con);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<span style='color:black;'>Success</span>");
            }
            con.Close();
        }
        catch(Exception)
        {
            Response.Write("<span style='color:black;'>Unable to complete request. The record already exists in the database.</span>");
        }
    }

    //Add Category
    protected void addCategory_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("insert into Category (C_Id, Cat_Name) values (" + companyDropDown.SelectedValue + ", '" + catNameTextBox.Text + "')", con);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<span style='color:black;'>Success</span>");
            }
            con.Close();
        }
        catch(Exception)
        {
            Response.Write("<span style='color:black;'>Unable to complete request. The record already exists in the database.</span>");
        }
    }

    //Add Subcategory
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "select Cat_Id, Cat_Name from Category where C_Id=" + DropDownList1.SelectedValue + "";
        da = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if(dt.Rows.Count > 0)
        {
            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "Cat_Name";
            DropDownList2.DataValueField = "Cat_Id";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("Select..", "0"));
        }
        else
        {
            Response.Write("<span style='color:black;'>Category not found</span>");
        }
    }
    protected void addSubcategory_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("insert into SubCategory (Cat_Id, SubCat_Name) values (" + DropDownList2.SelectedValue + ", '" + subcatNameTextBox.Text + "')", con);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<span style='color:black;'>Success</span>");
            }
            con.Close();
        }
        catch (Exception)
        {
            Response.Write("<span style='color:black;'>Unable to complete request. The record already exists in the database.</span>");
        }
    }

    //Add Product
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "select Cat_Id, Cat_Name from Category where C_Id=" + DropDownList3.SelectedValue + "";
        da = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            DropDownList4.DataSource = dt;
            DropDownList4.DataTextField = "Cat_Name";
            DropDownList4.DataValueField = "Cat_Id";
            DropDownList4.DataBind();
            DropDownList4.Items.Insert(0, new ListItem("Select..", "0"));
            DropDownList5.Items.Clear();
            DropDownList5.Items.Insert(0, new ListItem("Select..", "0"));
        }
        else
        {
            Response.Write("<span style='color:black;'>Category not found</span>");
        }
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "select SubCat_Id, SubCat_Name from SubCategory where Cat_Id=" + DropDownList4.SelectedValue + "";
        da = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            DropDownList5.DataSource = dt;
            DropDownList5.DataTextField = "SubCat_Name";
            DropDownList5.DataValueField = "SubCat_Id";
            DropDownList5.DataBind();
            DropDownList5.Items.Insert(0, new ListItem("Select..", "0"));
        }
        else
        {
            Response.Write("<span style='color:black;'>SubCategory not found</span>");
        }
    }

    protected void addProduct_Click(object sender, EventArgs e)
    {
        try
        {
            string name = FileUpload1.FileName;
            string deployedProjectPath = Server.MapPath("");
            string basePath = deployedProjectPath + "\\Images\\ProductImages\\" + name;
            string dbPath = "~/Images/ProductImages/" + name;

            cmd = new SqlCommand("insert into Product (SubCat_Id, Prod_Name, Prod_Cost, Prod_Image) values(@subCatId, @prodName, @prodCost, @prodImage)", con);
            cmd.Parameters.Add("@subCatId", DropDownList5.SelectedValue);
            cmd.Parameters.Add("@prodName", productNameTextBox.Text);
            cmd.Parameters.Add("@prodCost", productCostTextBox.Text);
            cmd.Parameters.Add("@prodImage", dbPath);

            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<span style='color:black;'>Success!</span>");
                FileUpload1.PostedFile.SaveAs(basePath);
            }
            con.Close();
        }
        catch(Exception)
        {
            Response.Write("<span style='color:black;'Unable to complete request.</span>");
        }
    }
    protected void backButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminMainPage.aspx");
    }
}