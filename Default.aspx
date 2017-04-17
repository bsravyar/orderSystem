<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <link href="Content/bootstrap.css" rel="stylesheet" />

  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      /*width: 100%;
      height:75%;
      margin:auto;*/
  }
  </style>
    
    <div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="Images/i7red.jpg" alt="iPhone7" width="1140" height="345">
        <div class="carousel-caption">
          <h3>Iphone 7</h3>
          <p>Iphone 7 Red is spectacular as it looks..</p>
        </div>
      </div>

      <div class="item">
        <img src="Images/i7plusjetblack.jpg" alt="iPhone7 Plus" width="1140" height="345">
        <div class="carousel-caption">
          <h3>Iphone 7</h3>
          <p>Iphone 7 jet black is one of the finest material.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="Images/nedge.jpg" alt="Nokia Edge" width="1140" height="345">
        <div class="carousel-caption">
          <h3>Nokia Edge</h3>
          <p>Nokia is back with its innovative idea.</p>
        </div>
      </div>

      <div class="item">
        <img src="Images/sgn7.jpg"alt="Samsung Galaxy Note" width="1140" height="345">
        <div class="carousel-caption">
          <h3>Samsung Galaxy Note 7</h3>
          <p>Samsung Galaxy note 7.</p>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->

    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br />
    <br />


    <%-- Collapse example of Button using Bootstrap classes --%>

    <div class="container">
      <div class="jumbotron" style="color: #000000">
            <h1>The Mobile Store</h1>
    <p class="lead">Are you looking for a mobile!? This is the right place for you to choose your desired mobile with latest technology. Buy your favorite mobile by sitting at your home.</p>
                        <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#registerLogin" aria-expanded="true" aria-controls="collapseRegister">
                  Let's get started
                </button>
          <br />
          <br />
       <div class="collapse" id="registerLogin">
                <a class="btn btn-primary" href="Registration.aspx" role="button">Register</a>
                <a class="btn btn-primary" href="Login.aspx" role="button">Login</a>
     </div>
        </div>
    </div>
    <!-- Images -->
     <%--<div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Gallery</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="Images/apple-iphone-7-plus-red-gallery-img-1.jpg" alt="iPhone7 Plus" width="700" height="450">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                        <img class="img-responsive img-portfolio img-hover" src="Images/Nokia-Lumia-505-price-in-pakistan-2013-2014.jpg" alt="iPhone7 Plus" width="700" height="450">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                         <img class="img-responsive img-portfolio img-hover" src="Images/samsung-galaxy-core-max(1).jpg" alt="iPhone7 Plus" width="700" height="450">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                         <img class="img-responsive img-portfolio img-hover" src="Images/samsung-galaxy-j1.jpg" alt="iPhone7 Plus" width="700" height="450">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="Images/Nokia-P1.jpg" alt="iPhone7 Plus" width="700" height="450">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="Images/Samsung-Galaxy-S7-Edge-photos-16-840x560.jpg" alt="iPhone7 Plus" width="700" height="450">
                </a>
            </div>
        </div>--%>

  
</asp:Content>
