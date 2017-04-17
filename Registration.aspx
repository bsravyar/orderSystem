<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <form runat="server">
    <p>
        &nbsp;</p>
<%--<p>
        <strong>Register</strong></p>
    <p>
        &nbsp;</p>--%>
   <div class="page-header">
  <h1>Register</h1>  
</div> 
        <table style="width:100%;">
            <tr>
                <%--<td style="height: 24px"><strong>User Name</strong></td>--%>
                <td style="height: 24px; width: 224px;">
                    <asp:TextBox ID="UserNameRegisterTxt" width="200" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>
                </td>
                <td style="height: 24px">
                    <asp:RequiredFieldValidator ID="UserNameRegisterRFV" runat="server" ControlToValidate="UserNameRegisterTxt" ErrorMessage="Enter User Name" ForeColor="Red">Enter User Name</asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="usererrorLbl" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <%--<td style="height: 24px"><strong>Password</strong></td>--%>
                <td style="height: 38px; width: 224px;">
                    <asp:TextBox width="200" ID="PasswordRegisterTxt" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                </td>
                <td style="height: 38px">
                    <asp:RequiredFieldValidator ID="PasswordRegisterRFV" runat="server" ControlToValidate="PasswordRegisterTxt" ErrorMessage="Enter Password" ForeColor="Red">Enter Password</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <%--<td><strong>Re-enter password</strong></td>--%>
                <td style="height: 33px; width: 224px">
                    <asp:TextBox width="200" ID="ReenterPasswordTxt" runat="server" TextMode="Password" CssClass="form-control" placeholder="Re-enter Password"></asp:TextBox>
                </td>
                <td style="height: 33px">
                    <asp:RequiredFieldValidator ID="ReenterPasswordRFV" runat="server" ControlToValidate="ReenterPasswordTxt" ErrorMessage="Re-enter Password" ForeColor="Red">Re-enter Password</asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="ReenterPasswordRegisterCV" runat="server" ControlToCompare="PasswordRegisterTxt" ControlToValidate="ReenterPasswordTxt" ErrorMessage="Passwords doesn't match" ForeColor="Red">Passwords doesn&#39;t match</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <%--<td style="height: 24px"><strong>Email</strong></td>--%>
                <td style="height: 39px; width: 224px;">
                    <asp:TextBox width="200" ID="EmailRegisterTxt" runat="server" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
                </td>
                <td style="height: 39px">
                    <asp:RequiredFieldValidator ID="EmailRegisterRFV" runat="server" ControlToValidate="EmailRegisterTxt" ErrorMessage="Enter Email Address" ForeColor="Red">Enter Email Address</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="EmailRegisterREV" runat="server" ControlToValidate="EmailRegisterTxt" ErrorMessage="Enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter valid email</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 22px; width: 224px;">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:z1807780ConnectionString %>" SelectCommand="SELECT * FROM [paymentdetails]"></asp:SqlDataSource>
                </td>
                <td style="height: 22px"></td>
                <td style="height: 22px"></td>
            </tr>
            <tr>
                <td style="width: 224px">
                    <asp:Button ID="RegisterBtn" CssClass="btn btn-primary" runat="server" OnClick="RegisterBtn_Click" Text="Register" Height="40px" Width="100px" />
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 224px">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 224px">
                <asp:HyperLink ID="loginHyperLink" class="btn btn-link" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Login.aspx">Click here to login</asp:HyperLink>
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
  </form>  
        <br />
            <div class="progress">
  <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: 15%">
    <span class="sr-only">0% Complete (danger)</span>Register to begin process
  </div>
</div>
</div>

</asp:Content>



