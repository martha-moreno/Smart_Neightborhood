<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Violations.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Staff.Violations" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <uc1:LogoutControl runat="server" ID="LogoutControl" />
    <div class="jumbotron">

        <h1>Staff Page</h1>
        <p class="lead">View Reported HOA Violations</p>      
       

        
     <div ID="Staff_Panel" runat="server">
        <h5>View Uploaded Images</h5>
        <asp:DropDownList ID="ViolationsList" runat="server" OnSelectedIndexChanged="ViolationsList_SelectedIndexChanged">
                    </asp:DropDownList> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="ViewImage" runat="server" CssClass="btn btn-primary" OnClick="ViewImage_Click" Text="View Selected Image" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Image ID="ViewViolationImage" runat="server" />
         </div>
       
    </div>


</asp:Content>
