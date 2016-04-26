<%-- 
    Document   : newjsp
    Created on : 8-apr-2016, 13.18.57
    Author     : matteo
--%>

<%@page import="mappa.Visitatore"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Museo Egizio</title>
<!--
Holiday Template
http://www.templatemo.com/tm-475-holiday
-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <link href="css/flexslider.css" rel="stylesheet">
  <link href="css/templatemo-style.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    .cssFooter {
      position: relative;
      top : 290px;
    }
    .registerText {
      position: relative;
      top : 20px;
    }
    </style>
  </head>
  <body class="tm-gray-bg">
  	<!-- Header -->
  	<div class="tm-header">
  		<div class="container">
  			<div class="row">
  				<div class="col-lg-4 col-md-3 col-sm-1 tm-site-name-container">
  					<a href="#" class="tm-site-name">Museo</a>
  				</div>
	  			<div class="col-lg-8 col-md-9 col-sm-11">
	  				<div class="mobile-menu-icon">
		              <i class="fa fa-bars"></i>
		            </div>
	  				<nav class="tm-nav">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="about.html">Chi Siamo</a></li>
							<li><a href="tours.html">Esposizioni</a></li>
							<li><a href="contact.html">Contattaci</a></li>
              <li><a href="login.html">Login</a></li>
						</ul>
					</nav>
	  			</div>
  			</div>
  		</div>
  	</div>

    <section class="container tm-home-section-2">
      <div class="registerText">
        <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
        <div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Registrazione</h2></div>
        <div class="col-lg-4 col-md-6 col-sm-3"><hr></div>
      </div>
      <div class="col-lg-6 col-sm-6 col-lg-offset-3">
        <form action="#" method="post" class="hotel-search-form">
					<div class="tm-form-inner">
						<div class="form-group">
              <div class="inner-addon left-addon">
                <h4>Email :</h4>
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
              </div>
			      </div>
            <div class="form-group">
              <div class="inner-addon left-addon">
                <h4>Password :</h4><input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" autofocus="">
              </div>
            </div>
            <div class="form-group">
              <div class="inner-addon left-addon">
                <h4>Tipo :
                  <select>
                    <option value="mastercard">MasterCard</option>
                    <option value="paypal">PayPal</option>
                    <option value="americanexpress">American Express</option>
                    <option value="visa">Visa</option>
                  </select>
                </h4>
            </div>
          </div>
          <div class="form-group">
            <div class="inner-addon left-addon">
              <h4>Numero Carta di Credito :</h4>
              <input type="text" id="cartadicredito" class="form-control" placeholder="Numero Carta di Credito" required="" autofocus="">
            </div>
          </div>
          <div class="form-group">
            <h4> Data di Scadenza :</h4>
            <div class="col-lg-2 col-md-2">
              <input type="text" id="inputPassword" class="form-control" placeholder="MM" required="" autofocus="">
            </div>
            <div class="col-lg-2 col-md-2" align="center">
              <h4 align="center">/</h4>
            </div>
            <div class="col-lg-2 col-md-2">
              <input type="text" id="inputPassword" class="form-control" placeholder="YY" required="" autofocus="">
            </div>
          </div>
          <div class="form-group">
            <div align="right">
              <button type="submit" name="submit" class="tm-yellow-btn">Registrati!</button>
            </div>
          </div>
				</div>
				</form>
      </div>
    </section>

    <footer class=" cssFooter">
      <div class="tm-black-bg">
      <div class="container">
        <div class="row">
          <p class="tm-copyright-text">Copyright &copy; 2084 Your Company Name

                  | Designed by <a rel="nofollow" href="http://www.templatemo.com" target="_parent">templatemo</a></p>
        </div>
      </div>
    </div>
    </footer>
