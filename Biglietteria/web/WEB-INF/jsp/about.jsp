<%-- 
    Document   : about
    Created on : 23-apr-2016, 11.26.03
    Author     : FSEVERI\marchiori2904
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Museo Egizio - Chi Siamo</title>
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

    </head>
    <body class="tm-gray-bg">
        <!-- Header -->
        <div class="tm-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-3 col-sm-1 tm-site-name-container">
                        <a href="./index" class="tm-site-name">Museo</a>
                    </div>
                    <div class="col-lg-8 col-md-9 col-sm-11">
                        <div class="mobile-menu-icon">
                            <i class="fa fa-bars"></i>
                        </div>
                        <nav class="tm-nav">
                            <ul>
                                <li><a href="./query">Query</a></li>
                                <li><a href="./about" class="active">Chi Siamo</a></li>
                                <li><a href="./tours">Esposizioni</a></li>
                                <li><a href="./contact">Contattaci</a></li>
                                <%
                                        if (session.getAttribute("email") == null) {
                                            out.print("<li><a href=\"./login\">Login</a></li>");
                                        } else {                                           
                                            out.print("<li><a href=\"./logout\">Logout</a></li>");
                                        }
                                %>
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
                            <%
                            if(session.getAttribute("email")==null)out.print("<a href=\"./login\" class=\"tm-banner-link\">Area acquisti</a>");
                            else out.print("<a href=\"./acquisto\" class=\"tm-banner-link\">Area acquisti</a>");
                            %>
                        </div>
                        <img src="./resources/img/egizi1_banner.jpg" alt="Image" />
                    </li>
                    <li>
                        <div class="tm-banner-inner">
                            <h1 class="tm-banner-title">Lorem <span class="tm-yellow-text">Ipsum</span> Dolor</h1>
                            <p class="tm-banner-subtitle">Meravigliose Mostre</p>
                            <%
                            if(session.getAttribute("email")==null)out.print("<a href=\"./login\" class=\"tm-banner-link\">Area acquisti</a>");
                            else out.print("<a href=\"./acquisto\" class=\"tm-banner-link\">Area acquisti</a>");
                            %>
                        </div>
                        <img src="./resources/img/egizi2_banner.jpg" alt="Image" />
                    </li>
                    <li>
                        <div class="tm-banner-inner">
                            <h1 class="tm-banner-title">Proin <span class="tm-yellow-text">Gravida</span> Nibhvell</h1>
                            <p class="tm-banner-subtitle">Reperti Misteriosi</p>
                            <%
                            if(session.getAttribute("email")==null)out.print("<a href=\"./login\" class=\"tm-banner-link\">Area acquisti</a>");
                            else out.print("<a href=\"./acquisto\" class=\"tm-banner-link\">Area acquisti</a>");
                            %>
                        </div>
                        <img src="./resources/img/egizi3_banner.jpg" alt="Image" />
                    </li>
                </ul>
            </div>
        </section>

        <!-- gray bg -->
        <section class="container tm-home-section-1" id="more">
            <div class="row">
                <!-- slider -->
                <div class="flexslider flexslider-about effect2">
                    <ul class="slides">
                        <li>
                            <img src="./resources/img/nophoto.png" alt="image" />
                            <div class="flex-caption">
                                <h2 class="slider-title">Benvenuti nel Museo Egizio!</h2>
                                <h3 class="slider-subtitle">Gravida nibh vel velit auctor aliquet enean sollicitudin lorem quis auctor</h3>
                                <p class="slider-description">Holiday is free Bootstrap v3.3.5 responsive template for tour and travel websites. You can download and use this layout for any purpose. You do not need to provide a credit link to us. If you have any question, feel free to <a href="http://www.facebook.com/templatemo" target="_parent">contact us</a>. <br><br>
                                    Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum.</p>
                                <div class="slider-social">
                                    <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                                    <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                                    <a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
                                    <a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <img src="./resources/img/nophoto.png" alt="image" />
                            <div class="flex-caption">
                                <h2 class="slider-title">Lorem Ipsum</h2>
                                <h3 class="slider-subtitle">Gravida nibh vel velit auctor aliquet enean sollicitudin lorem quis auctor, nisi elit consequat ipsum</h3>
                                <p class="slider-description">Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br><br>
                                    Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris gestas quam, ut aliquam massa nisi.</p>
                                <div class="slider-social">
                                    <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                                    <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                                    <a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
                                    <a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <img src="./resources/img/nophoto.png" alt="image" />
                            <div class="flex-caption">
                                <h2 class="slider-title">Eventi Futuri</h2>
                                <h3 class="slider-subtitle">Gravida nibh vel velit auctor aliquet enean sollicitudin lorem quis auctor, nisi elit consequat ipsum</h3>
                                <p class="slider-description">Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris gestas quam, ut aliquam massa nisi.</p>
                                <div class="slider-social">
                                    <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                                    <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                                    <a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
                                    <a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <img src="./resources/img/nophoto.png" alt="image" />
                            <div class="flex-caption">
                                <h2 class="slider-title">Servizi semre Disponibili!</h2>
                                <h3 class="slider-subtitle">Gravida nibh vel velit auctor aliquet enean sollicitudin lorem quis auctor, nisi elit consequat ipsum</h3>
                                <p class="slider-description">Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris gestas quam, ut aliquam massa nisi.</p>
                                <div class="slider-social">
                                    <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                                    <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                                    <a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
                                    <a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="section-margin-top about-section">
                <div class="row">
                    <div class="tm-section-header">
                        <div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
                        <div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">Chi Siamo</h2></div>
                        <div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="tm-about-box-1">
                            <a href="#"><img src="./resources/img/about-4.jpg" alt="img" class="tm-about-box-1-img"></a>
                            <h3 class="tm-about-box-1-title">Il Capo </h3>
                            <p class="margin-bottom-15 gray-text">Proin gravida nibhvell aliquet. Aenean sollicitudin bibum auctor nisi elit.</p>
                            <div class="gray-text">
                                <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="tm-about-box-1">
                            <a href="#"><img src="./resources/img/about-5.jpg" alt="img" class="tm-about-box-1-img"></a>
                            <h3 class="tm-about-box-1-title"> Il Silenziatore </h3>
                            <p class="margin-bottom-15 gray-text">Proin gravida nibhvell aliquet. Aenean sollicitudin bibum auctor nisi elit.</p>
                            <div class="gray-text">
                                <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="tm-about-box-1">
                            <a href="#"><img src="./resources/img/about-6.jpg" alt="img" class="tm-about-box-1-img"></a>
                            <h3 class="tm-about-box-1-title">La Spia</h3>
                            <p class="margin-bottom-15 gray-text">Proin gravida nibhvell aliquet. Aenean sollicitudin bibum auctor nisi elit.</p>
                            <div class="gray-text">
                                <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="tm-about-box-1">
                            <a href="#"><img src="./resources/img/about-7.jpg" alt="img" class="tm-about-box-1-img"></a>
                            <h3 class="tm-about-box-1-title">Il destinato alle <br>Pubbliche Relazioni</h3>
                            <p class="margin-bottom-15 gray-text">Proin gravida nibhvell aliquet. Aenean sollicitudin bibum auctor nisi elit.</p>
                            <div class="gray-text">
                                <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
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
        <script type="text/javascript" src="./resources/js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
        <script type="text/javascript" src="./resources/js/bootstrap.min.js"></script>					<!-- bootstrap js -->
        <script type="text/javascript" src="./resources/js/jquery.flexslider-min.js"></script>			<!-- flexslider js -->
        <script type="text/javascript" src="./resources/js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
        <script>
            $(function () {

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
            $(window).load(function () {
                // Flexsliders
                $('.flexslider.flexslider-banner').flexslider({
                    controlNav: false
                });
                $('.flexslider').flexslider({
                    animation: "slide",
                    directionNav: false,
                    slideshow: false
                });
            });
        </script>
    </body>
</html>
