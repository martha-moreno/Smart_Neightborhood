<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReadStaffXml.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Staff.ReadStaffXml" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />

    <uc1:LogoutControl runat="server" ID="LogoutControl" />

    <div class="jumbotron">
        <h1>Staff Page</h1>
        <p class="lead">Display current Staff Members</p>
    </div>
    
   
            <asp:Panel ID="Panel2" runat="server">
                <h1 class="text-primary">Read Staff.xml File</h1>     
                <h5>Click on Read Xml.xml to display all current usernames of Staff Members</h5>
                <p>
                    <asp:Button ID="Button1" runat="server" OnClick="btnReadXml_Click" Text="Read Staff.xml" class="btn btn-primary" Height="44px" width="320px" />
                </p>
                <p>&nbsp;</p>
                <p>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </p>
                <p>&nbsp;</p>
            </asp:Panel>
    
</asp:Content>
