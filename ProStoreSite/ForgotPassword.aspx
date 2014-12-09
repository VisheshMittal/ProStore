<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

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

    <%--<asp:View ID="forgotPassView" runat="server">--%>
            <table cellpadding="2" cellspacing="10" class="auto-style1" style="color: #FFFFFF">
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp; Username&nbsp;</td>
                    <td class="textbox-style">
                        <asp:TextBox ID="forgotPassUserNameTextBox" runat="server" Width="200px" Height="20px" ValidationGroup="forgotPassSubmit1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="forgotPassUserNameTextBox" ErrorMessage="*" ForeColor="Red" style="font-size: x-large; left: 120px; top: 22px; position: absolute" ValidationGroup="forgotPassSubmit1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style9" >
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Submit" style=" width: 100px; height: 30px; font-family: 'Segoe UI'; border-radius: 5px;" OnClick="forgotPassSubmit1_Click"/>
                    </td>
                </tr>
             </table>
            <br /><br />
            <asp:Table ID="securityQuesTable" runat="server" cellpadding="2" cellspacing="10" CssClass="auto-style1" style="color: #FFFFFF; visibility:visible">        
                <asp:TableRow>                  
                    <asp:TableCell CssClass="auto-style8">&nbsp;&nbsp;&nbsp; Security Question:&nbsp;</asp:TableCell>
                    <asp:TableCell CssClass="auto-style8"><asp:TextBox ID="securityQuesBlock" ReadOnly="true" runat="server" Text='<%# Bind("securityQuesBlockText") %>' Width="200px" Height="20px" BackColor="#494343" BorderColor="#494343" ForeColor="White"></asp:TextBox></asp:TableCell>                
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="auto-style8">&nbsp;&nbsp;&nbsp; Answer:&nbsp;</asp:TableCell>
                    <asp:TableCell CssClass="textbox-style">
                        <asp:TextBox ID="answerTextBox" runat="server" Width="200px" Height="20px" ValidationGroup="forgotPassSubmit2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="answerTextBox" ErrorMessage="*" ForeColor="Red" style="font-size: x-large; left: 115px; top: 80px; position: absolute" ValidationGroup="forgotPassSubmit2"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="auto-style9" ColumnSpan="2">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Submit" style=" width: 100px; height: 30px; font-family: 'Segoe UI'; border-radius: 5px;" OnClick="forgotPassSubmit2_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
             </asp:Table>
            
<%--        </asp:View>--%>
</asp:Content>

