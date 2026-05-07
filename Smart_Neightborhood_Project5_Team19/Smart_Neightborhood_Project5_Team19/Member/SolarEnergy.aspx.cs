using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Neightborhood_Project5_Team19.Member
{
    public partial class SolarEnergy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Member"] == null)
            {
                Response.Redirect("../Login.aspx");

            }
        }
    }
}