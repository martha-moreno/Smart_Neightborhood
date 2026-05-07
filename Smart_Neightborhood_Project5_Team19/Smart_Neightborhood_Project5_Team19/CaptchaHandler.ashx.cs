using System;
using System.Collections.Generic;
using System.Drawing.Text;
using System.Drawing;
using System.Linq;
using System.Web;

namespace Smart_Neightborhood_Project5_Team19
{
    /// <summary>
    /// Summary description for CaptchaHandler
    /// </summary>
    public class CaptchaHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string s = context.Request.QueryString.Get("txt");
            context.Response.ContentType = "image/gif";
            CreateImage(s).Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Gif);

        }

        //create the image with the random text
        private static Bitmap CreateImage(string sImageText)
        {

            Bitmap bmpImage = new Bitmap(1, 1);

            int iWidth = 0;
            int iHeight = 0;

            Font MyFont = new Font("Arial", 18, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Pixel);
            Graphics MyGraphics = Graphics.FromImage(bmpImage);
            iWidth = Convert.ToInt32(MyGraphics.MeasureString(sImageText, MyFont).Width) + 20;
            iHeight = Convert.ToInt32(MyGraphics.MeasureString(sImageText, MyFont).Height) + 4;
            bmpImage = new Bitmap(bmpImage, new Size(iWidth, iHeight));
            MyGraphics = Graphics.FromImage(bmpImage);
            MyGraphics.Clear(Color.Beige);
            MyGraphics.TextRenderingHint = TextRenderingHint.AntiAlias;
            MyGraphics.DrawString(sImageText, MyFont, new SolidBrush(Color.DarkMagenta), 10, 4);
            MyGraphics.Flush();
            return (bmpImage);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}