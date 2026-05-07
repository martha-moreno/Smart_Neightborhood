using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HashingFunction;

//TryItPage: Hashing Function (DLL).Hashes member's password for permanent storage.
//Input: (string) password; Output:(string) hashedPassword

namespace Smart_Neightborhood_Project5_Team19.TryItPages
{
    public partial class TryItHashing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbltitle2.Visible = false;
            lblHashResponse.Visible = false;
        }

        protected void btnHash_Click(object sender, EventArgs e)
        {
            string password = txtInput.Text;
            Class1 hashing = new Class1();//instantiate class
            string HashedPswd = hashing.GetHashedPassword(password);//call getHashedpassword method
            lblHashResponse.Text = HashedPswd;
            lbltitle2.Visible = true;
            lblHashResponse.Visible = true;
        }
    }
}