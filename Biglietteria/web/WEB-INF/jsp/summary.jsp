<%--
    Document   : acquisto
    Created on : 26-apr-2016, 8.50.36
    Author     : matteo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="it">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Museo Egizio - Riassunto</title>
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
                height: 700px;
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
        <script type="text/javascript">
            function inserimento() {
                for (var z = 1 ; z <= <%=session.getAttribute("nu")%> ; z+=1) {
                    var j = "<input style='display: none' value='"+ document.getElementById('t'+z).innerHTML + "' id='tipo"+z+"'/><input style='display: none' value='" + document.getElementById('d'+z).innerHTML + "' id='data"+z+"'/><input style='display: none' value='" + document.getElementById('n'+z).innerHTML + "' id='titolo"+z+"'/><input style='display: none' value='" + document.getElementById('c'+z).innerHTML + "' id='categoria"+z+"'/><input style='display: none' value='" + document.getElementById('s'+z).innerHTML + "' id='servizio"+z+"'/>";
                    document.getElementById("nascosti").innerHTML += j;
                }            
            }
            
            function registra(){
                for(var z = 1; z <= <%=session.getAttribute("nu")%> ; z+=1){
                    var tipo = document.getElementById("tipo"+z).value;
                    var data = document.getElementById("data"+z).value;
                    var titolo = document.getElementById("titolo"+z).value;
                    var categoria = document.getElementById("categoria"+z).value;
                    var servizio = document.getElementById("servizio"+z).value;
                    var param = "tipo="+tipo+"&data="+data+"&titolo="+titolo+"&categoria="+categoria+"&servizio="+servizio;
                    var req = new XMLHttpRequest();            
                    req.onreadystatechange = function(){
                        if(req.readyState==4 && req.status==200){
                            req.responseText;
                        }
                    };
                    req.open("POST","registraBiglietti",true);
                    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    req.send(param);
                }
                alert("Registrazione biglietti effettuata.");
                location.href="./index";
            }
        </script>
    </head>
    <body onload="inserimento()" class="tm-gray-bg">
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
                                <li><a href="./about">Chi Siamo</a></li>
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
        
        <section class="container tm-home-section-2">
            <div class="registerText">
                <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
                <div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Riassunto</h2></div>
                <div class="col-lg-4 col-md-6 col-sm-3"><hr></div>
            </div>
            <div class="hotel-search-form">
                <div id="nascosti"></div>
                <div class="infoBox" >
                    <div class="loginTitle" align="center">
                        <h3 class="tm-section-title-box"> Riassunto Informazioni </h3>
                    </div>
                    <div class="tm-form-inner" id="info">
                        <div class="col-lg-4 col-md-4">
                            <input type="button" value="Conferma" onclick='registra()' class="tm-yellow-btn"/>
                            <br/>*N.B. Una volta premuto il bottone non sar&agrave; pi&ugrave; possibile annullare l'acquisto)
                        </div>
                        <div class="col-lg-8 col-md-8" id="informazioni"><%out.print(session.getAttribute("informazioni"));%></div>
                    </div>
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
        <script type="text/javascript" src="./resources/js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
        <script type="text/javascript" src="./resources/js/moment.js"></script>							<!-- moment.js -->
        <script type="text/javascript" src="./resources/js/bootstrap.min.js"></script>					<!-- bootstrap js -->
        <script type="text/javascript" src="./resources/js/bootstrap-datetimepicker.min.js"></script>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
        <script type="text/javascript" src="./resources/js/jquery.flexslider-min.js"></script>
        <!-- Templatemo Script -->
        <script type="text/javascript" src="./resources/js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
        <script>
                                // HTML document is loaded. DOM is ready.
                                $(function () {
                                    $('#hotelCarTabs a').click(function (e) {
                                        e.preventDefault();
                                        $(this).tab('show');
                                    });
                                    $('.date').datetimepicker({
                                        format: 'DD/MM/YYYY'
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
        </script>
    </body>
</html>
