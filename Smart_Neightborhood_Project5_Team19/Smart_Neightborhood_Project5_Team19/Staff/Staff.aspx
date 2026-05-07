<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Staff.Staff" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <uc1:LogoutControl runat="server" ID="LogoutControl" />
     <div class="jumbotron">
        
        <h1>Staff Page</h1>   
         <p class="lead">This Staff Dashboard provides the following services:</p>
       <hr class="my-4">
        <ol>
            <li>As <strong>Staff Member</strong>, you can: 
                <ul>
                    <li>View Reported HOA Violations </li>
                    <li>View Posted Events </li>
                    <li>Read Staff.xml </li>
                </ul>
            </li>
            <li>As <strong>Staff Administrator </strong>,you can additionally:
                <ul>
                    <li>Add new Staff Members</li>
                    <li>Give Staff Credentials to a Member</li>
                </ul>
            </li>
        </ol>   
    </div>

     <div id="Staff_Panel" runat="server">
        <div class="row text-center">
            <div class="col-lg-4 text-center">
                <div class="card">
                    <a href="Violations.aspx">
                        <img class="card-img-top" src="../Images/staff_violations.png" alt="Card image cap" width="150px">
                    </a>
                    &nbsp;&nbsp;
                    <div class="card-body">
                        <h5 class="card-title"><a href="Violations.aspx">View Reported HOA Violations</a></h5>
                        <figcaption class="figure-caption">Icon by <a href="https://freeicons.io/profile/112433">Manthana Chaiwong</a> on <a href="https://freeicons.io">freeicons.io</a>
                            Icon by <a href="https://freeicons.io/profile/112433">Manthana Chaiwong</a> on <a href="https://freeicons.io">freeicons.io</a>
                        </figcaption>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 text-center">
                <div class="card">
                    <a href="Events.aspx">
                        <img class="card-img-top" src="../Images/staff_events.png" alt="Card image cap" width="150px">
                    </a>
                    &nbsp;&nbsp;
                    <div class="card-body">
                        <h5 class="card-title"><a href="Events.aspx">View Posted HOA Events</a></h5>
                        <figcaption class="figure-caption">Icon by <a href="https://freeicons.io/profile/3">icon king1</a> on <a href="https://freeicons.io">freeicons.io</a></figcaption>
                    </div>
                </div>
            </div>
        

         <div class="col-lg-4 text-center">
                <div class="card">
                    <a href="ReadStaffXml.aspx">
                        <img class="card-img-top" src="../Images/readxml.png" alt="Card image cap" width="150px">
                    </a>
                    &nbsp;&nbsp;
                    <div class="card-body">
                        <h5 class="card-title"><a href="ReadStaffXml.aspx">Read Staff.xml File</a></h5>
                        <figcaption class="figure-caption">Icon by <a href="https://freeicons.io/vector-file-types-icons/xml-icon-2303">icon king1</a> on <a href="https://freeicons.io">freeicons.io</a></figcaption>
                    </div>
                </div>
        </div>
             </div>
   </div>
        
    <br />
    <br />

     <div id="Admin_Panel" runat="server">
         <div class="col-lg-6 text-center">
                <div class="card">
                    <a href="Events.aspx">
                        <img class="card-img-top" src="../Images/staffcredentials.png" alt="Card image cap" width="150px">
                    </a>
                    &nbsp;&nbsp;
                    <div class="card-body">
                        <h5 class="card-title"><a href="GiveStaffCredentials.aspx">Give Staff Credentials to a Member</a></h5>
                        <figcaption class="figure-caption">Icon by <a href="https://freeicons.io/job-interview/recruitment-staff-employee-selection-icon-38558">icon king1</a> on <a href="https://freeicons.io">freeicons.io</a></figcaption>
                    </div>
                </div>
        </div>

          <div class="col-lg-6 text-center">
                <div class="card">
                    <a href="AddNewStaff.aspx">
                        <img class="card-img-top" src="../Images/AddNewStaff.png" alt="Card image cap" width="150px">
                    </a>
                    &nbsp;&nbsp;
                    <div class="card-body">
                        <h5 class="card-title"><a href="AddNewStaff.aspx">Add New Staff Members</a></h5>
                        <figcaption class="figure-caption">Icon by <a href="https://freeicons.io/social-media-icons/add-friend-icon-12955">icon king1</a> on <a href="https://freeicons.io">freeicons.io</a></figcaption>
                    </div>
                </div>
        </div>


   </div>
   
   
</asp:Content>
