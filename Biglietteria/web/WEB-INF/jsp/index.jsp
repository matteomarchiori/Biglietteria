<%-- 
    Document   : index
    Created on : 19-apr-2016, 8.58.50
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
                                <li><a href="index.html" class="active">Home</a></li>
                                <li><a href="about.html">Chi Siamo</a></li>
                                <li><a href="tours.html">Esposizioni</a></li>
                                <li><a href="contact.html">Biglietteria</a></li>
                                <li><a href="./login">Login</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>


        <!-- Banner -->
        <section class="tm-banner">
            <!-- Flexslider -->
            <div class="flexslider flexslider-banner">
                <ul class="slides">
                    <li>
                        <div class="tm-banner-inner">
                            <h1 class="tm-banner-title">Visita il <span class="tm-yellow-text">Miglior</span> Museo Egizio</h1>
                            <p class="tm-banner-subtitle">lorem ipsum</p>
                            <a href="#more" class="tm-banner-link">Learn More</a>
                        </div>
                        <img src="img/egizi1_banner.jpg" alt="Image" />
                    </li>
                    <li>
                        <div class="tm-banner-inner">
                            <h1 class="tm-banner-title">Lorem <span class="tm-yellow-text">Ipsum</span> Dolor</h1>
                            <p class="tm-banner-subtitle">Meravigliose Mostre</p>
                            <a href="#more" class="tm-banner-link">Learn More</a>
                        </div>
                        <img src="img/egizi2_banner.jpg" alt="Image" />
                    </li>
                    <li>
                        <div class="tm-banner-inner">
                            <h1 class="tm-banner-title">Proin <span class="tm-yellow-text">Gravida</span> Nibhvell</h1>
                            <p class="tm-banner-subtitle">Reperti Misteriosi</p>
                            <a href="#more" class="tm-banner-link">Learn More</a>
                        </div>
                        <img src="img/egizi3_banner.jpg" alt="Image" />
                    </li>
                </ul>
            </div>
        </section>

        <!-- gray bg -->
        <section class="container tm-home-section-1" id="more">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-6">
                    <div class="tm-home-box-2">
                        <img src="img/intero_icon.png" alt="image" class="img-responsive">
                        <a href="#">
                            <div class="tm-yellow-gradient-bg tm-city-price-container">
                                <span>Intero</span>
                                <span>€8,00</span>
                                <span>${email}</span>
                                <span>${password}</span>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-6">
                    <div class="tm-home-box-2">
                        <img src="img/student_icon.png" alt="image" class="img-responsive">
                        <a href="#">
                            <div class="tm-yellow-gradient-bg tm-city-price-container">
                                <span>Studente <br>(15-18 anni)</span>
                                <span>[-25%]</span>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-6">
                    <div class="tm-home-box-2">
                        <img src="img/children_icon.png" alt="image" class="img-responsive">
                        <a href="#">
                            <div class="tm-yellow-gradient-bg tm-city-price-container">
                                <span>Bambino <br>(0-15 anni)</span>
                                <span>[-50%]</span>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-6">
                    <div class="tm-home-box-2">
                        <img src="img/disabled_icon.png" alt="image" class="img-responsive">
                        <a href="#">
                            <div class="tm-yellow-gradient-bg tm-city-price-container">
                                <span>Anziani <br>& Disabili</span>
                                <span>[-80%]</span>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-6">
                    <div class="tm-home-box-2">
                        <img src="img/military_icon.png" alt="image" class="img-responsive">
                        <a href="#">
                            <div class="tm-yellow-gradient-bg tm-city-price-container">
                                <span>Militari [-80%]</span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <div class="section-margin-top">
            <div class="row">
                <div class="tm-section-header">
                    <div class="col-lg-4 col-md-4 col-sm-3"><hr></div>
                    <div class="col-lg-4 col-md-4 col-sm-6"><h2 class="tm-section-title">Lorem Ipsum Dolor</h2></div>
                    <div class="col-lg-4 col-md-4 col-sm-3"><hr></div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
                    <div class="tm-home-box-2 tm-home-box-2-right">
                        <img src="img/egizi1_index.jpg" alt="image" class="img-responsive">
                        <h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
                        <p class="tm-date">lorem ipsum</p>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
                    <div class="tm-home-box-2 tm-home-box-2-center">
                        <img src="img/egizi2_index.jpg" alt="image" class="img-responsive">
                        <h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
                        <p class="tm-date">lorem ipsum</p>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
                    <div class="tm-home-box-2 tm-home-box-2-center">
                        <img src="img/egizi3_index.jpg" alt="image" class="img-responsive">
                        <h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
                        <p class="tm-date">lorem ipsum</p>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
                    <div class="tm-home-box-2 tm-home-box-2-center">
                        <img src="img/egizi4_index.jpg" alt="image" class="img-responsive">
                        <h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
                        <p class="tm-date">lorem ipsum</p>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
                    <div class="tm-home-box-2 tm-home-box-2-right">
                        <img src="img/noimage.png" alt="image" class="img-responsive">
                        <h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
                        <p class="tm-date">lorem ipsum</p>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
                    <div class="tm-home-box-2 tm-home-box-2-left">
                        <img src="img/noimage.png" alt="image" class="img-responsive">
                        <h3>Proin Gravida Nibhvel Lorem Quis Bind</h3>
                        <p class="tm-date">lorem ipsum</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <p class="home-description">Lorem Ipsum</p>
            </div>
        </div>

        <!-- white bg -->
        <section class="tm-white-bg section-padding-bottom">
            <div class="container">
                <div class="row">
                    <div class="tm-section-header section-margin-top">
                        <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
                        <div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Info</h2></div>
                        <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
                    </div>
                    <div class="col-lg-12">
                        <div class="tm-what-we-do-right">
                            <div class="tm-about-box-2 margin-bottom-30">
                                <img src="img/egizi1_evento.jpg" alt="image" class="tm-about-box-2-img">
                                <div class="tm-about-box-2-text">
                                    <h3 class="tm-about-box-2-title">Evento Esposizione 1</h3>
                                    <p class="tm-about-box-2-description gray-text">Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis.</p>
                                    <p class="tm-about-box-2-footer"><a href="#">Scopri di più!</a></p>
                                </div>
                            </div>
                            <div class="tm-about-box-2">
                                <img src="img/egizi2_evento.jpg" alt="image" class="tm-about-box-2-img">
                                <div class="tm-about-box-2-text">
                                    <h3 class="tm-about-box-2-title">Evento Esposizione 2</h3>
                                    <p class="tm-about-box-2-description gray-text">Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis.</p>
                                    <p class="tm-about-box-2-footer"><a href="#">Scopri di più!</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="tm-testimonials-box">
                            <h3 class="tm-testimonials-title">Infobox</h3>
                            <div class="tm-testimonials-content">
                                <div class="tm-testimonial">
                                    <img src="img/clock.png" alt="image">
                                    <p>
                                        <span><strong class="text-uppercase">Orari di Apertura</strong> <br> Lun: 9:00/14:00 <br> Mar-Dom: 8:30/19:30</span>
                                    </p>
                                </div>
                                <div class="tm-testimonial">
                                    <img src="img/location.png" alt="image">
                                    <p>
                                        <span><strong class="text-uppercase">Indirizzo</strong> <br> Via Nome della Strada 10,<br> 35100 Padova </span>
                                    </p>
                                </div>
                                <div class="tm-testimonial">
                                    <img src="img/mail.png" alt="image">
                                    <p>
                                        <span><strong class="text-uppercase">Info & Prenotazioni</strong> <br> Tel. - 000 1111 222<br> info@museo.it</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <footer class="tm-black-bg">
            <div class="container">
                <div class="row">
                    <p class="tm-copyright-text">Copyright &copy; 2084 Your Company Name

                        | Designed by <a rel="nofollow" href="http://www.templatemo.com" target="_parent">templatemo</a></p>
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
            $(function () {

                $('#hotelCarTabs a').click(function (e) {
                    e.preventDefault()
                    $(this).tab('show')
                })

                $('.date').datetimepicker({
                    format: 'MM/DD/YYYY'
                });
                $('.date-time').datetimepicker();

                // https://css-tricks.com/snippets/jquery/smooth-scrolling/
                $('a[href*=#]:not([href=#])').click(function () {
                    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                        var target = $(this.hash);
                        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
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
            $(window).load(function () {
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
