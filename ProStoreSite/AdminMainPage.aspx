<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminMainPage.aspx.cs" Inherits="AdminMainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 72%;
            top:20px;
            left:15px;
            position:relative;
        }

        .adminOptions{
            height:100px;
            background-color: #e67e22;
            font-family: 'Segoe UI';
            font-size: x-large;
            position: relative; left: 50px; top:0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 20%; height:50px; left: 90px; position: relative; top: 50px; background-color:#494343; border-radius: 20px;">
        <tr>
            <td style="font-family:'Segoe UI'; font-size:large; color:white; width:auto;">  &nbsp;&nbsp;&nbsp;  Welcome :</td>
            <td>
                <asp:Literal ID="Literal1" runat="server" Text="<%# 'a' %>"></asp:Literal>
            </td>
        </tr>
    </table>

    <asp:Button runat="server" Text="Sign out" style=" width: 150px; height: 50px; background-color:#494343; top:0px; left:420px; position:relative; font-family: 'Segoe UI'; font-size:large; color:white; border-radius: 20px;" OnClick="signOut_Click" />
    
    <table cellpadding="5" cellspacing="25" class="auto-style1">
        <tr>
            <td class="adminOptions"><span style="position:relative; top:-20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Company</span>
                <asp:ImageButton runat="server" ImageUrl="~/Images/Submit-02.png" Height="72px" Width="72px" style="top:7px; left: 50px; position: relative;" OnClick="addCompany_Click"/>
            </td>
        </tr>
        <tr>
            <td class="adminOptions"><span style="position:relative; top:-20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Category</span>
                <asp:ImageButton runat="server" ImageUrl="~/Images/Submit-02.png" Height="72px" Width="72px" style="top:7px; left: 57px; position: relative;" OnClick="addCategory_Click"/>
            </td>
        </tr>
        <tr>
            <td class="adminOptions"><span style="position:relative; top:-20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Subcategory</span>
                <asp:ImageButton runat="server" ImageUrl="~/Images/Submit-02.png" Height="72px" Width="72px" style="top:7px; left: 23px; position: relative;" OnClick="addSubcategory_Click"/>
            </td>
        </tr>
        <tr>
            <td class="adminOptions"><span style="position:relative; top:-20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Product</span>
                <asp:ImageButton runat="server" ImageUrl="~/Images/Submit-02.png" Height="72px" Width="72px" style="top:7px; left: 74px; position: relative;" OnClick="addProduct_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>

