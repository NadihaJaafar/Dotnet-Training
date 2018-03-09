<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCarts.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="Content/style.css" />
    
</head>
<body>
    <form id="form1" runat="server">

        <div class="Outer">
            <h3>Shopping Cart</h3>
            <div class="Login" style="background: pink"> 
                <div class="Username">
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                </div>
                <div style="color:red;margin-top:10px;">
                     <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                </div>
            </div>
            
        </div>
    </form>
</body>
</html>
