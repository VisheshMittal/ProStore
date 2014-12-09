<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

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
        .auto-style3 {
            height: 50px;
        }
        .textbox-style{
            font-family: 'Segoe UI';
            padding-left: 5px;
        }
        .auto-style6 {
            width: 151px;
            height: 50px;
            font-family: 'Segoe UI';
            font-size: large;
        }
        .auto-style7 {
            width: 151px;
        }
        .auto-style8 {
            width: 170px;
            height: 50px;
            font-family: 'Segoe UI';
            font-size: large;
        }
        .auto-style9 {
            width: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="UserLoginView" runat="server">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <table cellpadding="2" cellspacing="10" class="auto-style1" style="color: #FFFFFF">            
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp; Username&nbsp;</td>
                    <td class="textbox-style">
                        <asp:TextBox ID="userNameTextBox" runat="server" Width="200px" Height="20px" ValidationGroup="loginValidation"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userNameTextBox" ErrorMessage="*" ForeColor="Red" style="font-size: x-large; left: 120px; top: 22px; position: absolute" ValidationGroup="loginValidation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp; Password</td>
                    <td class="textbox-style">
                        <asp:TextBox ID="userPasswordTextBox" TextMode="Password" runat="server" Width="200px" Height="20px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" >
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="userLoginButton" runat="server" Text="Sign in" style=" width: 100px; height: 30px; font-family: 'Segoe UI'; border-radius: 5px;" OnClick="user_Authenticate" ValidationGroup="loginValidation"/>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                
                <tr>
                    <td colspan="2">
                    <asp:LinkButton runat="server" style="width:200px; color:white; font-family:'Segoe UI';padding-left:14px;" OnClick="ForgotPass_Click" ValidationGroup="Other">Forgot Password?</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>

        </asp:View>
        
        <asp:View ID="adminLoginView" runat="server">
            <table cellpadding="2" cellspacing="10" class="auto-style1" style="color: #FFFFFF">
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp; Username&nbsp;</td>
                    <td class="textbox-style">
                        <asp:TextBox ID="adminUserNameTextBox" runat="server" Width="200px" Height="20px" ValidationGroup="loginValidation2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="adminUserNameTextBox" ErrorMessage="*" ForeColor="Red" style="font-size: x-large; left: 120px; top: 22px; position: absolute" ValidationGroup="loginValidation2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp; Password</td>
                    <td class="textbox-style">
                        <asp:TextBox ID="adminPasswordTextBox" runat="server" Width="200px" Height="20px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" >
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Sign in" style=" width: 100px; height: 30px; font-family: 'Segoe UI'; border-radius: 5px;" OnClick="admin_Authenticate" ValidationGroup="loginValidation2"/>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                
                <tr>
                    <td colspan="2">
                    <asp:LinkButton runat="server" style="width:200px; color:white; font-family:'Segoe UI';padding-left:12px;" OnClick="ForgotPass_Click" ValidationGroup="Other">Forgot Password?</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </asp:View>

        

    </asp:MultiView>
</asp:Content>

