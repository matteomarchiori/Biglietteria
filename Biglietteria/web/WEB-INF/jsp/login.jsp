<%-- 
    Document   : login
    Created on : 23-apr-2016, 11.53.55
    Author     : FSEVERI\marchiori2904
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
    .tm-testimonials-box {
    	width: 300px;
    	height: 300px;
    	background-color: #E8BA0F;
      text-align: center;
      }
    .tm-home-section-1 {
      top : 0px;
    }
    .cssFooter {
      position: relative;
      bottom : -430px;
    }
    .loginBox{
      position: relative;
       margin-left: auto;
       margin-right: auto;
       top: 100px;
       right : 100px;
       width: 400px;
       height: 400px;
       border: 2px solid black;
       border-radius: 5px;
       background-color: white;
    }
    .loginTitle{
      position: relative;
      top:0px;
      width: auto;
      height: 50px;
      border-radius: inherit;
      background-color: #FCDD44;
      padding-top: 10px;
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
              <li><a href="login.html" class ="active">Login</a></li>
						</ul>
					</nav>
	  			</div>
  			</div>
  		</div>
  	</div>


	<section class="container tm-home-section-1">
    <div class="col-md-6 col-md-offset-4">
      <div class="loginBox">
        <div class="loginTitle" align="center">
          <h3> Login </h3>
        </div>
        <form action="#" method="post" class="hotel-search-form">
					<div class="tm-form-inner">
						<div class="form-group">
              <div class="inner-addon left-addon">
                <h4>Email :</h4><input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
              </div>
			      </div>
            <div class="form-group">
              <div class="inner-addon left-addon">
                <h4>Password :</h4><input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" autofocus="">
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" value="remember-me"> Remember me
              </label>
            </div>
            <div class="checkbox">
              <label>
                Non sei ancora registrato? <a href="registrazione.html">Registrati ora!</a>
              </label>
            </div>
            <div class="form-group">
              <button type="submit" name="submit" class="tm-yellow-btn">Accedi</button>
            </div>
			      </div>
					</div>
				</form>
      </div>
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

    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
      <script type="text/javascript" src="js/moment.js"></script>							<!-- moment.js -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>					<!-- bootstrap js -->
    <script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
    <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
    <!--
    <script src="js/froogaloop.js"></script>
    <script src="js/jquery.fitvid.js"></script>
    -->
      <script type="text/javascript" src="js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
    <script>
      // HTML document is loaded. DOM is ready.
      $(function() {

        $('#hotelCarTabs a').click(function (e) {
          e.preventDefault()
          $(this).tab('show')
        })

            $('.date').datetimepicker({
                format: 'MM/DD/YYYY'
              });
              $('.date-time').datetimepicker();

        // https://css-tricks.com/snippets/jquery/smooth-scrolling/
          $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
              var target = $(this.hash);
              target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
              if (target.length) {
                $('html,body').animate({
                  scrollTop: target.offset().top
                }, 1000);
                return false;
              }
            }
          });
      });

      // Load Flexslider when everything is loaded.
      $(window).load(function() {
        // Vimeo API nonsense

    /*
          var player = document.getElementById('player_1');
          $f(player).addEvent('ready', ready);

          function addEvent(element, eventName, callback) {
            if (element.addEventListener) {
              element.addEventListener(eventName, callback, false)
            } else {
              element.attachEvent(eventName, callback, false);
            }
          }

          function ready(player_id) {
            var froogaloop = $f(player_id);
            froogaloop.addEvent('play', function(data) {
              $('.flexslider').flexslider("pause");
            });
            froogaloop.addEvent('pause', function(data) {
              $('.flexslider').flexslider("play");
            });
          }
    */



          // Call fitVid before FlexSlider initializes, so the proper initial height can be retrieved.
    /*

          $(".flexslider")
            .fitVids()
            .flexslider({
              animation: "slide",
              useCSS: false,
              animationLoop: false,
              smoothHeight: true,
              controlNav: false,
              before: function(slider){
                $f(player).api('pause');
              }
          });
    */




    //	For images only
          $('.flexslider').flexslider({
            controlNav: false
          });


        });
    </script>
    </body>
    </html>
