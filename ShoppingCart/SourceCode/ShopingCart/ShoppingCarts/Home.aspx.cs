using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCarts
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                btnLogin.Visible = true;
                btnLogout.Visible = false;
            }
            else
            {
                btnLogin.Visible = false;
                btnLogout.Visible = true;

            }
            GetAllProducts();
        }
        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session["UserId"] = 0;
            Response.Redirect("Home.aspx");
        }

        public void GetAllProducts()
        {
            List<ProductSelectsAll_Result> objList = new List<ProductSelectsAll_Result>();
            using (var entities = new ShoppingCartEntities())
            {
                objList = entities.ProductSelectsAll().ToList<ProductSelectsAll_Result>();
            }
            productList.DataSource = objList;
            productList.DataBind();
        }

        protected void btnAddtoCart_Command(object sender, CommandEventArgs e)
        {
            if(Convert.ToInt32(Session["UserId"]) != 0)
            {
            using (var entities = new ShoppingCartEntities())
            {
                entities.AddtoCart(Convert.ToInt32(Session["UserId"]),Convert.ToInt32(e.CommandArgument));
            }
            ClientScript.RegisterStartupScript(this.GetType(), "Message",  "alert(Successfully added to cart ! ')", true);
        }
        else
    {
           Response.Redirect("Login.aspx");
    }
    }
}}