using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Smart_Neightborhood_Project5_Team19.TryItPages
{
    public partial class AddNewStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            HttpCookie myCookies = Request.Cookies["myCookieID"];
            if (Session["Staff"] == null)
            {
                Response.Redirect("../Login.aspx");

            }
            else
            if (myCookies["username"] != "admin")
            {
                Response.Redirect("../Staff.aspx");

            }
        }

        protected void btnAddStaff_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            //Read Staff.xml file
            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Staff.xml");//file location
            //Writing Staff.xml if file exists:append new child (Member)
            XDocument xDocument = XDocument.Load(fLocation);
            XElement root = xDocument.Element("ArrayOfAccounts");
            IEnumerable<XElement> rows = root.Descendants("Accounts");
            XElement firstRow = rows.First();
            firstRow.AddBeforeSelf(
                new XElement("Accounts",
                new XElement("Username", txtusername.Text),
                new XElement("Credential", txtpassword.Text)));
            xDocument.Save(fLocation);
            Label1.Text = "New Staff Member Added Successfully";
            Label1.Visible = true;
            txtusername.Text = "";
            txtpassword.Text = "";
            
        }
    }
}