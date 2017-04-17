<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MakePayment.aspx.cs" Inherits="MakePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
    <form runat="server">
    <p>
        &nbsp;
    </p>

    <div class="page-header">
        <h1>Payment</h1>
    </div>
    <table style="width: 100%;">
        <tr>
            <td style="width: 177px">Total Amount You Owe</td>
            <td>
                <asp:Label ID="GrandTotalLbl" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 177px"><strong></strong></td>
            <td>&nbsp;</td>
        </tr>
    </table>

    
    
    <table style="width: 100%;">
        <tr>
            <%-- <td style="height: 24px"><strong>Name</strong></td>--%>
            <td style="height: 32px; width: 96px;">
                <strong>Name on card</strong></td>
            <td style="height: 32px; width: 291px;">
                <asp:TextBox ID="UserNamePaymentTxt" runat="server" CssClass="form-control" Height="30px" style="margin-left: 0"></asp:TextBox>
            </td>
            <td style="height: 32px; width: 165px;">
                <asp:RequiredFieldValidator ID="NamePaymentRFV" runat="server" ControlToValidate="UserNamePaymentTxt" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>Address</strong></td>
            <td style="width: 96px; height: 66px;">
                <asp:TextBox ID="AddressPaymentTxt" runat="server" TextMode="MultiLine" CssClass="form-control" Height="60px" Width="290px"></asp:TextBox>
                </td>
            <td style="width: 291px; height: 66px;">
                <asp:RequiredFieldValidator ID="AddressPaymentRFV" runat="server" ControlToValidate="AddressPaymentTxt" ErrorMessage="Billing Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 165px; height: 66px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px"><strong>City</strong></td>
            <td style="width: 291px; height: 31px;">
                <asp:TextBox ID="CityTxt" runat="server" CssClass="form-control" Height="30px"></asp:TextBox>
                </td>
            <td style="width: 165px; height: 31px;">
                &nbsp;</td>
            <td style="width: 210px; height: 31px;"></td>
        </tr>
        <tr>
            <td style="width: 96px"><strong>Zip Code</strong></td>
            <td style="width: 291px; height: 28px;">
                <asp:TextBox ID="ZipCodeTxt" runat="server" CssClass="form-control" Height="30px"></asp:TextBox>
                </td>
            <td style="width: 165px; height: 28px;">
                &nbsp;</td>
            <td style="width: 210px; height: 28px;"></td>
        </tr>
        <tr>
            <td style="width: 96px; height: 48px;"><%--<strong>payment method</strong>--%></td>
            <td style="width: 291px; height: 48px;">
                <div class="form-group">
                <asp:RadioButtonList ID="PaymentMethodRBL" runat="server" Height="82px" Width="165px">
                     <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>American express</asp:ListItem>
                    <asp:ListItem>Discover</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                
                <%--<i class="fa fa-cc-visa" style="font-size:48px;color:red"></i>--%>
            </td>
            <td style="width: 165px; height: 48px;">
                <asp:RequiredFieldValidator ID="PaymentMethodRFV" runat="server" ControlToValidate="PaymentMethodRBL" ErrorMessage="Select Payment Method" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 48px; width: 210px;">
              </td>
        </tr>
        <tr>
            
            <td style="width: 96px; height: 34px;">
                <strong>Card Number</strong></td>
            <td style="width: 291px; height: 34px;">
                <asp:TextBox ID="CardNumberTxt" runat="server" CssClass="form-control" Height="30px" MaxLength="10"></asp:TextBox>
            </td>
            <td style="width: 165px">
                <asp:TextBox ID="CVVTxt" runat="server" MaxLength="3" TextMode="Password" CssClass="form-control" placeholder="CVV" Height="30px" Width="82px"></asp:TextBox>
            </td>
            <td style="width: 210px; height: 34px;">
                <asp:RequiredFieldValidator ID="CardNumberPaymentRFV" runat="server" ControlToValidate="CardNumberTxt" ErrorMessage="Enter Card Number" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="CVVPaymentRFV" runat="server" ControlToValidate="CVVTxt" ErrorMessage="Enter CVV" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px; height: 28px;"><strong>Expiration Date</strong></td>
            <td style="width: 291px; height: 28px;">
                <asp:DropDownList ID="MonthDDL" runat="server" Height="30px">
                    <asp:ListItem>January</asp:ListItem>
                    <asp:ListItem>February</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="YearDDL" runat="server" Height="30px" Width="81px">
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    <asp:ListItem>2022</asp:ListItem>
                    <asp:ListItem>2023</asp:ListItem>
                    <asp:ListItem>2024</asp:ListItem>
                    <asp:ListItem>2025</asp:ListItem>
                    <asp:ListItem>2026</asp:ListItem>
                    <asp:ListItem>2027</asp:ListItem>
                    <asp:ListItem>2028</asp:ListItem>
                    <asp:ListItem>2029</asp:ListItem>
                    <asp:ListItem>2030</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 165px; height: 28px;">
                <asp:RequiredFieldValidator ID="MonthPaymentRFV" runat="server" ControlToValidate="MonthDDL" ErrorMessage="Select Month" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="YearPaymentRFV" runat="server" ControlToValidate="YearDDL" ErrorMessage="Select Year" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 28px; width: 210px;">
                &nbsp;
                </td>
        </tr>
        <tr>
            <td style="height: 56px; width: 96px;"></td>
            <td style="height: 56px; width: 291px;">
                <asp:Button ID="SubmitPaymentBtn" runat="server" OnClick="SubmitPaymentBtn_Click" Text="Submit" Height="30px" Width="170px" CssClass="btn btn-success"/>
            </td>
            <td style="height: 56px; width: 165px;">
                </td>
            <td style="height: 56px; width: 210px;"></td>
        </tr>
        <tr>
            <td style="width: 96px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:z1807780ConnectionStringPayment %>" SelectCommand="SELECT [Name], [Address], [Card Number] AS Card_Number FROM [paymentdetails]"></asp:SqlDataSource>
            </td>
            <td style="width: 291px">&nbsp;</td>
            <td style="width: 165px">&nbsp;</td>
            <td style="width: 210px">&nbsp;</td>
        </tr>
    </table>
    </form>
        <br />
<div class="progress">
  <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: 25%">
    <span class="sr-only">25% Complete (danger)</span>Registration Done
  </div>
  <div class="progress-bar progress-bar-info progress-bar-striped" style="width: 25%">
    <span class="sr-only">25% Complete</span>Login Finished
  </div>
  <div class="progress-bar progress-bar-warning progress-bar-striped" style="width: 25%">
    <span class="sr-only">25% Complete</span> Products Added to Cart
  </div>
      <div class="progress-bar progress-bar-success progress-bar-striped active" style="width: 25%">
    <span class="sr-only">25% Complete</span> Enter payment details to finish the order
  </div>
</div>
</div>
    </asp:Content>

