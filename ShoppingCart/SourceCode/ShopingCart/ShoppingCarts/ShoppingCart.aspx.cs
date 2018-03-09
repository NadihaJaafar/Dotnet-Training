using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCarts
{
    public partial class ShoppingCart : System.Web.UI.Page
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


        public void GetAllProducts()
        {

            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                EmptyCart.Visible = true;
                CartItems.Visible = false;
            }
            else
            {
                EmptyCart.Visible = false;
                CartItems.Visible = true;

                List<CartItems_Result> objList = new List<CartItems_Result>();
                using (var entities = new ShoppingCartEntities())
                {
                    objList = entities.CartItems(Convert.ToInt32(Session["UserId"])).ToList<CartItems_Result>();
                }
                if (objList.Count != 0)
                {
                EmptyCart.Visible = false;
                CartItems.Visible = true;

                Repeater1.DataSource = objList;
                Repeater1.DataBind();

            }
                else
                    EmptyCart.Visible = true;
                    CartItems.Visible = false;
        }
    }
}
      
        }

