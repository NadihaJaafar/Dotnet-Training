<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="ShoppingCarts.CheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Content/cart.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">
          <div class="outer">
            <div class="header">
                <div class="logo">
                    <h3>Shopping Cart</h3>
                </div>
                <div class="login">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" />
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" />
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
                <table class="cartlist" cellspacing="0">
                    <thead>
                        <tr>
                            <td>Image</td>
                            <td>Product</td>
                            <td>Price</td>
                            <td>Quantity</td>
                            <td>Total</td>
                        </tr>
                    </thead>
                    <tbody>

                          <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                              <tr>
                            <td>
                                <div class="p_img">
                                    <img src="<%#Eval("ProductImage") %>" />
                                </div>
                            </td>
                            <td>
                                <div class="p_name"><span><%#Eval("ProductName") %></span></div>
                            </td>
                            <td>
                                <div class="p_price"><%#Eval("ProductPrice")  %> USD</div>
                            </td>

                            <td><%#Eval("Quantity") %>
                                
                            </td>

                            <td> <%#Eval("Total") %> USD </td>
                                
                             
                        </tr>

                                 </ItemTemplate>

                </asp:Repeater>
                        
                          
                       

                         
            
                    </tbody>
                </table>
                <div class="p_chart">
                    <asp:Button ID="btnAddtoCart" runat="server" Text="Checkout" />
                </div>

            </div>
        </div>

    
   
    </form>
</body>
</html>
