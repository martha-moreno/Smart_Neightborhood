using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Smart_Neightborhood_Project5_Team19
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {

            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

        }

        public static  string Application_AuthorizeRequest(bool signal)
        {
            if (signal == true)
            { return "Successful"; 
            }
            else
            {
                return "Unsuccessful";
            }
                
        }
    }
}