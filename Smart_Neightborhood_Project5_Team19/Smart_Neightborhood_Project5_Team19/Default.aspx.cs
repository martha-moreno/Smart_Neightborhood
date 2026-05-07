using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Neightborhood_Project5_Team19
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Member"] != null || Session["Staff"] != null)
                {
                    btnlogin.Visible = false;
                    notAmember.Visible = false;

                }

                else
                {
                    btnlogin.Visible = true;
                    notAmember.Visible = true;
                }
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}