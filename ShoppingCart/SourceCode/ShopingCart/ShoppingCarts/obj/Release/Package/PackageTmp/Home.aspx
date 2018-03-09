<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Home.aspx.cs" Inherits="ShoppingCarts.Home" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Content/home.css" rel="stylesheet" />
</head>
    <body bgcolor="pink">

    <form id="form1" runat="server">
        <div class="outer">
            <div class="header">
                <div class="logo">
                    <h3>Shopping Cart</h3>
                </div>
                <div class="login">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1"/>
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click1"/>
                </div>
                <div class="menu">
                    <ul>
                        <li>
                            <a href="Home.aspx">Home</a>
                        </li>
                        <li>
                            <a href="#">Shopping Cart</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="list">
                <asp:Repeater ID="productList" runat="server">
                    <ItemTemplate>
                <div class="product">
                    <div class="p_img">
                        <img src="<%#Eval("ProductImage") %>" />
                    </div>
                    <div class="p_name"><span><%#Eval("ProductName") %></span></div>
                    <div class="p_price"><%#Eval("ProductPrice") %></div>
                    <div class="p_chart">
                        <asp:Button ID="btnAddtoCart" OnCommand="btnAddtoCart_Command" 
                            CommandArgument= '<%#Eval("ProductId") %>'
                        runat="server" Text="Add to Cart" /> 

                    </div>

                </div>
                    </ItemTemplate>
               </asp:Repeater>

                </div>
            
        </div>
    </form>


    </body>
</html>
