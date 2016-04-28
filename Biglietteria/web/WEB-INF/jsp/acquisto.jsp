<%-- 
    Document   : acquisto
    Created on : 26-apr-2016, 8.50.36
    Author     : matteo
--%>

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
  <link href="./resources/css/font-awesome.min.css" rel="stylesheet">
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="./resources/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <link href="./resources/css/flexslider.css" rel="stylesheet">
  <link href="./resources/css/templatemo-style.css" rel="stylesheet">

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
							<li><a href="./login">Home</a></li>
							<li><a href="./about">Chi Siamo</a></li>
							<li><a href="./tours">Esposizioni</a></li>
							<li><a href="./contact">Contattaci</a></li>
              <li><a href="./login">Login</a></li>
						</ul>
					</nav>
	  			</div>
  			</div>
  		</div>
  	</div>

            <section class="container tm-home-section-2">
      <div class="registerText">
        <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
        <div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Acquisto</h2></div>
        <div class="col-lg-4 col-md-6 col-sm-3"><hr></div>
      </div>
      <div class="dateBox">
          <div class="loginTitle" align="center">
            <h3 class="tm-section-title"> Data & Orario </h3>
          </div>
          <form action="#" method="post" class="hotel-search-form">
            <div class="tm-form-inner">
              <div class="col-lg-4 col-md-4" align="center">
                  <div class="form-group">
                  <h4 align="left">Data della Visita :</h4>
      					  <div class="input-group date" id="datetimepicker1">
                    <input type="text" class="form-control" placeholder="Check-in Date">
                    <span class="input-group-addon">
                        <span class="fa fa-calendar"></span>
                    </span>
      					  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 " align="center">
                <div class="form-group">
                  <h4 align="left">Orario della Visita :</h4>
                  <select class="form-control">
                    <option value="">-- Orario -- </option>
                    <option value="nove">9:00</option>
                    <option value="dodici">12:00</option>
                    <option value="diciassette">17:00</option>
                    <option value="venti">20:00</option>
                  </select>
                </div>
              </div>
              <div class="col-lg-4 col-md-4" align="center">
                <div class="form-group">
                  <button type="submit" name="submit" class="tm-yellow-btn selButton">Seleziona</button>
              </div>
            </div>
          </div>
          </form>
      </div>
      <div class="cateBox">
          <div class="loginTitle" align="center">
            <h3 class="tm-section-title"> Categorie & Servizi </h3>
          </div>
          <form action="#" method="post" class="hotel-search-form">
            <div class="tm-form-inner">
              <div class="col-lg-4 col-md-4" align="center">
                <div class="form-group">
                  <h4 align="left">Categorie</h4>
                  <select class="form-control">
                    <option value="">-- Categorie -- </option>
                    <option value="intero">Intero</option>
                    <option value="bambino">Bambino</option>
                    <option value="studente">Studente</option>
                    <option value="anzianidisabili">Anziani&Disabili</option>
                    <option value="militari">Militari</option>
                  </select>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 " align="center">
                <div class="form-group">
                  <h4 align="left">Servizi</h4>
                  <select class="form-control">
                    <option value="">-- Servizi -- </option>
                    <option value="guida">Guida</option>
                    <option value="audio">Audio-Guida</option>
                    <option value="catalogo">Catalogo</option>
                  </select>
                </div>
              </div>
              <div class="col-lg-4 col-md-4" align="center">
                <div class="form-group">
                  <button type="submit" name="submit" class="tm-yellow-btn selButton">Seleziona</button>
                </div>
              </div>
            </div>
          </form>
          <div class="infoBox">
            <div class="loginTitle" align="center">
              <h3 class="tm-section-title-box"> Riassunto Informazioni </h3>
            </div>
            <div class="col-lg-4 col-md-4 col-md-offset-9">
              <button type="submit" name="submit" class="tm-yellow-btn selButton">Seleziona</button>
            </div>
          </div>
      </div>
    </section>


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
