<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19._Default" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <uc1:LogoutControl runat="server" id="LogoutControl" />

    <div class="jumbotron">

        <h2 style="font-weight:bold" class="main-title">Welcome to the Smart Neighborhood App!</h2>
        <p class="lead">This application facilitates routine management tasks from homeowners and HOA Board Members.</p>      
        <asp:Button class="btn btn-success" ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
        <asp:Panel ID="notAmember" runat="server">
            Not a Member, yet?&nbsp;&nbsp;    
            <a runat="server" href="~/Member/Register">Register here!</a>
        </asp:Panel>
            
        
    </div>
    <div class="row">
        <div class="col-md-6">
            <h2>Member</h2>
            <p>
                If you are a homeowner within an HOA community utilizing Smart Neighborhood, click the button below!</p>
            <p>
                <a runat="server" class="btn btn-primary" href="~/Member/Dashboard" role="button">Member Page</a>
            </p>
           
        </div>
        <div class="col-md-6">
            <h2>Staff</h2>
            <p>
                If you work for an HOA community utilizing Smart Neighborhood, click the button below to manage your HOA residents!</p>
            <p>
                
                <a runat="server" class="btn btn-info" href="~/Staff/Staff" role="button" >Staff Page</a>

            </p>
              
            <p>
                
                &nbsp;</p>
        </div>
    </div>

    <div>

    </div>
    <br />
    <br />

       <table class="table table-striped table-hover table-bordered">
          <thead>  
              <tr>
                  <th style="font-size:18px; text-align:center; color:white;" colspan="5"; bgcolor="steelblue">Service Directory</th>
              </tr>
              <tr>
                  <th colspan="5"; style="text-align:center; font-weight:normal" bgcolor="white"><strong>Web Application is Deployed at: </strong> <a href="http://webstrar19.fulton.asu.edu/Page10/Default.aspx">http://webstrar19.fulton.asu.edu/Page10/Default.aspx</a></th>
              </tr>
              <tr>
                  <th colspan="5"; style="text-align:center; font-weight:normal"; bgcolor="white"><strong>Percentage of Contribution: </strong> Martha Moreno: 33.33%, Michelle Rogers: 33.33%, Brett Miller: 33.33%</th>
              </tr>
            <tr>     
              <th scope="col"; style="vertical-align:middle; color:white"; bgcolor="steelblue">Provider Name</th>
              <th scope="col"; style="vertical-align:middle; color:white"; bgcolor="steelblue">Page and Component Type (e.g., aspx, DLL, SVC, etc)</th>
              <th scope="col"; style="vertical-align:middle; color:white"; bgcolor="steelblue">Component Description: What does the component do?What are input/parameter and output/return value?</th>
              <th scope="col"; style="vertical-align:middle; color:white"; bgcolor="steelblue">Actual Resources and Methods Used to implement the component and where this component is used</th>
              <th scope="col"; style="vertical-align:middle; color:white"; bgcolor="steelblue">TryItPage</th>
            </tr>
          </thead>
          <tbody>
            <!-------------------------Brett Miller Components and Services---------------------------------------------->
              <tr>
              <th>Brett Miller</th>
              <td><strong>Presentation Layer:</strong><br />
                  Default.aspx page</td>
              <td>Public page that contains the "Service Directory" and links to the other pages within the web application.</td>
              <td><strong>Resources:</strong> GUI design and C# code behind GUI</td>
              <td>(This page)<br />
                  <a href="Default.aspx">Default Page</a></td>
            </tr>

               <tr>
              <th>Brett Miller</th>
              <td><strong>Local Component Layer:</strong><br />
                  Display Cookie Information</td>
              <td>After successful registration or login, the username will be displayed on the redirect pages.<br />
                  </td>
              <td><strong>Resources:</strong> GUI design and C# code behind GUI</td>
              <td>To Test: <br />
                  1) Complete registration, verify username is displayed on the Welcome redirect page.<br />
                  2) Login with valid credentials, verify username is displayed on the Login redirect page.
              </td>
            </tr>

              <tr>
              <th>Brett Miller</th>
              <td><strong>Local Component Layer:</strong><br />
                  Global.asax file</td>
              <td>File contains an event handler that welcomes the member upon successful login.</td>
              <td><strong>Resources: </strong>Application_AuthorizeRequest() event handler implemented in the Global.asax.cs file</td>
              <td>To Test: <br />
                  1) Complete registration, verify a Welcome page is shown for 5 seconds, then redirected to Member dashboard. <br />
                  2) Login with valid credentials, verify a Login redirect page with welcome message is shown for 5 seconds, then redirected to Member dashboard.
              </td>
            </tr>
              <tr>
              <th>Brett Miller</th>
              <td><strong>Web Service:</strong><br />
                  Resident Lookup</td>
              <td>Allow member to search for other HOA residents and return their contact information.</td>
              <td><strong>Resources:</strong> RESTful service deployed to webstrar</td>
              <td><a href="Member/ResidentLookup">Resident Lookup Page</a></td>
            </tr>
             

             
            <!-------------------------Martha Moreno Components and Services---------------------------------------------->
            
              <tr>
              <th>Martha Moreno</th>
              <td><strong>Local Component Layer 1: </strong>Register User Control</td>
              <td>New member registration with Captcha Verification that saves new member user and password in xml file.Input:(string) username, (string) password</td>
              <td><strong>Resources: </strong>C# Code behind GUI. Linked to the Default page. </td>
              <td><a href="Member/Register.aspx">Self Registration Page</a> (Public)</td>
            </tr>

            <tr>
              <th>Martha Moreno</th>
              <td><strong>Local Component Layer 2: </strong>LogOut User Control</td>
              <td>User greeting and Logout option</td>
              <td><strong>Resources: </strong>C# Code behind GUI. Linked to all pages once the user is loggedin. </td>
              <td><a href="Default.aspx">LogOut Option</a>(visible after logged in)</td>
            </tr>

              <tr>
              <th>Martha Moreno</th>
              <td><strong>Presentation Layer:</strong>Member.aspx page</td>
              <td>Member's Dashboard which contains all the services.</td>
              <td><strong>Resources: </strong>GUI design and C# code behind GUI. Linked to the LogIn/Registration page.</td>
              <td><a href="Member/Dashboard.aspx">Members Dashboard Page </a> (Member)</td>
              
            </tr>
              <tr>
              <th>Martha Moreno</th>
              <td><strong>Local Component Layer 3: </strong>XML file</td>
              <td>Xml file that Stores usernames and passwords from registered members</td>
              <td><strong>Resources: </strong>Xml Structure. Linked to the Register page and the hashing function </td>
              <td>
                  <ol>
                      <li>  <a href="TryItPages/TryItReadXml.aspx">Try It Page: Read Members.xml</a> (Public)</li>
                     <li>   <a href="Staff/AddNewStaff.aspx">Add New Staff </a> (Staff)</li>
                     <li>  <a href="Staff/ReadStaffXml.aspx">Read Staff.xml </a> (Staff)</li>
                  </ol>
               </td>
                 
            </tr>

              <tr>
              <th>Martha Moreno</th>
              <td><strong>Local Component Layer 4: </strong>DLL</td>
              <td>Hashes member's password for permanent storage. Input: (string) password; Output:(string) hashedPassword</td>
              <td><strong>Resources: </strong>Use library class and local component to implement this library function.It is used to save password data to XML file. </td>
              <td><a href="TryItPages/TryItHashing">Try It Page: Hashing Function </a> (Public)</td>
            </tr>


              <tr>
              <th>Martha Moreno</th>
              <td><strong>Local Component Layer 5:Cookies </strong></td>
              <td>Stores username and password at registration page to Welcome the user</td>
              <td><strong>Resources: </strong>GUI design and C# code behind GUI using HTTP cookies library. It is linked to the registration page and Member pages</td>
              <td><a href="TryItPages/TryItCookies.aspx">Try It Page: Cookies</a> (Public)</td>
            </tr>


            <tr>
              <th>Martha Moreno</th>
              <td><strong>Remote Service Layer 1: </strong>FindYourNearestStore</td>
              <td>Outputs the address of the nearest given store in a radius of 10 miles of the given zipcode</td>
              <td>Input: (string) zipCode, (string) storeName; Output:(string)storeAddressIt is linked to the Member/Dashboard page</td>
               <td><a href="Member/FindYourNearestStore.aspx">Find The Nearest Store Service</a> (Member)</td>
            </tr>

              <tr>
              <th>Martha Moreno</th>
              <td><strong>Remote Service Layer 2:  </strong>Get County's Population Data</td>
              <td>Outputs population for a county based on the zip code; Input: (integer)zip code Output: (integer) population </td>
              <td>Retrieves county's population data of zip code</td>
              <td><a href="Member/GetCountyPopulation.aspx">Get County Population Service</a> (Member)</td>
            </tr>

              <tr>
              <th>Martha Moreno</th>
              <td><strong>Remote Service Layer 3:  </strong>Make Payment</td>
              <td>Outputs payment processing information; Input:(string)invoiceID, double(balance),(string)CC,(string)CVV,(string) expDate Output:(string)paymentDetails </td>
              <td>Allows HOA residents to make payments with a credit card</td>
              <td><a href="Member/Bill.aspx">Make an HOA Payment Service</a> (Member)</td>
            </tr>

               <!-------------------------Michelle Rogers Components and Services-------------------------------------------->
           
              <tr>
              <th>Michelle Rogers</th>
              <td><b>Local Component Layer:</b><br />
                  Login User Control</td>
              <td>Checks if Member is logged in, provides opportunty to login if not, but then checks for staff credentials to see if they can access the Staff Home Page</td>
              <td><strong>Resources: </strong>GUI design and C# code behind GUI</td>
              <td><a href="Login.aspx">Login Page</a></td>
            </tr>
              <tr>
              <th>Michelle Rogers</th>
              <td><b>Presentation Layer:</b><br />
                  Staff Page</td>
              <td>XML Manipulation</td>
              <td><strong>Resources: </strong>GUI Design and XML Service</td>
              <td><a href="Staff/Staff.aspx">Staff Page</a> <br /> 
              </td>
            </tr>              <tr>
              <th>Michelle Rogers</th>
              <td><b>Local Component Layer:</b><br />
                  Cookie</td>
              <td>Cookie for checking if user is logged in</td>
              <td><strong>Resources: </strong>GUI Design and XML Service</td>
              <td><a target="_blank" href="http://webstrar19.fulton.asu.edu/Page6/Cookie.aspx">Try It Page: Cookie</a>(Webstrar)
              </td>
            </tr>
              <tr>
              <th>Michelle Rogers</th>
              <td><b>Remote Service Layer:<br />
                  StaffCredentials</b></td>
              <td>Reads an XML File, searches, determines if user already has staff credentials, if not adds to XML</td>
              <td><strong>Resources: </strong>Service</td>
              <td><a  target="_blank" href="http://webstrar19.fulton.asu.edu/Page6/XML">Xml Manipulations Service </a> (Webstrar)</td>
            </tr>              <tr>
              <th>Michelle Rogers</th>
              <td><b>Remote Service Layer:<br />
                  HOA Violations</b></td>
              <td>Allows posting of images to report HOA Violations</td>
              <td><strong>Resources: </strong>Service</td>
              <td>
                  <ol>
                      <li><a href="Member/Report.aspx">Report HOA Violations Service</a> (Member)</li>
                      <li><a href="Staff/Violations.aspx">View HOA Violations Service </a> (Staff) </li>
                  </ol>
                  
              </td>
            </tr>
            <tr>
              <th>Michelle Rogers</th>
              <td><b>Remote Service Layer:</b><br />
                  HOA Events</td>
              <td>Allows posting of Events</td>
              <td><strong>Resources: </strong>Service</td>
              <td>
                  <ol>
                      <li><a href="Member/Events.aspx">Post an Event Service</a> (Member)</li>
                      <li> <a href="Staff/Events.aspx">View Events Service</a> (Staff)</li>
                  </ol>
              </td>
            </tr>

          
          </tbody>
        </table>

</asp:Content>
