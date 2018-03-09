<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="ShopingCart.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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
                    <a href="#">Shopping Cart</a>
                    </li>
                </ul>
                </div>
                </div>
             <div class="list">
                 <div class="product">
                     <div class="p_img>"
                         <img src="beg4.jpg" />
                 </div>
                     <div class="p_name"><span>Handbag</span></div>
                     <div class="p_price">60 USD</div>
                     <div class="p_chart">
                        <asp:Button ID="btnAddtoCart" runat="server" Text="Add to Cart" />
                     </div>
                     
             </div>
  
    </div>
    </div>
    </form>
</body>
</html>

