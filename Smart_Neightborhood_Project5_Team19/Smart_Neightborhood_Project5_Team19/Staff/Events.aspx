<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Staff.Events" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <uc1:LogoutControl runat="server" ID="LogoutControl" />

     <div class="jumbotron">
        <h1>Staff Page</h1>
        <p class="lead">View Posted HOA Events</p>

    </div>

    <div id="Staff_Panel" runat="server">
        <h5>View Posted Events</h5>

        <div class="row">
            <asp:Button ID="ViewEventsBtn" runat="server" Text="View Posted Events" Height="71px" Width="252px" OnClick="ViewEventsBtn_Click" />
            <div>
                <asp:Literal ID="ViewEventsTextBox" Mode="PassThrough" runat="server">Events will display here</asp:Literal>
            </div>
        </div>

    </div>
</asp:Content>
