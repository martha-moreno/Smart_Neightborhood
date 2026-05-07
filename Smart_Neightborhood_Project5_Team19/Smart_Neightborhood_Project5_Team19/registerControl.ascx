<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="registerControl.ascx.cs" Inherits="Smart_Neightborhood_Project5_Team19.registerControl" %>

<style type="text/css">
    .auto-style2 {
        width: 139px;
    }
    .auto-style3 {
        width: 493px;
    }
    .auto-style4 {
        width: 100%;
    }
</style>

<table class="auto-style4">
    <tr>
        <td class="auto-style2">Username:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtUsernameRegister" runat="server" ValidationGroup="registerValidation" Width="295px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ValidationGroup="registerValidator" ErrorMessage="The username field is required" ControlToValidate="txtUsernameRegister">*</asp:RequiredFieldValidator>
        &nbsp;<br />
            <asp:Label ID="lblDuplicatedUser" runat="server" ForeColor="#FF3300" Text="lblDuplicatedUser" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Password:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtPasswordRegister" runat="server" ValidationGroup="registerValidator" Width="295px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ValidationGroup="registerValidator" ErrorMessage="The password field is requiered" ControlToValidate="txtPasswordRegister">*</asp:RequiredFieldValidator>
        &nbsp;
            <br />
            <asp:Label ID="lblWarningPassword" runat="server" ForeColor="#FF3300" Text="lblWarningPassword" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Image ID="Image1" runat="server" Height="34px" Width="298px" />
        &nbsp;&nbsp;
            <asp:Button ID="btnRefreshImage" runat="server" OnClick="btnRefreshImage_Click" Text="Refresh" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Type Image Text:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtCaptcha" runat="server" ValidationGroup="registerValidator" Width="292px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ValidationGroup="registerValidator" ControlToValidate="txtCaptcha">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblCaptchaWarning" runat="server" ForeColor="#FF3300" Text="lblCaptchaWarning" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <br />
            <asp:Button class="btn btn-primary" ID="btnRegister" runat="server" Text="Register" ValidationGroup="registerValidator" Height="31px" OnClick="btnRegister_Click" Width="165px" />
        </td>
    </tr>
</table>


