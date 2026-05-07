using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Neightborhood_Project5_Team19.Member
{
    public partial class Events : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Member"] == null)
            {
                Response.Redirect("../Login.aspx");

            }
        }

        protected void PostEventBtn_Click(object sender, EventArgs e)
        {
            MichelleServices.Service1Client myPxy = new MichelleServices.Service1Client();
            string msg = myPxy.PostEvent(TitleEntry.Text, DescEntry.Text, HostedEntry.Text, PhoneNumberEntry.Text, EventDateEntry.SelectedDate);
            EventResultBox.Text = msg;
            ViewEventsTextBox.Text = myPxy.RetrieveEvents();
            ClearEventForm();
        }

        private void ClearEventForm()
        {
            TitleEntry.Text = "";
            DescEntry.Text = "";
            HostedEntry.Text = "";
            PhoneNumberEntry.Text = "";
            DateEntryBox.Text = "";
        }

        protected void ViewEventsBtn_Click(object sender, EventArgs e)
        {
            MichelleServices.Service1Client myPxy = new MichelleServices.Service1Client();
            ViewEventsTextBox.Text = myPxy.RetrieveEvents();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            EventDateEntry.Visible = true;
        }

        protected void EventDateEntry_SelectionChanged(object sender, EventArgs e)
        {
           DateEntryBox.Text = EventDateEntry.SelectedDate.ToLongDateString();
            EventDateEntry.Visible = false;
        }
    }
}