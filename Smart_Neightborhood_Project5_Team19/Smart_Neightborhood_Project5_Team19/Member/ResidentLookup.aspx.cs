using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Neightborhood_Project5_Team19.Member
{
    public partial class ResidentLookup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Member"] == null)
            {
                Response.Redirect("../Login.aspx");

            }

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string fName = FNameBox.Text;
            string lName = LNameBox.Text;
            Uri baseUri = new Uri("http://webstrar19.fulton.asu.edu/Page1/Service1.svc");
            UriTemplate myTemplate = new UriTemplate("Lookup?x={first}&y={last}");
            Uri fullUri = myTemplate.BindByPosition(baseUri, fName, lName);
            WebClient channel = new WebClient();
            byte[] temp = channel.DownloadData(fullUri);
            Stream myStream = new MemoryStream(temp);
            DataContractSerializer obj = new DataContractSerializer(typeof(string));
            string randomString = obj.ReadObject(myStream).ToString();
            LookupResults.Text = randomString;
        }
    }
}