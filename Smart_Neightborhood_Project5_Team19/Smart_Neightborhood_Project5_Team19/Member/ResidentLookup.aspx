<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResidentLookup.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Member.ResidentLookup" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <uc1:LogoutControl runat="server" ID="LogoutControl" />
<h2 class="text-primary">Resident Lookup Service (RESTful)</h2>
    <h3>Find Resident Contact Information by Providing Their First and Last Name</h3>
    
            <p><strong>For Testing:</strong></p>
            <p>1) Brett Miller</p>
            <p>2) Sparky ASU</p>
            <p>3) Try a different name to see that a match is not found</p>
    <div class="row">
        <div class="col-md-3">
            <h3>First Name</h3>
            <asp:TextBox ID="FNameBox" runat="server"></asp:TextBox>
            </div>
        <div class="col-md-3">
            <h3>Last Name</h3>
            <asp:TextBox ID="LNameBox" runat="server"></asp:TextBox>
            </div>
        
        </div>
    <br/>
    <div class="row">
        <div class="offset-md-2">
            <asp:Button ID="SearchButton" class="btn btn-primary" runat="server" Text="Search" Width="180px" Height="35px" OnClick="SearchButton_Click"/>
            </div>
        </div>
    <p>If user found, contact information is displayed below!</p>
    <asp:TextBox ID="LookupResults" runat="server" Height="150px" Width="450px" TextMode="MultiLine"></asp:TextBox>
    

</asp:Content>
