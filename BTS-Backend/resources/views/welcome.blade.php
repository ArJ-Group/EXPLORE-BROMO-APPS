<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Bromo Reserve Apps</title>

    <link rel="apple-touch-icon" href="landing/images/xapple-touch-icon.png.pagespeed.ic.SUMjwTF81_.png">
    <link rel="shortcut icon" type="image/ico" href="landing/images/favicon.ico">

    <script src="landing/js/vendor/modernizr-2.8.3.min.js"></script>

    <link rel="stylesheet" href="landing/css/A.bootstrap.min.css owl.carousel.min.css themify-icons.css magnific-popup.css animate.css normalize.css,Mcc.IJ-3K0qDT8.css.pagespeed.cf.9VzMsLWkF2.css">

    <link rel="stylesheet" href="landing/A.style.css css,,_responsive.css,Mcc.LmXSnjbPCo.css.pagespeed.cf.pEnwCftlCH.css">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        .gambar {
            display: inline-block;
        }
    </style>
</head>

<body data-spy="scroll" data-target="#primary-menu">
    <div class="preloader">
        <div class="sk-folding-cube">
            <div class="sk-cube1 sk-cube"></div>
            <div class="sk-cube2 sk-cube"></div>
            <div class="sk-cube4 sk-cube"></div>
            <div class="sk-cube3 sk-cube"></div>
        </div>
    </div>

    <div class="mainmenu-area" data-spy="affix" data-offset-top="100">
        <div class="container">


            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#primary-menu">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>


            <nav class="collapse navbar-collapse" id="primary-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a style="color: black;font-weight: bold;background-color: burlywood;" href="#home-page">Home</a></li>
                    <li><a href="#service-page" style="color: black;font-weight: bold;background-color: burlywood;">Feature</a></li>
                    <li><a href="#team-page" style="color: black;font-weight: bold;background-color: burlywood;">Team</a></li>
                    @if (Route::has('login'))

                    @auth
                    <li style="background-color: #ED8975;">
                        <a href="{{ url('/dashboard') }}" class="text-sm text-gray-700 ">Dashboard</a>
                    </li>
                    @else
                    <li style="background-color: #ED8975">
                        <a href="{{ route('login') }}" class="text-sm bold" style="color: black;font-weight: bold;">Login</a>
                    </li>
                    @if (Route::has('register'))
                    <li style="background-color:#ED8975 ;">
                        <a href="{{ route('register') }}" class="ml-4 text-sm text-black " style="color: black;font-weight: bold;">REGISTER</a>
                    </li>
                    @endif
                    @endauth

                    @endif
                    <!--
                  
                    <li><a href="#feature-page">Features</a></li>
                    <li><a href="#price-page">Pricing</a></li>
                    <li><a href="#team-page">Team</a></li>
                    <li><a href="#faq-page">FAQ</a></li>
                    <li><a href="#blog-page">Blog</a></li>
                    <li><a href="#contact-page">Contact</a></li>
                    -->
                </ul>
            </nav>
        </div>
    </div>


    <header class="header-area overlay full-height relative v-center" id="home-page">
        <div class="absolute anlge-bg"></div>
        <div class="container">


            <div class="row v-center">

                <div class="col-xs-12 col-md-7 header-text">
                    <div class="logo" style="position:fixed;top:max(-15px)">
                        <a href="/" class="navbar-brand logo">
                            <img id="bromo" alt="logo" src="images/logo.png" style="height: max(130px);">
                        </a>
                    </div>

                    <h2>Explore Bromo Tengger Semeru</h2>
                    <p>Mount Bromo, is an active volcano and part of the Tengger massif, in East Java, Indonesia. At 2,329 meters (7,641 ft) 
                        it is not the highest peak of the massif, but is the best known. The massif area is one of the most visited 
                        tourist attractions in East Java, Indonesia. The volcano belongs to the Bromo Tengger Semeru National Park.</p>

                    <div class="gambar">

                        <a href="#">
                            <img id="apple" alt="apple" src="images/apple.png" style="height: 80px;">
                        </a>
                        <a href="#">
                            <img id="google" alt="google" src="images/google.png" style="height: 95px;">
                        </a>
                    </div>

                </div>
                <div class="hidden-xs hidden-sm col-md-5 text-right">
                    <div class="screen-box screen-slider">
                        <div class="item">
                            <img src="landing/images/screen-1.jpg" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/xscreen-2.jpg.pagespeed.ic.AdW5xnugFC.jpg" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/screen-3.jpg" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/xscreen-4.jpg.pagespeed.ic.tKqeW-Pj78.jpg" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/screen-5.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!--
    <section class="gray-bg section-padding" id="service-page">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-4">
                    <div class="box">
                        <div class="box-icon">
                            <img src="landing/images/service-icon-1.png" alt="">
                        </div>
                        <h4>EASY TO USE</h4>
                        <p>Lorem ipsum dolor sit amt, consectet adop adipisicing elit, sed do eiusmod tepo
                            raraincididunt ugt labore.</p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="box">
                        <div class="box-icon">
                            <img src="landing/images/service-icon-2.png" alt="">
                        </div>
                        <h4>AWESOEM DESIGN</h4>
                        <p>Lorem ipsum dolor sit amt, consectet adop adipisicing elit, sed do eiusmod tepo
                            raraincididunt ugt labore.</p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="box">
                        <div class="box-icon">
                            <img src="landing/images/service-icon-3.png" alt="">
                        </div>
                        <h4>EASY TO CUSTOMAIZE</h4>
                        <p>Lorem ipsum dolor sit amt, consectet adop adipisicing elit, sed do eiusmod tepo
                            raraincididunt ugt labore.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    -->
    <section class="angle-bg sky-bg section-padding" id="support-page">
        <div class="container">
            <div class="row text-center">
                <div class="col-xs-12">
                    <div class="clients">
                        <div class="item">
                            <img src="landing/images/themeforest.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/coadcanyon.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/graphicriver.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/docean.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/audiojungle.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/actividen.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/photodone.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/videgub.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/themeforest.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/coadcanyon.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/graphicriver.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/docean.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/audiojungle.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/actividen.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/photodone.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="landing/images/videgub.gif" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="angle-bg sky-bg section-padding" id="service-page">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div id="caption_slide" class="carousel slide caption-slider" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <div class="item active row">
                                <div class="v-center">
                                    <div class="col-xs-12 col-md-6">
                                        <div class="caption-title" data-animation="animated fadeInUp">
                                            <h2>Camping Tools</h2>
                                        </div>
                                        <div class="caption-desc" data-animation="animated fadeInUp">
                                            <p>This camping tool is a feature that provides everything related 
                                                to tools that do have a correlation with later when camping</p>
                                        </div>
                                        <div class="caption-button" data-animation="animated fadeInUp">
                                            <a href="#" class="button">Read more</a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo one" data-animation="animated fadeInRight">
                                            <img src="landing/images/screen-1.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo two" data-animation="animated fadeInRight">
                                            <img src="landing/images/xscreen-2.jpg.pagespeed.ic.AdW5xnugFC.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item row">
                                <div class="v-center">
                                    <div class="col-xs-12 col-md-6">
                                        <div class="caption-title" data-animation="animated fadeInUp">
                                            <h2>Jeeps Car</h2>
                                        </div>
                                        <div class="caption-desc" data-animation="animated fadeInUp">
                                            <p>Jeeps car is a feature where later the provider can use this feature 
                                                to rent a jeeps car easily by using this BTS app</p>
                                        </div>
                                        <div class="caption-button" data-animation="animated fadeInUp">
                                            <a href="#" class="button">Read more</a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo one" data-animation="animated fadeInRight">
                                            <img src="landing/images/screen-3.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo two" data-animation="animated fadeInRight">
                                            <img src="landing/images/xscreen-4.jpg.pagespeed.ic.tKqeW-Pj78.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item row">
                                <div class="v-center">
                                    <div class="col-xs-12 col-md-6">
                                        <div class="caption-title" data-animation="animated fadeInUp">
                                            <h2>Inn</h2>
                                        </div>
                                        <div class="caption-desc" data-animation="animated fadeInUp">
                                            <p>Inn is a very important feature for 
                                                people who want to visit Bromo Semeru because here this feature provides lodging if you want to see Bromo later than usual</p>
                                        </div>
                                        <div class="caption-button" data-animation="animated fadeInUp">
                                            <a href="#" class="button">Read more</a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo one" data-animation="animated fadeInRight">
                                            <img src="landing/images/xscreen-7.jpg.pagespeed.ic.wYtsuKbr89.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo two" data-animation="animated fadeInRight">
                                            <img src="landing/images/xscreen-2.jpg.pagespeed.ic.AdW5xnugFC.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item row">
                                <div class="v-center">
                                    <div class="col-xs-12 col-md-6">
                                        <div class="caption-title" data-animation="animated fadeInUp">
                                            <h2>Trip</h2>
                                        </div>
                                        <div class="caption-desc" data-animation="animated fadeInUp">
                                            <p>Trip is a feature where later there will be a 
                                                feature that is used to travel to Bromo itself and here provides some transportation if you want to go to Bromo easily and quickly</p>
                                        </div>
                                        <div class="caption-button" data-animation="animated fadeInUp">
                                            <a href="#" class="button">Read more</a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo one" data-animation="animated fadeInRight">
                                            <img src="landing/images/screen-3.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo two" data-animation="animated fadeInRight">
                                            <img src="landing/images/xscreen-4.jpg.pagespeed.ic.tKqeW-Pj78.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <ol class="carousel-indicators caption-indector">
                            <li data-target="#caption_slide" data-slide-to="0" class="active">
                                <strong>Camping Tools </strong>Provide your camp needs.
                            </li>
                            <li data-target="#caption_slide" data-slide-to="1">
                                <strong>Jeeps Car </strong>Rent a jeep car to exploring Bromo Tengger Semeru(Drived Included).
                            </li>
                            <li data-target="#caption_slide" data-slide-to="2">
                                <strong>Inn </strong>Book a home stay to keep you close with Bromo Tengger Semeru.
                            </li>
                            <li data-target="#caption_slide" data-slide-to="3">
                                <strong>Trip </strong>Ready to pick you up and take you back to home after exploring Bromo Tengger Semeru.
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--
    <section class="gray-bg section-padding" id="feature-page">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                    <div class="page-title">
                        <h2>SPECIAL FEATURES</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit voluptates, temporibus at,
                            facere harum fugiat!</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="box">
                        <div class="box-icon">
                            <img src="landing/images/xportfolio-icon-1.png.pagespeed.ic.lOw2jsxWoP.png" alt="">
                        </div>
                        <h3>Creative Design</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est adipisci,</p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="box">
                        <div class="box-icon">
                            <img src="landing/images/portfolio-icon-2.png" alt="">
                        </div>
                        <h3>Unlimited Features</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est adipisci,</p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="box">
                        <div class="box-icon">
                            <img src="landing/images/portfolio-icon-3.png" alt="">
                        </div>
                        <h3>Full Free Chat</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est adipisci,</p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="box">
                        <div class="box-icon">
                            <img src="landing/images/portfolio-icon-4.png" alt="">
                        </div>
                        <h3>Retina ready</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est adipisci,</p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="box">
                        <div class="box-icon">
                            <img src="landing/images/portfolio-icon-5.png" alt="">
                        </div>
                        <h3>High Resolution</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est adipisci,</p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="box">
                        <div class="box-icon">
                            <img src="landing/images/portfolio-icon-6.png" alt="">
                        </div>
                        <h3>Clean Codes</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est adipisci,</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="price-area overlay section-padding" id="price-page">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                    <div class="page-title">
                        <h2>Afortable Price</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit voluptates, temporibus at,
                            facere harum fugiat!</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-4">
                    <div class="price-table">
                        <h3 class="text-uppercase price-title">Basic</h3>
                        <hr>
                        <ul class="list-unstyled">
                            <li><strong class="amount">$ <span class="big">20</span></strong>/Month</li>
                            <li>100 MB Disk Space</li>
                            <li>2 Subdomains</li>
                            <li>5 Email Accounts</li>
                            <li>Webmail Support</li>
                            <li>Customer Support 24/7</li>
                        </ul>
                        <hr>
                        <a href="#" class="button">Purchase</a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="price-table active">
                        <span class="price-info"><span class="ti-crown"></span></span>
                        <h3 class="text-uppercase price-title">STABDARD</h3>
                        <hr>
                        <ul class="list-unstyled">
                            <li><strong class="amount">$ <span class="big">39</span></strong>/Month</li>
                            <li>100 MB Disk Space</li>
                            <li>2 Subdomains</li>
                            <li>5 Email Accounts</li>
                            <li>Webmail Support</li>
                            <li>Customer Support 24/7</li>
                        </ul>
                        <hr>
                        <a href="#" class="button">Purchase</a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="price-table">
                        <h3 class="text-uppercase price-title">UNLIMITED</h3>
                        <hr>
                        <ul class="list-unstyled">
                            <li><strong class="amount">$ <span class="big">59</span></strong>/Month</li>
                            <li>100 MB Disk Space</li>
                            <li>2 Subdomains</li>
                            <li>5 Email Accounts</li>
                            <li>Webmail Support</li>
                            <li>Customer Support 24/7</li>
                        </ul>
                        <hr>
                        <a href="#" class="button">Purchase</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    -->
    <section class="section-padding gray-bg" id="team-page">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                    <div class="page-title">
                        <h2>Special team</h2>
                        <p>solid team and very integrity !</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="single-team">
                        <div class="team-photo">
                            <img src="images/team/alif.jpeg" style="height: max(250px);" alt="">
                        </div>
                        <h4>M Alif Ananda</h4>
                        <h6>Project Manager</h6>
                        <h6>Android Frontend Developer</h6>
                        <ul class="social-menu">
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>
                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="single-team">
                        <div class="team-photo">
                            <img src="images/team/2.jpeg" style="height: max(250px);" alt="">
                        </div>
                        <h4>Ariono Septian</h4>
                        <h6>FullStack Developer</h6>
                        <h6>Special Creator</h6>
                        <ul class="social-menu">
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>
                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="single-team">
                        <div class="team-photo">
                            <img src="images/team/rjn.png" style="height: max(250px);" alt="">
                        </div>
                        <h4>Rajendra Rakha </h4>
                        <h6>FullStack Developer</h6>
                        <h6>Website Frontend Specialist </h6>
                        <ul class="social-menu">
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>
                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="single-team">
                        <div class="team-photo">
                            <img src="landing/images/meut.jpg" style="height: max(250px);" alt="">
                        </div>
                        <h4>Meuti Zari</h4>
                        <h6>UI&UX Designer</h6>
                        <h6>Android Backend Specialist</h6>
                        <ul class="social-menu">
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>
                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--
    <section class="testimonial-area section-padding gray-bg overlay">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                    <div class="page-title">
                        <h2>Client says</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit voluptates, temporibus at,
                            facere harum fugiat!</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
                    <div class="testimonials">
                        <div class="testimonial">
                            <div class="testimonial-photo">
                                <img src="landing/images/avatar-small-1.png" alt="">
                            </div>
                            <h3>AR Rahman</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel vero dolore officiis, velit
                                id libero illum harum hic magni, quae repellendus adipisci possimus saepe nostrum
                                doloribus repudiandae asperiores commodi voluptate.</p>
                        </div>
                        <div class="testimonial">
                            <div class="testimonial-photo">
                                <img src="landing/images/avatar-small-2.png" alt="">
                            </div>
                            <h3>AR Rahman</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel vero dolore officiis, velit
                                id libero illum harum hic magni, quae repellendus adipisci possimus saepe nostrum
                                doloribus repudiandae asperiores commodi voluptate.</p>
                        </div>
                        <div class="testimonial">
                            <div class="testimonial-photo">
                                <img src="landing/images/avatar-small-3.png" alt="">
                            </div>
                            <h3>AR Rahman</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel vero dolore officiis, velit
                                id libero illum harum hic magni, quae repellendus adipisci possimus saepe nostrum
                                doloribus repudiandae asperiores commodi voluptate.</p>
                        </div>
                        <div class="testimonial">
                            <div class="testimonial-photo">
                                <img src="landing/images/avatar-small-4.png" alt="">
                            </div>
                            <h3>AR Rahman</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel vero dolore officiis, velit
                                id libero illum harum hic magni, quae repellendus adipisci possimus saepe nostrum
                                doloribus repudiandae asperiores commodi voluptate.</p>
                        </div>
                        <div class="testimonial">
                            <div class="testimonial-photo">
                                <img src="landing/images/avatar-small-5.png" alt="">
                            </div>
                            <h3>AR Rahman</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel vero dolore officiis, velit
                                id libero illum harum hic magni, quae repellendus adipisci possimus saepe nostrum
                                doloribus repudiandae asperiores commodi voluptate.</p>
                        </div>
                        <div class="testimonial">
                            <div class="testimonial-photo">
                                <img src="landing/images/avatar-small-6.png" alt="">
                            </div>
                            <h3>AR Rahman</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel vero dolore officiis, velit
                                id libero illum harum hic magni, quae repellendus adipisci possimus saepe nostrum
                                doloribus repudiandae asperiores commodi voluptate.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="gray-bg section-padding" id="faq-page">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                    <div class="page-title">
                        <h2>Frequently Asked Questions</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit voluptates, temporibus at,
                            facere harum fugiat!</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
                    <div class="panel-group" id="accordion">
                        <div class="panel">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="true">Sedeiusmod tempor inccsetetur aliquatraiy?</a>
                            </h4>
                            <div id="collapse1" class="panel-collapse collapse in">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodas temporo
                                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrd
                                    exercitation ullamco laboris nisi ut aliquip ex comodo consequat. Duis aute dolor in
                                    reprehenderit.</p>
                            </div>
                        </div>
                        <div class="panel">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Tempor inccsetetur
                                    aliquatraiy?</a>
                            </h4>
                            <div id="collapse2" class="panel-collapse collapse">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodas temporo
                                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrd
                                    exercitation ullamco laboris nisi ut aliquip ex comodo consequat. Duis aute dolor in
                                    reprehenderit.</p>
                            </div>
                        </div>
                        <div class="panel">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Lorem ipsum dolor
                                    amet, consectetur adipisicing ?</a>
                            </h4>
                            <div id="collapse3" class="panel-collapse collapse">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodas temporo
                                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrd
                                    exercitation ullamco laboris nisi ut aliquip ex comodo consequat. Duis aute dolor in
                                    reprehenderit.</p>
                            </div>
                        </div>
                        <div class="panel">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Lorem ipsum dolor
                                    amet, consectetur adipisicing ?</a>
                            </h4>
                            <div id="collapse4" class="panel-collapse collapse">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodas temporo
                                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrd
                                    exercitation ullamco laboris nisi ut aliquip ex comodo consequat. Duis aute dolor in
                                    reprehenderit.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
    <section class="section-padding gray-bg" id="blog-page">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-4">
                    <div class="single-blog">
                        <div class="blog-photo">
                            <img src="landing/images/small1.jpg" alt="">
                        </div>
                        <div class="blog-content">
                            <h3><a href="#">Beautiful Place for your Great Journey</a></h3>
                            <ul class="blog-meta">
                                <li><span class="ti-user"></span> <a href="#">Admin</a></li>
                                <li><span class="ti-calendar"></span> <a href="#">Feb 01, 2017</a></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit nemo eaque expedita
                                aliquid dolorem repellat perferendis, facilis aut fugit, impedit.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="single-blog">
                        <div class="blog-photo">
                            <img src="landing/images/xsmall2.jpg.pagespeed.ic.KjdAi1CJdK.jpg" alt="">
                        </div>
                        <div class="blog-content">
                            <h3><a href="#">Beautiful Place for your Great Journey</a></h3>
                            <ul class="blog-meta">
                                <li><span class="ti-user"></span> <a href="#">Admin</a></li>
                                <li><span class="ti-calendar"></span> <a href="#">Feb 01, 2017</a></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit nemo eaque expedita
                                aliquid dolorem repellat perferendis, facilis aut fugit, impedit.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="single-blog">
                        <div class="blog-photo">
                            <img src="landing/images/xsmall3.jpg.pagespeed.ic.6LaoYB7Kh5.jpg" alt="">
                        </div>
                        <div class="blog-content">
                            <h3><a href="#">Beautiful Place for your Great Journey</a></h3>
                            <ul class="blog-meta">
                                <li><span class="ti-user"></span> <a href="#">Admin</a></li>
                                <li><span class="ti-calendar"></span> <a href="#">Feb 01, 2017</a></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit nemo eaque expedita
                                aliquid dolorem repellat perferendis, facilis aut fugit, impedit.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    -->
    <footer class="footer-area relative sky-bg" id="contact-page">
        <div class="absolute footer-bg"></div>
        <!--
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                        <div class="page-title">
                            <h2>Contact with us</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit voluptates, temporibus
                                at, facere harum fugiat!</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-md-4">
                        <address class="side-icon-boxes">
                            <div class="side-icon-box">
                                <div class="side-icon">
                                    <img src="landing/images/xlocation-arrow.png.pagespeed.ic.SWvF0JwBMW.png" alt="">
                                </div>
                                <p><strong>Address: </strong> Box 564, Disneyland <br>USA</p>
                            </div>
                            <div class="side-icon-box">
                                <div class="side-icon">
                                    <img src="landing/images/xphone-arrow.png.pagespeed.ic.-_LCBq-NT-.png" alt="">
                                </div>
                                <p><strong>Telephone: </strong>
                                    <a href="callto:8801812726495">+8801812726495</a> <br>
                                    <a href="callto:8801687420471">+8801687420471</a>
                                </p>
                            </div>
                            <div class="side-icon-box">
                                <div class="side-icon">
                                    <img src="landing/images/xmail-arrow.png.pagespeed.ic.UkDBbGEToO.png" alt="">
                                </div>
                                <p><strong>E-mail: </strong>
                                    <a href="/cdn-cgi/l/email-protection#344d5b41465159555d5874514c55594458511a575b59"><span class="__cf_email__" data-cfemail="85fceaf0f7e0e8e4ece9c5e0fde4e8f5e9e0abe6eae8">[email&#160;protected]</span></a>
                                    <br>
                                    <a href="/cdn-cgi/l/email-protection#fb82948e899e969a9297bb9e839a968b979ed5989496"><span class="__cf_email__" data-cfemail="e2879a838f928e87a28f838b8ecc818d8f">[email&#160;protected]</span></a>
                                </p>
                            </div>
                        </address>
                    </div>

                    <div class="col-xs-12 col-md-8">
                        <form action="process.php" id="contact-form" method="post" class="contact-form">
                            <div class="form-double">
                                <input type="text" id="form-name" name="form-name" placeholder="Your name" class="form-control" required="">
                                <input type="email" id="form-email" name="form-email" class="form-control" placeholder="E-mail address" required="">
                            </div>
                            <input type="text" id="form-subject" name="form-subject" class="form-control" placeholder="Message topic">
                            <textarea name="message" id="form-message" name="form-message" rows="5" class="form-control" placeholder="Your message" required=""></textarea>
                            <button type="sibmit" class="button">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="footer-middle">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 pull-right">
                        <ul class="social-menu text-right x-left">
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>
                            <li><a href="#"><i class="ti-google"></i></a></li>
                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                            <li><a href="#"><i class="ti-github"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id corrupti architecto
                            consequuntur, laborum quaerat sed nemo temporibus unde, beatae vel.</p>
                    </div>
                </div>
            </div>
        </div>
        -->
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <p>&copy;Copyright 2021 all right reserved. Designed by ArJ Group</p>
                    </div>
                </div>
            </div>
        </div>


    </footer>
    <script data-cfasync="false" src="cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="landing/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="landing/js/vendor,_bootstrap.min.js owl.carousel.min.js contact-form.js jquery.parallax-1.1.3.js scrollUp.min.js.pagespeed.jc.8Z2KCZQEW2.js"></script>
    <script>
        eval(mod_pagespeed_iD2CE5rb_A);
    </script>

    <script>
        eval(mod_pagespeed_qnXpSlmuVx);
    </script>
    <script>
        eval(mod_pagespeed_OaLw4ygyPR);
    </script>
    <script>
        eval(mod_pagespeed_QQ_Bu9hLGv);
    </script>
    <script>
        eval(mod_pagespeed_4JDQQfrC8C);
    </script>
    <script src="landing/js/magnific-popup.min.js wow.min.js main.js.pagespeed.jc.HDsCsvb7JJ.js"></script>
    <script>
        eval(mod_pagespeed_UFuCLc6IHi);
    </script>
    <script>
        eval(mod_pagespeed_25j6TSoQmq);
    </script>

    <script>
        eval(mod_pagespeed_evcHD08OLd);
    </script>
    <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/v64f9daad31f64f81be21cbef6184a5e31634941392597" integrity="sha512-gV/bogrUTVP2N3IzTDKzgP0Js1gg4fbwtYB6ftgLbKQu/V8yH2+lrKCfKHelh4SO3DPzKj4/glTO+tNJGDnb0A==" data-cf-beacon='{"rayId":"6b400a81af0f49fc","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.11.0","si":100}' crossorigin="anonymous"></script>



</html>