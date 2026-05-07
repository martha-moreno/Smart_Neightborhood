using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_Neightborhood_Project5_Team19.Member
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Member"] == null)
            {
                Response.Redirect("../Login.aspx");

            }
        }

        protected void UploadBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    Stream fs = FileUpload1.PostedFile.InputStream;
                    BinaryReader br = new BinaryReader(fs);
                    Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    string imageBase64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                    if (FileUpload1.PostedFile.ContentLength > 50000)
                    {
                        TextBox1.Text = "Your image is too large.  Please select a smaller image.";
                    }
                    else
                    {
                        MichelleServices.Service1Client myPxy = new MichelleServices.Service1Client();
                        string imageprocess = myPxy.UploadImage(imageBase64String, FileUpload1.FileName);
                        if (imageprocess.Equals("success"))
                        {
                            Image1.ImageUrl = "data:image/png;base64," + imageBase64String;
                            Image1.Visible = true;
                            TextBox1.Text = "Image was processed.  Thank you for reporting the HOA violation";

                        }
                        else
                        {
                            TextBox1.Text = imageprocess;
                        }
                    }
                }

            }
            catch (Exception ex)
            {

                Console.WriteLine(ex);
            }
        }
    }
}