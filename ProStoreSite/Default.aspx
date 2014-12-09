<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            top:30px;
            left:37px;
            position:relative;
        }
        .auto-style2 {
            height: 400px;
            width:350px;
            background-color:#808080;
            text-align: center;
        }
        .auto-style3 {
            height: 400px;
            width: 350px;
            background-color:#e67e22;
            text-align: center;
        }
        .auto-style4 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table cellspacing="50" class="auto-style1">
        <tr>
            <td class="auto-style3">                
                <h2>
                    <asp:Image ID="Image1" ImageUrl="~/Images/User-Login.png" runat="server" Height="200px" Width="200px" />
                </h2>
                <h1 style="top: 284px; left: 92px; position: absolute; height: 45px; width: 337px"><strong><span class="auto-style4">User</span></strong></h1>
                &nbsp;<asp:ImageButton runat="server" ImageUrl="~/Images/Submit-02.png" OnClick="userPageButton_Click" Height="78px" style="top: 289px; left: 285px; position: absolute" Width="78px"/><br />
            </td>
            <td class="auto-style2">
                <h2>
                    <asp:Image ID="Image2" ImageUrl="~/Images/Business-Man-Settings 02.png" runat="server" Height="200px" Width="200px" />
                </h2>
                <h1 style="top: 277px; left: 612px; position: absolute; height: 45px; width: 337px"><strong><span class="auto-style4">Admin</span></strong></h1>
                <asp:ImageButton runat="server" ImageUrl="~/Images/Submit-02.png" OnClick="adminPageButton_Click" Height="78px" style="top: 282px; left: 820px; position: absolute" Width="78px"/>
                <br />    
            </td>
        </tr>
    </table>
</asp:Content>

