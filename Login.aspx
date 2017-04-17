<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div class="container">
    <form runat="server">
 
    <div class="page-header">
  <h1>Login</h1>  
</div>
    <table style="width:100%;">
        <tr>
            <%--<td><strong>User Name</strong></td>--%>
            <td style="height: 34px; width: 217px">
                <asp:TextBox width="200" ID="UserNameTxt" runat="server" CssClass="form-control" placeholder ="User Name"></asp:TextBox>
            </td>
            <td style="height: 34px">
                <asp:RequiredFieldValidator ID="UserNameRFV" runat="server" ControlToValidate="UserNameTxt" ErrorMessage="Please enter User Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <%--<td style="height: 24px"><strong>Password</strong></td>--%>
            <td style="height: 41px; width: 217px;">
                <asp:TextBox width="200" ID="PasswordTxt" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password" style="margin-top: 0"></asp:TextBox>
            </td>
            <td style="height: 41px">
                <asp:RequiredFieldValidator ID="PasswordRFV" runat="server" ControlToValidate="PasswordTxt" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 217px">
                <asp:Button ID="LoginBtn" CssClass="btn btn-primary" runat="server" OnClick="LoginBtn_Click" Text="Login" Height="40px" Width="100px" />
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 217px">&nbsp;</td>
            <td>
                <asp:Label ID="loginerrorlbl" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 217px">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 217px">
                <asp:HyperLink ID="SignUpHyperLink" class="btn btn-link" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Registration.aspx">Click here to register</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
     </table>
    </form>
        <br />
               <div class="progress">
  <div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
    <span class="sr-only">20% Complete (danger)</span>Registration Done
  </div>
</div>
</asp:Content>

