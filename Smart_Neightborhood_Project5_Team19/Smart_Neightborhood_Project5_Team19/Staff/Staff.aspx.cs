using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Neightborhood_Project5_Team19.Staff
{
    public partial class Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["myCookieID"];
            if (Session["Staff"] == null)
            {
                Response.Redirect("../Login.aspx");

            }
            else
            if (myCookies["username"] == "admin")
            {
                Admin_Panel.Visible = true;

            }
            else
            {
                Admin_Panel.Visible = false;
            }
        }
    }
}