<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TryItReadXml.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.TryItPages.TryItReadXml" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <p>
        &nbsp;</p>
    
       <h1 class="text-primary">TryIt Page: Read Member.xml File</h1>
        <h4 class="Lead">Retrieves registered members information such as username and password stored in Member.xml</h4>
        <h5>Click on Read Member.xml to display the results</h5>
    <p>
        <asp:Button ID="btnReadXml" runat="server" OnClick="btnReadXml_Click" Text="Read Member.xml" class="btn btn-primary" Height="44px" width="320px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
