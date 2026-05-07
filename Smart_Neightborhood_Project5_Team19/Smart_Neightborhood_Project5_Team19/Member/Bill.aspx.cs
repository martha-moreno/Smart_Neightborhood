using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Text.Json;
using System.IO;
//using Newtonsoft.Json;
using System.Text.RegularExpressions;

//ADDED for Assignment 9

//valid Credit card number example: 4417123456789113

namespace Smart_Neightborhood_Project5_Team19.Member
{
    public partial class Bill : System.Web.UI.Page
    {
        double newbalance = 0.00;
        double readbalance = 0.00;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Member"] == null)
            {
                Response.Redirect("../Login.aspx");

            }
            else
            {
                HttpCookie myCookies = Request.Cookies["myCookieID"];

                //Read Member.xml file
                string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Member.xml");//file location

                XmlDocument xmlDocument = new XmlDocument();
                xmlDocument.Load(fLocation);
                //Read Balance stored in Member.xml from user that is logged in
                XmlNode balanceNode = xmlDocument.SelectSingleNode("/Members/Member/Bills/Bill/Balance");
                if (balanceNode != null)
                {
                    readbalance = Convert.ToDouble(balanceNode.InnerText);
                    lblBalance.Text = balanceNode.InnerText;
                }
            }
        }
        void registerPayment(string newBalance)
        {

            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Member.xml");//file location

            XmlDocument xmlDocument = new XmlDocument();
            xmlDocument.Load(fLocation);
            //Read Balance stored in Member.xml from user that is logged in
            XmlNode balanceNode = xmlDocument.SelectSingleNode("/Members/Member/Bills/Bill/Balance");
            balanceNode.InnerText = newBalance;
            lblBalance.Text = balanceNode.InnerText;
            xmlDocument.Save(fLocation);

        }

        protected void btnMakePayment_Click(object sender, EventArgs e)
        {

            ServiceReference1.Service1Client validateCC = new ServiceReference1.Service1Client(); //instance to the service
            if (Regex.IsMatch(txtBalance.Text, "-?\\d+(?:\\.\\d+)?")) //checking amount entered is int or double 
            {
                if (Convert.ToDouble(txtBalance.Text) > readbalance)
                {
                    lblexcessbalance.Text = "Your current balance is less than this amount";
                    lblexcessbalance.Visible = true;
                    txtBalance.Text = "";
                    txtCVV.Text = "";
                    txtCreditCard.Text = "";
                    txtExpDate.Text = "";
                }
                else
                {


                    lblWarningBalance.Visible = false;
                    if (Regex.IsMatch(txtCreditCard.Text, "^4[0-9]{12}(?:[0-9]{3})?$") || Regex.IsMatch(txtCreditCard.Text, "^(?:5[1-5][0-9]{2}|222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12}$")) //Conditioning only to accept Visa and Mastercard credit card numbers
                    {
                        lblWarningCC.Visible = false;
                        if (Regex.IsMatch(txtCVV.Text, "^\\d+$") && (txtCVV.Text.Length == 3)) //Validating CVV, only 3 digit numbers are entered
                        {
                            lblWarningCC.Visible = false;
                            if (Regex.IsMatch(txtExpDate.Text, "(0[1-9]|10|11|12)/20[0-9]{2}$")) //validating expiration date
                            {
                                lblWarningExpDate.Visible = false;
                                lblWarningBalance.Visible = false;
                                lblResponse.Visible = false;
                                lblWarningCC.Visible = false;
                                lblexcessbalance.Visible = false;
                                Random generator = new Random();
                                string invoiceID = generator.Next(0, 100000).ToString();//Generating a random invoice number
                                string creditCard = txtCreditCard.Text;//assigning entered creditcard# value to variable
                                string CVV = txtCVV.Text;//assigning entered CVV value to variable
                                double balance = Convert.ToDouble(txtBalance.Text);//assigning entered balance to variable
                                string ExpDate = txtExpDate.Text;//assigning entered exp date to variale
                                string validationResponse = validateCC.MakePayment(invoiceID, balance, creditCard, CVV, ExpDate); //Calling Make Payment Service                     


                                paymentDetails paymentdetails = JsonSerializer.Deserialize<paymentDetails>(validationResponse); //Deserializing response from service
                                if (paymentdetails.authCode == "00") //If the payment was approved
                                {
                                    lblResponse.ForeColor = System.Drawing.Color.Green;
                                    lblResponse.Text = validationResponse;
                                    lblResponse.Visible = true;
                                    newbalance = readbalance - balance;
                                    registerPayment(newbalance.ToString());
                                    txtBalance.Text = "";
                                    txtCVV.Text = "";
                                    txtCreditCard.Text = "";
                                    txtExpDate.Text = "";

                                }
                                else //if payment was declined
                                {
                                    lblResponse.Text = validationResponse;
                                    lblResponse.ForeColor = System.Drawing.Color.Red;
                                    lblResponse.Visible = true;
                                }


                            }
                            else //warning for entered text validation
                            {
                                lblWarningExpDate.Text = "Please enter a valid date in the format mm/yyyy";
                                lblWarningExpDate.Visible = true;
                            }
                        }
                        else //warning for entered text validation
                        {
                            lblWarningCVV.Text = "Please enter a valid CVV";
                            lblWarningCVV.Visible = true;
                        }
                    }
                    else if (Regex.IsMatch(txtCreditCard.Text, "^6(?:011|5[0-9]{2})[0-9]{12}$")) //warning for entered text validation
                    {
                        lblResponse.Visible = false;
                        lblWarningCC.Text = "Discover credit cards are not accepted";
                        lblWarningCC.Visible = true;
                    }
                    else //warning for entered text validation
                    {
                        lblResponse.Visible = false;
                        lblWarningCC.Text = "Please enter a valid credit card number";
                        lblWarningCC.Visible = true;
                    }
                }
            }
            else //warning for entered text validation
            {
                lblWarningBalance.Text = "Please enter a valid amount";
                lblWarningBalance.Visible = true;
            }
        }
    }

    class paymentDetails
    {
        public string authCode { get; set; }
        public string invoiceID { get; set; }
        public double balance { get; set; }
        public string creditCard { get; set; }
        public string response { get; set; }
        public string authCodeDetails { get; set; }
        public string transactionID { get; set; }
        public string date { get; set; }
    }
}