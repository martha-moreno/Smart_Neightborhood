<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Member.Bill" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />

    <uc1:LogoutControl runat="server" ID="LogoutControl" />
<br />
        <h3 class="text-primary">HOA Billing & Payment Portal </h3>

    <div class="row" style="margin:auto; margin-top:60px">

        <div class="card col-lg-16" style="padding:30px; border: 1px solid lightgray; width:500px; height:350px; background-color:#F5F5F5";>
          <div class="card-header" style="font-size:large; font-weight:bold; color:black">
            <div> Current Balance: $<span> <asp:Label ID="lblBalance" runat="server" Text="lblBalance"></asp:Label> </span>
              </div>
          </div>
          <div class="card-body">
            <h5 class="card-title"></h5>
              <div>

                  <br />
                  <br />
                  <asp:Label ID="lblBalance0" runat="server" Text="Enter amount:"></asp:Label>
                  &nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="txtBalance" runat="server" Width="300px"></asp:TextBox>
                  <asp:Label ID="lblWarningBalance" runat="server" ForeColor="Red" Text="lblWarningBalance" Visible="False"></asp:Label>
                  <asp:Label ID="lblexcessbalance" runat="server" ForeColor="Red" Text="lblexcessbalance" Visible="False"></asp:Label>
                  <br />
                  <br />
                  <asp:Label ID="lblNameCC" runat="server" Text="Credit Card #:"></asp:Label>
                  &nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtCreditCard" runat="server" Width="300px"></asp:TextBox>
                  <asp:Label ID="lblWarningCC" runat="server" ForeColor="Red" Text="lblWarningCC" Visible="False"></asp:Label>
                  <br />
                  <br />
                  <asp:Label ID="lblNameCVV" runat="server" Text="CVV:"></asp:Label>
                
                  <asp:TextBox ID="txtCVV" runat="server" Width="50px"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;
                  
                  <asp:Label ID="lblNameExpM" runat="server" Text="Expiration Date  (MM/yyyy):"></asp:Label>
                  &nbsp;&nbsp;
                  <asp:TextBox ID="txtExpDate" runat="server" Width="100px"></asp:TextBox>
                  <asp:Label ID="lblWarningCVV" runat="server" ForeColor="Red" Text="lblWarningCVV" Visible="False"></asp:Label>
                  <asp:Label ID="lblWarningExpDate" runat="server" ForeColor="Red" Text="lblWarningExpDate" Visible="False"></asp:Label>

              </div>
              <br />
              <div>
                  <strong>HINT:</strong> Example of a valid credit card number: 4417123456789113
              </div>
              
              <br />
              <br />
           <div> 
              
              <asp:Button class="btn btn-primary" ID="btnMakePayment" runat="server" OnClick="btnMakePayment_Click" Text="Make a Payment" />
           </div>
              
          </div>

        </div>
        <br />
</div>

    <div>
                    <asp:Label ID="lblResponse" runat="server" Text="lblResponse"></asp:Label>
              </div>
</asp:Content>
