using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Neightborhood_Project5_Team19.Staff
{
    public partial class Violations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["myCookieID"];
            if (Session["Staff"] == null)
            {
                Response.Redirect("../Login.aspx");

            }

            if (!Page.IsPostBack)
            {
                LoadList();
            }
        }

        private void LoadList()
        {
            MichelleServices.Service1Client myPxy = new MichelleServices.Service1Client();
            string violationsList = myPxy.GetListViolations();
            List<string> violations = violationsList.Split(',').ToList();

            ViolationsList.Items.Clear();
            foreach (string fn in violations)
            {
                ViolationsList.Items.Add(new ListItem(fn.Trim(), fn.Trim()));
                ViolationsList.SelectedValue = fn.Trim();
            }

            ViewViolationImage.Visible = false;
        }
        private void DisplayImage()
        {
            MichelleServices.Service1Client myPxy = new MichelleServices.Service1Client();
            string imagebytes = myPxy.GetImageFromFilename(ViolationsList.SelectedValue);
            ViewViolationImage.ImageUrl = "data:image/png;base64," + imagebytes;
            ViewViolationImage.Visible = true;

        }
        protected void ViewImage_Click(object sender, EventArgs e)
        {
            DisplayImage();
        }

        protected void ViolationsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DisplayImage();
        }
    }
}