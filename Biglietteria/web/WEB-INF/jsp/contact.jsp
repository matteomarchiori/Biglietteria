<%-- 
    Document   : contact
    Created on : 23-apr-2016, 11.48.59
    Author     : FSEVERI\marchiori2904
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Museo Egizio - Contattaci</title>
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
                                <li><a href="./index">Home</a></li>
                                <li><a href="./about">Chi Siamo</a></li>
                                <li><a href="./tours">Esposizioni</a></li>
                                <li><a href="./contact" class="active">Contattaci</a></li>
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
                <div class="flexslider effect2 effect2-contact tm-contact-box-1">
                    <ul class="slides">
                        <li>
                            <img src="./resources/img/world-map.png" alt="image" class="contact-image" />
                            <div class="contact-text">
                                <h2 class="slider-title">Lorem Isum Dolor</h2>
                                <h3 class="slider-subtitle">Gravida nibh vel velit auctor aliquet enean sollicitudin lorem quis auctor, nisi elit consequat ipsum</h3>
                                <p class="slider-description">Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. <br><br>
                                    Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris gestas quam, ut aliquam massa nisi.</p>
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
        </section>

        <!-- white bg -->
        <section class="section-padding-bottom">
            <div class="container">
                <div class="row">
                    <div class="tm-section-header section-margin-top">
                        <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
                        <div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Contact Us</h2></div>
                        <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
                    </div>
                </div>
                <div class="row">
                    <!-- contact form -->
                    <form action="#" method="post" class="tm-contact-form">
                        <div class="col-lg-6 col-md-6">
                            <div id="google-map"></div>
                            <div class="contact-social">
                                <a href="#" class="tm-social-icon tm-social-facebook"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="tm-social-icon tm-social-dribbble"><i class="fa fa-dribbble"></i></a>
                                <a href="#" class="tm-social-icon tm-social-twitter"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="tm-social-icon tm-social-instagram"><i class="fa fa-instagram"></i></a>
                                <a href="#" class="tm-social-icon tm-social-google-plus"><i class="fa fa-google-plus"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 tm-contact-form-input">
                            <div class="form-group">
                                <input type="text" id="contact_name" class="form-control" placeholder="NAME" />
                            </div>
                            <div class="form-group">
                                <input type="email" id="contact_email" class="form-control" placeholder="EMAIL" />
                            </div>
                            <div class="form-group">
                                <input type="text" id="contact_subject" class="form-control" placeholder="SUBJECT" />
                            </div>
                            <div class="form-group">
                                <textarea id="contact_message" class="form-control" rows="6" placeholder="MESSAGE"></textarea>
                            </div>
                            <div class="form-group">
                                <button class="tm-submit-btn" type="submit" name="submit">Submit now</button>
                            </div>
                        </div>
                    </form>
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
            /* Google map
             ------------------------------------------------*/
            var map = '';
            var center;

            function initialize() {
                var mapOptions = {
                    zoom: 14,
                    center: new google.maps.LatLng(37.769725, -122.462154),
                    scrollwheel: false
                };

                map = new google.maps.Map(document.getElementById('google-map'), mapOptions);

                google.maps.event.addDomListener(map, 'idle', function () {
                    calculateCenter();
                });

                google.maps.event.addDomListener(window, 'resize', function () {
                    map.setCenter(center);
                });
            }

            function calculateCenter() {
                center = map.getCenter();
            }

            function loadGoogleMap() {
                var script = document.createElement('script');
                script.type = 'text/javascript';
                script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' + 'callback=initialize';
                document.body.appendChild(script);
            }

            // DOM is ready
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

                // Flexslider
                $('.flexslider').flexslider({
                    controlNav: false,
                    directionNav: false
                });

                // Google Map
                loadGoogleMap();
            });
        </script>
    </body>
</html>
