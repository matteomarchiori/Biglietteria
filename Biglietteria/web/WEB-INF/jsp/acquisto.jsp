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
      top : 500px;
    }
    .registerText {
      position: relative;
      top : 10px;
    }
    .dateBox{
      position: relative;
       margin-left: auto;
       margin-right: auto;
       top: 100px;
       width: 900px;
       height: 200px;
       border: 2px;
       border-radius: 5px;
       background-color: white;
    }
    .cateBox{
      position: relative;
       margin-left: auto;
       margin-right: auto;
       top: 150px;
       width: 900px;
       height: 200px;
       border: 2px;
       border-radius: 5px;
       background-color: white;
    }
    .infoBox{
      position: relative;
       margin-left: auto;
       margin-right: auto;
       top: 200px;
       width: 900px;
       height: 200px;
       border: 2px;
       border-radius: 5px;
       background-color: white;
    }
    .loginTitle{
      position: absolute;
      width: 900px;
      height: 50px;
      border-radius: inherit;
      background-color: #FCDD44;
      padding-top: 10px;
    }
    .selButton{
      position: relative;
      top: 10px;
    }
    .tm-form-inner{
      position: relative;
      top: 40px;
    }
    .tm-section-title-box {
    	text-align: center;
    	text-transform: uppercase;
    	font-size: 24px;
    	font-weight: 300;
    }

        </style>
        <script>
        function prova() {
          var div1 = document.createElement('div');
          div1.className = 'col-lg-4 col-md-4';
          document.getElementsById('info').appendChild(div1);
          var e = document.getElementsById('categoria');
          var e2 = e.options[e.selectedIndex].text;
          div1.appendChild(e2);
        }
        </script>
    </head>
    <body class="tm-gray-bg">
        <%
        out.print(session.getAttribute("email"));
        %>
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
            <h3 class="tm-section-title-box"> Data & Orario </h3>
          </div>
          <form action="#" method="post" class="hotel-search-form">
            <div class="tm-form-inner">
              <div class="col-lg-6 col-md-6" align="center">
                  <div class="form-group">
                  <h4 align="left">Data della Visita :</h4>
      					  <div class="input-group date" id="datetimepicker1">
                    <input id="data" type="text" class="form-control" placeholder="Check-in Date">
                    <span class="input-group-addon">
                        <span class="fa fa-calendar"></span>
                    </span>
      					  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 " align="center">
                <div class="form-group">
                  <h4 align="left">Orario della Visita :</h4>
                  <select id="orario" class="form-control">
                    <option value="">-- Orario -- </option>
                    <option value="nove">9:00</option>
                    <option value="dodici">12:00</option>
                    <option value="diciassette">17:00</option>
                    <option value="venti">20:00</option>
                  </select>
                </div>
              </div>
          </div>
      </div>
      <div class="cateBox">
          <div class="loginTitle" align="center">
            <h3 class="tm-section-title-box"> Categorie & Servizi </h3>
          </div>
            <div class="tm-form-inner">
              <div class="col-lg-6 col-md-6" align="center">
                <div class="form-group">
                  <h4 align="left">Categorie</h4>
                  <select id="categoria" class="form-control">
                    <option value="">-- Categorie -- </option>
                    <option value="intero">Intero</option>
                    <option value="bambino">Bambino</option>
                    <option value="studente">Studente</option>
                    <option value="anzianidisabili">Anziani&Disabili</option>
                    <option value="militari">Militari</option>
                  </select>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 " align="center">
                <div class="form-group">
                  <h4 align="left">Servizi</h4>
                  <select id="servizio" class="form-control">
                    <option value="">-- Servizi -- </option>
                    <option value="guida">Guida</option>
                    <option value="audio">Audio-Guida</option>
                    <option value="catalogo">Catalogo</option>
                  </select>
                </div>
              </div>
            </div>
        </div>
        <div class="infoBox" >
          <div class="loginTitle" align="center">
            <h3 class="tm-section-title-box"> Riassunto Informazioni </h3>
          </div>
          <div class="tm-form-inner" id="info">
            <div class="col-lg-4 col-md-4">
              <button class="tm-yellow-btn" onclick="prova()">Seleziona</button>
            </div>
          </div>
      </div>
      </form>
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
