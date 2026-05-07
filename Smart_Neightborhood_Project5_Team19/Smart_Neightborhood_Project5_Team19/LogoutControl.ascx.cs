using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Neightborhood_Project5_Team19
{
    public partial class LogoutControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {


                if (Session["Member"] != null || Session["Staff"] != null)
                {

                    HttpCookie myCookies = Request.Cookies["myCookieID"];

                    welcomeName.Text = myCookies["username"];
                    Panel1.Visible = true;

                }
                else
                {
                    Panel1.Visible = false;

                }
            }


        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session["Member"] = null;
            Session["Staff"] = null;
            Session.Abandon();
            Session.RemoveAll();
            Response.Cookies.Clear();
            Response.Redirect("~/Login.aspx");
        }
    }
}