<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LogoutControl.ascx.cs" Inherits="Smart_Neightborhood_Project5_Team19.LogoutControl" %>

<asp:Panel class="text-success" ID="Panel1" runat="server">
    Welcome,
    <asp:Label ID="welcomeName" runat="server" Text="User"></asp:Label>
    !&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button  class="btn btn-primary" ID="logoutBtn" runat="server" OnClick="logoutBtn_Click" Text="Logout" />
</asp:Panel>
