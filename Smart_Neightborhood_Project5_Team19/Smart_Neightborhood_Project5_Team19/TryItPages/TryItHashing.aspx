<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TryItHashing.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.TryItPages.TryItHashing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <h1 class="text-primary">TryIt Page: Hashing Function</h1>
    <h4 class="Lead"> Returns a hashed password</h4>
    <h5>Enter any password and click on Hash Button to display the hashed password</h5>
    <p>&nbsp;</p>
    <p>
        <asp:Label ID="lbltitle" runat="server" Text="Enter Password:"></asp:Label>
        <asp:TextBox ID="txtInput" runat="server" ValidationGroup="HashValidation" Width="227px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnHash" runat="server" OnClick="btnHash_Click" Text="Hash Password" ValidationGroup="HashValidation" class="btn btn-primary" Width="320px" Height="44px" />
    </p>
    <p>
        <asp:Label ID="lbltitle2" runat="server" Font-Size="Large" Text="HashedPassword:" Visible="False"></asp:Label>
        <asp:Label ID="lblHashResponse" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#006600" Text="HashResponse" Visible="False"></asp:Label>
    </p>
</asp:Content>
