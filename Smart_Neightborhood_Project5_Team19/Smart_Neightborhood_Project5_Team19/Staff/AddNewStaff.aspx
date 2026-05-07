<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewStaff.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.TryItPages.AddNewStaff" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    
    <uc1:LogoutControl runat="server" ID="LogoutControl" />


    <div class="jumbotron">
        <h1>Staff Page</h1>
        <p class="lead">Adds new Staff Members</p>
    </div>

    
       
       
            <asp:Panel ID="Panel3" runat="server" Wrap="False" ForeColor="#006600">
                <h1 class="text-primary">Add Staff Member to Staff.xml File</h1>
                <asp:Label ID="lbluser" runat="server" Text="Enter username:" ForeColor="Black"></asp:Label> <asp:TextBox ID="txtusername" runat="server" ForeColor="Black"></asp:TextBox>
                <asp:Label ID="lblpswd" runat="server" Text="Enter password:" ForeColor="Black"></asp:Label> <asp:TextBox ID="txtpassword" runat="server" ForeColor="Black"></asp:TextBox>
                <asp:Button class="btn btn-primary" ID="btnAddStaff" runat="server" Text="Add Staff Member" OnClick="btnAddStaff_Click" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
        
     
</asp:Content>
