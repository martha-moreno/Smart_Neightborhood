<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GetCountyPopulation.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Member.GetCountyPopulation" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <uc1:LogoutControl runat="server" ID="LogoutControl" />

    <div class="row">
                <h3 class="text-primary">Get County's Population</h3>
            </div>
            <div class="row">
                <br />
                <asp:Label ID="lblEnterZipCode2" runat="server" Text="Enter zip code:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtZipCode1" runat="server"></asp:TextBox>
                    &nbsp;<asp:Label ID="lblWarning" runat="server" ForeColor="Red" Text="lblWarning" Visible="False"></asp:Label>
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Button ID="btnGetPopulation" runat="server" class="btn btn-primary" Height="44px" OnClick="btnGetPopulation_Click" Text="Get Population" Width="320px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <br />
                    <asp:Label ID="lblPopulationData" runat="server" Font-Bold="True" ForeColor="#000099" Text="County's Population:"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="txtPopulation" runat="server" Enabled="False" ForeColor="#006600"></asp:TextBox>
            </div>
  
</asp:Content>
