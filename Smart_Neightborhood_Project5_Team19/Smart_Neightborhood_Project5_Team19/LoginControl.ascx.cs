using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;
using HashingFunction;
using Microsoft.Ajax.Utilities;

namespace Smart_Neightborhood_Project5_Team19
{
    public partial class LoginControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {

            lblWarningpassword.Visible = false;
            lblWarningusername.Visible = false;
            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Member.xml");//file location-Member
            string fLocationStaff = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Staff.xml");//file location-Staff
            string username = usernameEntry.Text;
            string password = passwordEntry.Text;
            string readHashedPassword;
            string readCredential;
            bool validatedPassword = false;
            HttpCookie myCookies = new HttpCookie("myCookieID");




            if (username != null && username != "") //if an username has been entered
            {
                //Check if user is a member
                XmlDocument xmlDocument = new XmlDocument();
                xmlDocument.Load(fLocation);
                XmlElement rootElement = xmlDocument.DocumentElement;
              
                foreach (XmlNode node in rootElement.ChildNodes)
                 if (node["UserName"].InnerText == username)
                {
                        // XmlNode passwordNode = node.SelectSingleNode("/Members/Member/Password");
                      //  readHashedPassword = passwordNode.InnerText; //read hashedpassword
                        readHashedPassword = node.FirstChild.NextSibling.InnerText; //read hashedpassword
                        validatedPassword = BCrypt.Net.BCrypt.Verify(password, readHashedPassword);

                        if (validatedPassword)
                        {
                            myCookies["username"] = usernameEntry.Text;
                            myCookies.Expires = DateTime.Now.AddDays(10);//CHANGE TIME HERE
                            Response.Cookies.Add(myCookies);

                            Session["Member"] = username;

                            //  Response.Redirect("~/Member/Dashboard.aspx");

                            //---------Code for Global.asax----------
                            string result;
                            result = Global.Application_AuthorizeRequest(true);//Successful login.  Calling method in the Global.asax file
                            if (result == "Successful")
                            {
                                Response.Redirect("Login_Redirect");  //If successful show them a Welcome page that will take them to their Member dashboard

                            }
                            //---------End of Code for Global.asax----------
                        }
                        else
                        {
                            lblWarningpassword.Text = "Wrong Password";
                            lblWarningpassword.Visible = true;
                        }
                 }
                    else 
                    {

                        Label1.Text = username + password;

                        //Read Staff.xml
                        XmlDocument xmlDocument2 = new XmlDocument();
                        xmlDocument2.Load(fLocationStaff);
                        XmlElement rootElement2 = xmlDocument2.DocumentElement;

                        foreach (XmlNode node2 in rootElement2.ChildNodes)
                            if (node2["Username"].InnerText == username)
                            {
                                Label1.Text = username;

                              //  XmlNode credentialNode = node2.SelectSingleNode("/ArrayOfAccounts/Accounts/Credential");
                             //   readCredential = credentialNode.InnerText; //read staff credential
                                readCredential = node2.FirstChild.NextSibling.InnerText; //read hashedpassword
                                if (password == readCredential)
                                {
                                    myCookies["username"] = usernameEntry.Text;
                                    myCookies.Expires = DateTime.Now.AddDays(10);
                                    Response.Cookies.Add(myCookies);

                                    Session["Staff"] = username;
                                    Response.Redirect("Staff/Staff.aspx");
                                }
                                else 
                                {
                                    lblWarningpassword.Text = "Wrong Password";
                                    lblWarningpassword.Visible = true;
                                    lblWarningusername.Visible = false;
                                    break;
                                }
                                

                            }
                            else
                            {
                                lblWarningusername.Text = "invalid user";
                                lblWarningusername.Visible = true;
                            }





                    }

                




            }
            else
            {
                Label1.Text = "No user data has been entered";
                Label1.Visible = true;
            }


        }
    }
}