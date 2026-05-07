<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Member.Dashboard" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <uc1:LogoutControl runat="server" ID="LogoutControl" />
    <br />
    <div class="jumbotron">
        
         <div> </div>
        
        <h1>Members Page</h1>
        <p class="lead">This Resident's Dashboard provides the following services:</p>      
       <hr class="my-4">
        <ol>
            <li>Find your nearest store</li>
            <li>News Articles on topics of your interest</li>
            <li>5-Day Forecast</li>
            <li>Solar Energy effectiveness</li>
            <li>Post an upcoming event</li>
            <li>Get county's population</li>
            <li>Resident Lookup</li>
            <li>HOA Services: view bill,pay bill, upload a violation report </li>
            
        </ol>
       
    </div>
   
    <div class="row text-center">
        <div class="col-lg-3 text-center">
            <div class="card">
                <a href="FindYourNearestStore.aspx"> 
                <img class="card-img-top" src="../Images/find-store.png" alt="Card image cap" width="150px">
                </a>
                    <div class="card-body">
                    <h5 class="card-title"><a href="FindYourNearestStore.aspx">Find Nearest Store</a></h5>    
                </div>
            </div>
        </div>
        <div class="col-lg-3 text-center">
            <div class="card">
                <a href="ArticleNews.aspx"> 
                <img class="card-img-top" src="../Images/news.png" alt="Card image cap" width="150px">
                </a>
                    <div class="card-body">
                    <h5 class="card-title"><a href="ArticleNews.aspx">Article News</a></h5>    
                </div>
            </div>
        </div>
        <div class="col-lg-3 text-center">
            <div class="card">
                <a href="WeatherForecast.aspx" > 
                <img class="card-img-top" src="../Images/weather-forecast.png" alt="Card image cap" width="150px">
                </a>
                    <div class="card-body">
                    <h5 class="card-title"><a href="WeatherForecast.aspx">Weather Forecast</a></h5>    
                </div>
            </div>
        </div>
        <div class="col-lg-3 text-center">
            <div class="card">
                <a href="SolarEnergy.aspx"> 
                <img class="card-img-top" src="../Images/solar-energy.png" alt="Card image cap" width="150px">
                </a>
                    <div class="card-body">
                    <h5 class="card-title"><a href="SolarEnergy.aspx">Solar Energy</a></h5>    
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 text-center">
            <div class="card">
                <a href="Events.aspx"> 
                <img class="card-img-top" src="../Images/events.png" alt="Card image cap" width="150px">
                </a>
                    <div class="card-body">
                    <h5 class="card-title"><a href="Events.aspx">Post an Event</a></h5>    
                </div>
            </div>
        </div>
        <div class="col-lg-3 text-center">
            <div class="card">
                <a href="GetCountyPopulation.aspx"> 
                <img class="card-img-top" src="../Images/people.png" alt="Card image cap" width="150px">
                </a>
                    <div class="card-body">
                    <h5 class="card-title"><a href="GetCountyPopulation.aspx">Get Population Data</a></h5>    
                </div>
            </div>
        </div>
        <div class="col-lg-3 text-center">
            <div class="card">
                <a href="ResidentLookup.aspx"> 
                <img class="card-img-top" src="../Images/residentlookup.png" alt="Card image cap" width="150px">
                </a>
                    <div class="card-body">
                    <h5 class="card-title"><a href="ResidentLookup.aspx">Resident LookUp</a></h5>    
                </div>
            </div>
        </div>
        <div class="col-lg-3 text-center">
            <div class="card">
                <a href="HOAServices.aspx"> 
                <img class="card-img-top" src="../Images/HOAservices.png" alt="Card image cap" width="150px">
                </a>
                    <div class="card-body">
                    <h5 class="card-title"><a href="HOAServices.aspx">HOA Services</a></h5>    
                </div>
            </div>
        </div>
    </div>


    
</asp:Content>
