using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Smart_Neightborhood_Project5_Team19.TryItPages
{
    public partial class TryItCookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCookies.Visible = false;
            lblcookiestitle.Visible = false;
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {

            if (Session == null)
            {
                lblCookies.Text = "Please get registered first";
                lblCookies.Visible = true;
                lblcookiestitle.Visible = true;
            }
            else //if cookies available
            {
                HttpCookie myCookies = Request.Cookies["myCookieID"]; //create cookies
                lblCookies.Text = "UserName: " + myCookies["username"]; //display username data
                lblCookies.Visible = true;
                lblcookiestitle.Visible = true;
            }
        }
    }
}