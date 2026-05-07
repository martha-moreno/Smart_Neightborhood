using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Neightborhood_Project5_Team19.Staff
{
    public partial class ReadStaffXml : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["myCookieID"];
            if (Session["Staff"] == null)
            {
                Response.Redirect("../Login.aspx");

            }
        }

        protected void btnReadXml_Click(object sender, EventArgs e)
        {
            //Read file and bind data to gridview
            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Staff.xml");
            DataSet ds = new DataSet();
            ds.ReadXml(fLocation);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}