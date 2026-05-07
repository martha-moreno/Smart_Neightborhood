using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Smart_Neightborhood_Project5_Team19
{
    public partial class Login_Redirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NameLabel.Text = "Hi " + Session["Member"] + "!";
            HtmlMeta refreshControl = new HtmlMeta();
            refreshControl.HttpEquiv = "Refresh";
            refreshControl.Content = "5;url=Member/Dashboard.aspx";
            this.Page.Controls.Add(refreshControl);
        }
    }
}