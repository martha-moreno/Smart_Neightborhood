<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FindYourNearestStore.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Member.FindYourNearestStore" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    
    <uc1:LogoutControl runat="server" ID="LogoutControl" />

    <div> 
        <h3 class="text-primary">Find your nearest store</h3>
            <br />
            <asp:Label ID="lblNameZipCode" runat="server" Text="Enter zip code:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtZipCode" runat="server" Width="193px"></asp:TextBox>
            <asp:Label ID="lblWarningZipCode" runat="server" ForeColor="Red" Text="lblWarningZipCode" Visible="False"></asp:Label>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                <br />
            <asp:Label ID="lblNameStoreName" runat="server" Text="Enter store name:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtStoreName" runat="server" Width="189px"></asp:TextBox>
            <asp:Label ID="lblWarningStoreName" runat="server" ForeColor="Red" Text="lblWarningStoreName" Visible="False"></asp:Label>
      
        <br />
        <br />
      
        <p>
            <asp:Button ID="btnFindNearestStore" runat="server" class="btn btn-primary" Height="44px"  OnClick="btnFindNearestStore_Click" Text="Find Nearest Store" Width="320px" />
        </p>
        <p>
            <asp:Label ID="lblNameStoreAddress" runat="server" Font-Bold="True" ForeColor="#000099" Text="Store Address:"></asp:Label>
            <asp:TextBox ID="txtStoreAddress" runat="server" Enabled="False" ForeColor="#006600" Width="470px"></asp:TextBox>
        </p>

     </div>
</asp:Content>
