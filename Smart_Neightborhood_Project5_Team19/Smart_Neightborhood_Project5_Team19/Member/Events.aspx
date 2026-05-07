<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Member.Events" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <uc1:LogoutControl runat="server" ID="LogoutControl" />


<h3>Post An Event</h3>
    <div class="row">
        <div class="col-sm-4">
            <p>
                Event Title:
            </p>
            <asp:TextBox ID="TitleEntry" runat="server"></asp:TextBox>
            <p>
                Event Description:
            </p>
            <asp:TextBox ID="DescEntry" runat="server"></asp:TextBox>
            <p>
                Event Hosted By:
            </p>
            <asp:TextBox ID="HostedEntry" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <p>
                Contact Phone Number:
            </p>
            <asp:TextBox ID="PhoneNumberEntry" runat="server"></asp:TextBox>
            <p>
                Date:
            </p>
            <asp:Calendar ID="EventDateEntry" runat="server" OnSelectionChanged="EventDateEntry_SelectionChanged"></asp:Calendar>
            <p>
                <asp:TextBox ID="DateEntryBox" runat="server" onFocus="DateEntryBox_GotFocus" Width="164px"></asp:TextBox>
                <asp:LinkButton ID="LinkButton1" class="btn btn-primary" runat="server" OnClick="LinkButton1_Click">Show Calendar</asp:LinkButton>
            </p>
            <p>
            </p>
        </div>
        <div class="col-sm-4">
            <asp:Button ID="PostEventBtn" class="btn btn-primary" runat="server" Font-Size="X-Large" Height="75px" OnClick="PostEventBtn_Click" Text="Post Event" Width="257px" />

            <asp:Literal ID="EventResultBox" runat="server"></asp:Literal>
        </div>
    </div>
    <p>
    </p>

    <p>
    </p>
    <p>
    </p>
    <h3>View Events</h3>
    <div class="row">
        <asp:Button ID="ViewEventsBtn" class="btn btn-primary" runat="server" Text="View Posted Events" Height="71px" Width="252px" OnClick="ViewEventsBtn_Click" />
        </div><div class="row">
            <asp:Literal ID="ViewEventsTextBox" Mode="PassThrough" runat="server"></asp:Literal>
        </div>
</asp:Content>
