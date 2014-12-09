<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminAddOptions.aspx.cs" Inherits="AdminAddOptions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
     .auto-style1 {
            width: 35%;
            left: 80px;
            position: relative;
            top: 50px;
            background-color:#494343;
            border-radius: 20px;
        }
     .auto-style8 {
            width: 170px;
            height: 50px;
            font-family: 'Segoe UI';
            color:white;
            font-size: large;
        }
     .textbox-style{
            font-family: 'Segoe UI';
            padding-left: 5px;
        }
        .auto-style9 {
            width: 199px;
        }
        .auto-style10 {
            width: 199px;
            height: 50px;
            font-family: 'Segoe UI';
            color: white;
            font-size: large;
        }
        .auto-style11 {
            width: 216px;
        }
        .auto-style12 {
            width: 216px;
            height: 50px;
            font-family: 'Segoe UI';
            color: white;
            font-size: large;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Button runat="server" Text="Back" style=" width: 150px; height: 50px; background-color:#494343; top:50px; left:82px; position:relative; font-family: 'Segoe UI'; font-size:large; color:white; border-radius: 20px;" OnClick="backButton_Click"/>
    <br />

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View runat="server">
            <table cellpadding="2" cellspacing="10" class="auto-style1">
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2" style="font-family:'Segoe UI'; font-size:large; color:white; font-weight:bold; width:auto;">&nbsp;&nbsp;&nbsp;Add Company</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;Company Name :&nbsp;</td>
                    <td class="textbox-style">
                        <asp:TextBox ID="companyNameTextBox" runat="server" Width="200px" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="companyNameTextBox" ErrorMessage="*" ForeColor="Red" style="font-size: x-large; left: 170px; top: 55px; position: absolute" ValidationGroup="addComValidation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="addCompanyButton" runat="server" Text="Add" ValidationGroup="addComValidation" style=" width: 100px; height: 30px; font-family: 'Segoe UI'; border-radius: 5px;" OnClick="addCompany_Click"/>
                    </td>
                </tr>
            </table>
        </asp:View>

        <asp:View runat="server">
            <table cellpadding="2" cellspacing="10" class="auto-style1">
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2" style="font-family:'Segoe UI'; font-size:large; color:white; font-weight:bold; width:auto;">&nbsp;&nbsp;&nbsp;Add Category</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;Select Company</td>
                    <td>
                        <asp:DropDownList ID="companyDropDown" runat="server" Width="200px" Height="29px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;Category Name :&nbsp;</td>
                    <td class="textbox-style">
                        <asp:TextBox ID="catNameTextBox" runat="server" Width="200px" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="catNameTextBox" ErrorMessage="*" ForeColor="Red" style="font-size: x-large; left: 170px; top: 115px; position: absolute" ValidationGroup="addCatValidation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="addCatButton" runat="server" Text="Add" ValidationGroup="addCatValidation" style=" width: 100px; height: 30px; font-family: 'Segoe UI'; border-radius: 5px;" OnClick="addCategory_Click"/>
                    </td>
                </tr>
            </table>
        </asp:View>

        <asp:View runat="server">
            <table cellpadding="2" cellspacing="10" class="auto-style1">
                <tr>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td colspan="2" style="font-family:'Segoe UI'; font-size:large; color:white; font-weight:bold; width:auto;">&nbsp;&nbsp;&nbsp;Add SubCategory</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;Select Company</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" Height="29px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;Select Category</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="200px" Height="29px">
                            <asp:ListItem Selected="True" Text="Select.." Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;SubCategory Name :&nbsp;</td>
                    <td class="textbox-style">
                        <asp:TextBox ID="subcatNameTextBox" runat="server" Width="200px" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="subcatNameTextBox" ErrorMessage="*" ForeColor="Red" style="font-size: x-large; left: 170px; top: 215px; position: absolute" ValidationGroup="addSubcatValidation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Add" ValidationGroup="addSubcatValidation" style=" width: 100px; height: 30px; font-family: 'Segoe UI'; border-radius: 5px;" OnClick="addSubcategory_Click"/>
                    </td>
                </tr>
            </table>
        </asp:View>

        <asp:View runat="server">
             <table cellpadding="2" cellspacing="10" class="auto-style1">
                <tr>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td colspan="2" style="font-family:'Segoe UI'; font-size:large; color:white; font-weight:bold; width:auto;">&nbsp;&nbsp;&nbsp;Add Product</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;Select Company</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" Width="200px" Height="29px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
<%--                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [Company] WHERE [C_Id] = @original_C_Id AND (([C_Name] = @original_C_Name) OR ([C_Name] IS NULL AND @original_C_Name IS NULL))" InsertCommand="INSERT INTO [Company] ([C_Name]) VALUES (@C_Name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Company]" UpdateCommand="UPDATE [Company] SET [C_Name] = @C_Name WHERE [C_Id] = @original_C_Id AND (([C_Name] = @original_C_Name) OR ([C_Name] IS NULL AND @original_C_Name IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_C_Id" Type="Int32" />
                                <asp:Parameter Name="original_C_Name" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="C_Name" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="C_Name" Type="String" />
                                <asp:Parameter Name="original_C_Id" Type="Int32" />
                                <asp:Parameter Name="original_C_Name" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>--%>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;Select Category</td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server" Width="200px" Height="29px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem Selected="True" Text="Select.." Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;Select SubCategory</td>
                    <td>
                        <asp:DropDownList ID="DropDownList5" runat="server" Width="200px" Height="29px">
                            <asp:ListItem Selected="True" Text="Select.." Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;Product Name :&nbsp;</td>
                    <td class="textbox-style">
                        <asp:TextBox ID="productNameTextBox" runat="server" Width="200px" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="productNameTextBox" ErrorMessage="*" ForeColor="Red" style="font-size: x-large; left: 158px; top: 263px; position: absolute" ValidationGroup="addProdValidation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;Product Cost(in Rs.) :&nbsp;</td>
                    <td class="textbox-style">
                        <asp:TextBox ID="productCostTextBox" runat="server" Width="200px" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="productCostTextBox" ErrorMessage="*" ForeColor="Red" style="font-size: x-large; left: 195px; top: 325px; position: absolute" ValidationGroup="addProdValidation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;Product Image :&nbsp;</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" Height="20px"/>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style11">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Add" ValidationGroup="addProdValidation" style=" width: 100px; height: 30px; font-family: 'Segoe UI'; border-radius: 5px;" OnClick="addProduct_Click"/>
                    </td>
                </tr>
        </asp:View>
    </asp:MultiView>
    
</asp:Content>

