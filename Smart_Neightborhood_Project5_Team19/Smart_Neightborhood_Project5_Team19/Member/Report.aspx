<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Smart_Neightborhood_Project5_Team19.Member.Report" %>

<%@ Register Src="~/LogoutControl.ascx" TagPrefix="uc1" TagName="LogoutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <uc1:LogoutControl runat="server" ID="LogoutControl" />
    <div> 
        <h3 class="text-primary">Report an HOA Violation</h3>
            <br />
  
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="UploadBtn" class="btn btn-primary" runat="server" OnClick="UploadBtn_Click" Text="Click To Upload File" />
                    <br />
                    <asp:Image ID="Image1" runat="server" />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="75px" ReadOnly="True" TextMode="MultiLine" Width="500px"></asp:TextBox>


        <br />


     </div>


</asp:Content>
