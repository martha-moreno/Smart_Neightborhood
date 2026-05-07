using HashingFunction;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;
using System.Security.Cryptography.X509Certificates;

//USER CONTROL: SignUp form (username & password) with captcha

namespace Smart_Neightborhood_Project5_Team19
{
    public partial class registerControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                generateCaptchaString(5);//At page load, generate a new random string
                lblDuplicatedUser.Visible = false;
                lblCaptchaWarning.Visible = false;

            }
        }

        public void generateCaptchaString(int length)
        {
            string guidString = System.Guid.NewGuid().ToString();//generate a global unique identifier (GUID) which is assigned to a variable
            guidString = guidString.Replace("-", string.Empty);
            guidString = guidString.Substring(0, length);

            Image1.ImageUrl = "~/CaptchaHandler.ashx?txt=" + guidString;//uses the captcha handler to assign the guidstring to the image
            Session["guidText"] = guidString;//stores the guid string for validation purposes

        }
        //password and Captcha text validation
        protected bool ValidateForm()
        {
            lblCaptchaWarning.Visible = false;
            lblWarningPassword.Visible = false;
            lblDuplicatedUser.Visible = false;
            bool IsValid = true;
            if (!Regex.IsMatch(txtPasswordRegister.Text, "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$")) //condition password format
            {
                IsValid = false;
                lblWarningPassword.Text = "Password should be Minimum 8 characters, at least one uppercase letter, one lowecase letter, one number and one special character(@$!%*?&)";
                lblWarningPassword.Visible = true;
            }
            if (txtCaptcha.Text != Session["guidText"].ToString())//validate
            {
                IsValid = false;
            }
            return IsValid;

        }

        bool checkDuplicatedUser(string username)
        {
            bool Response = false;
            if (username != null)
            {
                //Read Member.xml file
                string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Member.xml");//file location

                XmlDocument xmlDocument = new XmlDocument();
                xmlDocument.Load(fLocation);
                XmlElement rootElement = xmlDocument.DocumentElement;
                foreach (XmlNode node in rootElement.ChildNodes)
                {
                    if (node["UserName"].InnerText == username)
                    {
                        return true;

                    }

                }
            }
            return Response;
        }

        //Button to Register new member

        protected void btnRefreshImage_Click(object sender, EventArgs e)
        {
            //--- Recreate captcha.
            generateCaptchaString(5);
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            lblDuplicatedUser.Visible = false;
            DateTime dateTime = DateTime.Now;
            string month = dateTime.ToString("MMMM");

            double balance = 100.00;
            bool status = ValidateForm();//check if all data in form has been entered correctly
            if (status == true)
            {
                string username = txtUsernameRegister.Text;//assign entered username to variable
                string password = txtPasswordRegister.Text; //assign entered password to variable
                bool duplicatedusername = checkDuplicatedUser(username);
                if (duplicatedusername == true)
                {
                    lblDuplicatedUser.Text = "UserName is already in use";
                    lblDuplicatedUser.Visible = true;
                    txtCaptcha.Text = "";
                    txtUsernameRegister.Text = "";
                }
                else
                {
                    Class1 hashing = new Class1(); //generate instance of hashing function
                    string HashedPswd = hashing.GetHashedPassword(password);//call hashing function
                    //Process to write to Member.xml
                    string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Member.xml");//file location
                    FileStream fS = null;
                    if (!File.Exists(fLocation))
                    {
                        //writing to Member.xml file

                        fS = new FileStream(fLocation, FileMode.Truncate);
                        XmlTextWriter writer = new XmlTextWriter(fS, System.Text.Encoding.Unicode);
                        writer.Formatting = Formatting.Indented;
                        writer.WriteStartDocument();
                        writer.WriteStartElement("Members");
                        writer.WriteStartElement("Member");
                        writer.WriteElementString("Username", username);
                        writer.WriteElementString("Password", HashedPswd);
                        writer.WriteStartElement("Bills");
                        writer.WriteStartElement("Bill");
                        writer.WriteElementString("Month", month);
                        writer.WriteElementString("Balance", balance.ToString());
                        writer.WriteEndElement();
                        writer.WriteEndElement();
                        writer.WriteEndElement();
                        writer.WriteEndElement();
                        writer.Close();
                        fS.Close();
                    }
                    else
                    {
                        //Writing Member.xml if file exists:append new child (Member)
                        XDocument xDocument = XDocument.Load(fLocation);
                        XElement root = xDocument.Element("Members");
                        IEnumerable<XElement> rows = root.Descendants("Member");
                        XElement firstRow = rows.First();
                        firstRow.AddBeforeSelf(
                            new XElement("Member",
                            new XElement("UserName", username),
                            new XElement("Password", HashedPswd),
                            new XElement("Bills",
                            new XElement("Bill",
                            new XElement("Month", month),
                            new XElement("Balance", balance.ToString())))));
                        xDocument.Save(fLocation);
                    }

                    //Create Cookies
                    HttpCookie myCookies = new HttpCookie("myCookieID");
                    myCookies["username"] = txtUsernameRegister.Text;
                    myCookies["password"] = txtPasswordRegister.Text;
                    myCookies.Expires = DateTime.Now.AddDays(10); //set expiration for cookies
                    Response.Cookies.Add(myCookies);

                    //Set a session variable once the user has been validated
                    Session["Member"] = username;
                    //Send a pop alert for testing purposes
                    Response.Write("<script>alert('Your Account has been created successfully')</script>");
                    txtUsernameRegister.Text = "";
                    txtCaptcha.Text = "";

                    //---------Code for Global.asax----------
                    string result;
                    result = Global.Application_AuthorizeRequest(true);//Successful login.  Calling method in the Global.asax file
                    if (result == "Successful")
                    {
                        Response.Redirect("~/Welcome");  //If successful show them a Welcome page that will take them to their Member dashboard

                    }
                    //---------End of Code for Global.asax----------
                    // Response.Redirect("Dashboard.aspx");
                }


            }
            else
            {
                lblCaptchaWarning.Text = "Entered Text is incorrect";
                lblCaptchaWarning.Visible = true;
                txtCaptcha.Text = "";
            }

            //--- Recreate captcha.
            generateCaptchaString(5);



        }
    }
}