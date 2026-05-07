<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Login" %>

<%@ Register Src="~/LoginControl.ascx" TagPrefix="uc1" TagName="LoginControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <h3 class="text-primary">LogIn Page </h3>
    <p>Please login to access your Member or Staff Account</p>
    <div>
        <uc1:LoginControl runat="server" id="LoginControl" />
    </div>
</asp:Content>
