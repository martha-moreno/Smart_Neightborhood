using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Neightborhood_Project5_Team19.Member
{
    public partial class GetCountyPopulation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Member"] == null)
            {
                Response.Redirect("../Login.aspx");

            }
        }

        protected void btnGetPopulation_Click(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client getPopulationData = new ServiceReference1.Service1Client(); //instance to the PopulationDataService
            if (int.TryParse(txtZipCode1.Text, out int parsedValue1) && Regex.IsMatch(txtZipCode1.Text, "^[0-9]{5}(?:-[0-9]{4})?$"))
            {
                lblWarning.Visible = false;
                string zipCode = txtZipCode1.Text;//Assigns value of zipcode entered by user to a variable
                string populationdata = getPopulationData.populationData(zipCode).ToString("N0");//assigns response of called populationData service to a variable
                txtPopulation.Text = populationdata;//Displays populationData to a Text box
            }
            else
            {
                txtPopulation.Text = "";
                lblWarning.Text = "You need to enter a valid zipcode";
                lblWarning.Visible = true;
                txtZipCode1.Text = "";

            }

        }
    }
}