<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HOAServices.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Member.HOAServices" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />

    <uc1:LogoutControl runat="server" ID="LogoutControl" />
    <div class="jumbotron">
        <div>&nbsp;&nbsp;&nbsp; </div>
         <div> </div>
        
        <h1>HOA Services</h1>
        <p class="lead">You can easily check your HOA invoice balance, make a payment and report an HOA violation</p>      

    </div>
    <br />
  
    <div class="row">

        <div class="col-lg-6 text-center ">
            <div class="card">
                <a href="Bill.aspx"> 
                <img class="card-img-top" src="../Images/MakePayment.jpg" alt="Card image cap" width="250px">
                </a>
                    <div class="card-body text-center">
                    <h5 class="card-title"><a href="Bill.aspx">Make a Payment</a></h5>    
                </div>
            </div>
        </div>
   

    
        <div class="col-lg-6 text-center">
            <div class="card">
                <a href="Report.aspx"> 
                <img class="card-img-top" src="../Images/report.jpg" alt="Card image cap" width="250px">
                </a>
                    <div class="card-body text-center">
                        <h5 class="card-title"><a href="Report.aspx">Report HOA Violation</a></h5>      
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
