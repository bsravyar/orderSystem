<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Thankyou.aspx.cs" Inherits="Thankyou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <p>
        <br />
    </p>
   <%-- <p>
        <strong>Thank you</strong></p>--%>
    <div class="page-header">
  <h1>Thankyou</h1>  
</div>
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
   <div class="progress-bar progress-bar-success progress-bar-striped" style="width: 25%">
    <span class="sr-only">25% Complete</span> Order successfully placed
  </div>
</div>
        </div>
</asp:Content>

