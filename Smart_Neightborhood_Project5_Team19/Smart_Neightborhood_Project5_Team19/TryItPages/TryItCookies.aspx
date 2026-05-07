<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TryItCookies.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.TryItPages.TryItCookies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h3 class="text-primary">&nbsp;</h3>
    <h1 class="text-primary">TryIt Page: Cookies & Session State</h1>
    <h4 class="lead">Displays cookies and session state data captured from registration form</h4>
    <h5>Click on Display Button to show data AFTER your registration is complete</h5>
    <p>
        <asp:Button ID="btnDisplay" runat="server" Text="Display" class="btn btn-primary" Width="320px" Height="44px" OnClick="btnDisplay_Click"/>
    </p>
    <p>
            &nbsp;</p>
    <p>
        <asp:Label ID="lblcookiestitle" runat="server" Text="Cookies:" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>
        <asp:Label ID="lblCookies" runat="server" Text="lblCookies" Font-Bold="True" Font-Size="Large" ForeColor="#339933" Visible="False"></asp:Label>
    </p>
</asp:Content>
