<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserMainPage.aspx.cs" Inherits="UserMainPage" %>

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
    .gridRowStyle{
        animation:linear; animation-delay:2s;
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
    

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Prod_Id" DataSourceID="userHomePageSqlDataSource"
         BorderStyle="None" HeaderStyle-BackColor="#494343" HeaderStyle-Height="50" RowStyle-HorizontalAlign="Center" CellSpacing="0" GridLines="None"
         Font-Size="Large" Font-Names="Segoe UI" RowStyle-BackColor="#e67e22" AlternatingRowStyle-BackColor="Gray"
         style="top: 70px; left: 93px; position: relative; height: 300px; width: 905px" OnRowDataBound="gridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="C_Name" HeaderText="Company" SortExpression="C_Name" />
            <asp:BoundField DataField="Prod_Name" HeaderText="Product Name" SortExpression="Prod_Name" />
            <asp:BoundField DataField="Prod_Cost" HeaderText="Product Cost(in Rs.)" SortExpression="Prod_Cost" />
            <asp:TemplateField HeaderText="Product Image" SortExpression="Prod_Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Prod_Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Width="150" Height="100" ImageUrl='<%# Bind("Prod_Image") %>'></asp:Image>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="userHomePageSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="usp_showProdTable" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    
</asp:Content>

