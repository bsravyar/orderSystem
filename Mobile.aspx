<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mobile.aspx.cs" Inherits="Mobile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <form runat="server" id="f1">
<div class="container" style="max-height:900px;overflow-x:scroll;">
    <div class="row">
        </div>
 <div class="row">
     <div class="col-lg-12">
         <div class="table-responsive">
              <asp:GridView ID="GridView1" CssClass= "table table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" >
                  <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="SelectCheckBoxId" runat="server"/>
                    <br />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ImageField DataImageUrlField="phoneimage" ControlStyle-Height="150px" ControlStyle-Width="150px">
<ControlStyle Height="150px" Width="150px"></ControlStyle>
            </asp:ImageField>
            <asp:BoundField DataField="PhoneSubcategoryName" HeaderText="Model" SortExpression="PhoneSubcategoryName" />
            <asp:BoundField DataField="PhonePrice" HeaderText="Price"  SortExpression="PhonePrice" />
            <asp:TemplateField>
                <HeaderTemplate>Select Quantity</HeaderTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>

              <asp:TemplateField>
                <HeaderTemplate>Select Color</HeaderTemplate>
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Black</asp:ListItem>
                        <asp:ListItem>Silver</asp:ListItem>
                        <asp:ListItem>Red</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                </ItemTemplate>
                  <ControlStyle Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>Select Capacity</HeaderTemplate>
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True"  onselectedindexchanged="capacityChange">
                        <asp:ListItem>32GB</asp:ListItem>
                        <asp:ListItem>64GB</asp:ListItem>
                        <asp:ListItem>128GB</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                </ItemTemplate>
                  <ControlStyle Width="100px" />
            </asp:TemplateField>
        </Columns>
                  <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
         </div>
     </div>  
</div> 
    <br />
</div>

        <br />
        s
    <div class="container">
       <div class="row">
     <div class="col-lg-12">
        <asp:Button ID="ViewDetailsBtn" CssClass="btn btn-primary" runat="server" OnClick="ViewDetailsBtn_Click" Text="View Details" Height="40px" Width="150px" />
      </div>
    </div>
         <br />
         <br />

        <asp:GridView ID="GridView2" CssClass= "table table-bordered table-hover" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="324px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="MobileQuantityLbl" runat="server">Total Amount:</asp:Label>
&nbsp;&nbsp;
        <asp:Label ID="totalamountLbl" runat="server" ></asp:Label>
                 
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="ProceedToPaymentBtn" CssClass="btn btn-primary" runat="server" Text="Proceed to payment" OnClick="ProceedToPaymentBtn_Click" Height="40px" Width="160px"/>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:z1807780ConnectionStringDetail %>" SelectCommand="SELECT [phoneimage], [PhoneSubcategoryName], [PhonePrice] FROM [phonesubcategory]"></asp:SqlDataSource>
</p>
</div>
            </form>

    <br />
<div class="container">
         <div class="progress">
  <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: 25%">
    <span class="sr-only">25% Complete (danger)</span>Registration Done
  </div>
  <div class="progress-bar progress-bar-info progress-bar-striped" style="width: 25%">
    <span class="sr-only">25% Complete</span>Login Finished
  </div>
  <div class="progress-bar progress-bar-warning progress-bar-striped active" style="width: 25%">
    <span class="sr-only">25% Complete</span>Select products to continue
  </div>
</div>
</div>

</asp:Content>

