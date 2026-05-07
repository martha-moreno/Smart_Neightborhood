<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Member.Register" %>

<%@ Register Src="~/registerControl.ascx" TagPrefix="uc1" TagName="registerControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     <h3 class="text-primary">
       New Residents Registration Form
    </h3>
    <br />
    <uc1:registerControl runat="server" ID="registerControl" />

</asp:Content>
