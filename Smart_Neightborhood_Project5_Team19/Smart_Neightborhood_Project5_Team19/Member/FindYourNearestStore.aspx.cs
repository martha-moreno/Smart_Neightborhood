using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Neightborhood_Project5_Team19.Member
{
    public partial class FindYourNearestStore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Member"] == null)
            {
                Response.Redirect("../Login.aspx");

            }
        }

        protected void btnFindNearestStore_Click(object sender, EventArgs e)
        {

            ServiceReference1.Service1Client findStoreService = new ServiceReference1.Service1Client(); //instance to the service
            if (int.TryParse(txtZipCode.Text, out int parsedValue) && Regex.IsMatch(txtZipCode.Text, "^[0-9]{5}(?:-[0-9]{4})?$")) //validation of entered zipcode
                if (txtStoreName.Text != "") //validation of enterd storeName
                {
                    lblWarningZipCode.Visible = false; //hide warning label
                    lblWarningStoreName.Visible = false; //hide warning label
                    string zipCode = txtZipCode.Text;//assign value of textbox to variable
                    string storeName = txtStoreName.Text;//assign value of textbox to variable
                    string storeAddress = findStoreService.findNearestStore(zipCode, storeName);//call service with arguments zipcode and storename and assign response to a string variable
                    txtStoreAddress.Text = storeAddress; //display storeaddress to txtbox
                }
                else
                {
                    lblWarningStoreName.Text = "Please enter a storeName";//define text for warning label
                    lblWarningStoreName.Visible = true;//make warning label visible
                }
            else
            {
                lblWarningZipCode.Text = "Please enter a valid zipcode";//define text for warning label
                lblWarningZipCode.Visible = true; //make warning label visible
            }


        }
    }
}