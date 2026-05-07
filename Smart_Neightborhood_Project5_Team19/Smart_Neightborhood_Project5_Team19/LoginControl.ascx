<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginControl.ascx.cs" Inherits="Smart_Neightborhood_Project5_Team19.LoginControl" %>


<asp:Panel ID="loginPanel" runat="server">
    <table style="width: 100%;">
        <tr>
            <td>
                <asp:Label ID="usernameLabel" runat="server" Text="Username:  "></asp:Label>
                <asp:TextBox ID="usernameEntry" runat="server" Width="190px" ValidationGroup="loginvalidation"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="usernameEntry" ErrorMessage="The username field is required" ForeColor="Red" ValidationGroup="registerValidator">*</asp:RequiredFieldValidator>
                <p>
                    <asp:Label ID="lblWarningusername" runat="server" ForeColor="#FF3300" Text="lblWarningusername" Visible="False"></asp:Label>
                </p>
                <asp:Label ID="passwordLabel" runat="server" Text="Password:  "></asp:Label>
                <asp:TextBox ID="passwordEntry" runat="server" TextMode="Password" ValidationGroup="loginvalidation" Width="190px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passwordEntry" ErrorMessage="The username field is required" ForeColor="Red" ValidationGroup="loginvalidation">*</asp:RequiredFieldValidator>
                <p>
                    <asp:Label ID="lblWarningpassword" runat="server" ForeColor="#FF3300" Text="lblWarningusername  " Visible="False"></asp:Label>
                </p>
                <asp:Button ID="loginBtn" runat="server" class="btn btn-primary" OnClick="loginBtn_Click" Text="Login" ValidationGroup="loginvalidation" />
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#FF3300" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="resultsLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    &nbsp;<strong class="text-primary">HINT: Member Credentials:</strong><br /> <strong>username:</strong>TA_Member <br /><strong>password:</strong>&nbsp;Cse44598!
    <p></p>
    &nbsp;<strong class="text-primary">HINT: Staff Credentials: </strong><br /><strong>username:</strong>TA <strong><br />password:</strong>&nbsp; Cse44598!
    <p></p>
    &nbsp;<strong class="text-primary">HINT: Admin Credentials:</strong><br /><strong>username:</strong>admin<strong><br />password:</strong>&nbsp; Cse44598!
    
</asp:Panel>



