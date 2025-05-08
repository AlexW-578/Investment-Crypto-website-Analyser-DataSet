<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Clarip is the next generation SaaS data privacy platform that helps business and brands minimize privacy risks and engage customers better.">
        <meta name="author" content="Clarip, Inc.">
        <title>Privacy Management Software | Clarip</title>

        <link href="https://www.clarip.com/privacy/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://www.clarip.com/privacy/css/clarip-body.css" rel="stylesheet">
        <link href="https://www.clarip.com/privacy/nav/clarip-megamenu-main.css" rel="stylesheet">
        <link href="https://www.clarip.com/privacy/nav/clarip-footer-main.css" rel="stylesheet">
        <link href="https://www.clarip.com/privacy/css/clarip-clariphome.min.css" rel="stylesheet">
        <link href="https://www.clarip.com/privacy/fonts/stylesheet.css" rel="stylesheet">  
        <script src="https://www.clarip.com/privacy/js/jquery-3.5.1.min.js"></script>

        <!-- Google tag (gtag.js) -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-83983850-1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());

            gtag('config', 'UA-83983850-1');
        </script>

    </head>
    <body>
        <nav>
            <script src="https://clarip.com/privacy/js/bootstrap.bundle.min.js"></script>



<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {



        window.addEventListener('scroll', function() {



            if (window.scrollY > 200 && window.innerWidth > 991) {

                document.getElementById('navbar_top').classList.add('fixed-top');

                // add padding top to show content behind navbar

                navbar_height = document.querySelector('.navbar').offsetHeight;

                document.body.style.paddingTop = navbar_height + 'px';

            } else {

                document.getElementById('navbar_top').classList.remove('fixed-top');

                // remove padding top from body

                document.body.style.paddingTop = '0';

            }

        });

    });

    // DOMContentLoaded  end

</script>



<!-- ============= COMPONENT ============== -->

<nav id="navbar_top" class="navbar navbar-expand-lg navbar-light">

    <div class="container-fluid">

        <div class="logo">

            <a href="http://www.clarip.com/" class="navbar-brand" style="padding:0;margin:0;">

                <img src="https://clarip.com/privacy/img/clarip-brand-logo-blue.png" style="display: block;">

            </a>

        </div>

        <div class="smalllogo">

            <a href="http://www.clarip.com/" class="navbar-brand" style="padding:0;margin:0;">

                <img src="https://clarip.com/privacy/img/clarip-brand-logo.png" style="display: block;">

            </a>

        </div>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav" aria-expanded="false" aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse" id="main_nav">





            <ul class="navbar-nav ms-auto">

                <li class="nav-item"><a class="nav-link nav-top-link" href="https://www.clarip.com/platform">Platform</a></li>

                <!--Products-->

                <li class="nav-item dropdown">

                    <a class="nav-link nav-top-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Products</a>

                    <ul class="dropdown-menu-products dropdown-menu">

                        <li class="col-sm-3 prod-col-1">

                            <div>

                                <p class="column-title"><b>The Clarip<sup style="font-size:.45em;top:-.8em;">&reg;</sup> Platform</b></p>

                                <p class="nav-item" style="font-size:14px;color:white;">Most powerful privacy governance platform and automation, trusted by Fortune 500!</p>

                                <p class="nav-item"><a href="https://www.clarip.com/platform" class="btn-learn-more">

                                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 510.1 405.4" style="enable-background:new 0 0 510.1 405.4;" xml:space="preserve">

                                            <style type="text/css">
                                                .st0 {
                                                    fill: none;
                                                    stroke: url(#SVGID_1_);
                                                    stroke-width: 0.5;
                                                    stroke-miterlimit: 10;
                                                }

                                                .st1 {
                                                    fill: #FFFFFF;
                                                    stroke: #000000;
                                                    stroke-width: 0.5;
                                                    stroke-miterlimit: 10;
                                                }

                                                .st2 {
                                                    fill: #010101;
                                                }

                                                .st3 {
                                                    fill: #FCCBB1;
                                                    stroke: #000000;
                                                    stroke-width: 0.5;
                                                    stroke-linecap: round;
                                                    stroke-linejoin: round;
                                                    stroke-miterlimit: 10;
                                                }

                                                .st4 {
                                                    fill: #D1D3D4;
                                                    stroke: #000000;
                                                    stroke-width: 0.5;
                                                    stroke-miterlimit: 10;
                                                }

                                                .st5 {
                                                    fill: none;
                                                    stroke: #231F20;
                                                    stroke-width: 0.5;
                                                    stroke-linecap: round;
                                                    stroke-linejoin: round;
                                                    stroke-miterlimit: 10;
                                                }

                                                .st6 {
                                                    fill: #3B3C3D;
                                                    stroke: #000000;
                                                    stroke-width: 0.5;
                                                    stroke-miterlimit: 10;
                                                }

                                                .st7 {
                                                    fill: #6B6466;
                                                    stroke: #000000;
                                                    stroke-width: 0.5;
                                                    stroke-linecap: round;
                                                    stroke-linejoin: round;
                                                    stroke-miterlimit: 10;
                                                }

                                                .st8 {
                                                    fill: #FFFFFF;
                                                    stroke: #000000;
                                                    stroke-width: 0.5;
                                                    stroke-linecap: round;
                                                    stroke-linejoin: round;
                                                    stroke-miterlimit: 10;
                                                }

                                                .st9 {
                                                    fill: #3B372A;
                                                    stroke: #000000;
                                                    stroke-width: 0.5;
                                                    stroke-linecap: round;
                                                    stroke-linejoin: round;
                                                    stroke-miterlimit: 10;
                                                }

                                                .st10 {
                                                    fill: #31B1E6;
                                                }

                                                .st11 {
                                                    fill: #D9B528;
                                                }

                                                .st12 {
                                                    fill: none;
                                                    stroke: #010101;
                                                    stroke-width: 0.5;
                                                    stroke-linecap: round;
                                                    stroke-linejoin: round;
                                                    stroke-miterlimit: 10;
                                                }

                                                .st13 {
                                                    fill: #231F20;
                                                }

                                                .st14 {
                                                    fill: #FCCBB1;
                                                    stroke: #000000;
                                                    stroke-width: 0.5;
                                                    stroke-miterlimit: 10;
                                                }

                                                .st15 {
                                                    fill: #FFFF00;
                                                    stroke: #000000;
                                                    stroke-width: 0.5;
                                                    stroke-miterlimit: 10;
                                                }

                                            </style>

                                            <g>

                                                <image style="overflow:visible;opacity:0.3;" width="493" height="20" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAe0AAAAUCAYAAACgXmWeAAAACXBIWXMAAAsSAAALEgHS3X78AAAB

                                                        YklEQVR4nO3dS26DMBRAUUOy/x0DGbSuXp5s/lGk6hwJ0ZBPpU5u7RgoAAAAwI2Gkx919n0AwI/l

                                                        6N9hK76t5wUbAO7RCnc35s+VXzmEQOd9EW8AOC2GeUn70gt3L9rDxlZEGwBOi6HOWwnPvWlFOwZ7

                                                        DPsxPBZsALimxnoOW31cvYV7z/T4I2wx3EW8AeCwOMquwZ7CNuydHs/T4mMI9rO0ww0AHJODXdXR

                                                        95CONaOd4z2mcD9CuE2TA8BxcVq8BrseG3+PN0fbW9Pj8echxXpsvA4A6Kuj6Dm0dG40t2kt2nkF

                                                        25Lq3/1PAABY7Wvs6tJo7qFo5xVtUyj/4jttALiktQht7kT8T452Ln3+gny2ehwALllbPT6nkfju

                                                        U77qi6fwwRagAcA9eudpd6fHe/F1RTQA+Jy1K6I1R9llI7yuPQ4An7F27fHuaNtdvgDgew7d5cv9

                                                        tAHgO5wyDQD/UinlBUb8ehWUkG6rAAAAAElFTkSuQmCC" transform="matrix(1 0 0 1 12.234 355.4468)">

                                                </image>

                                                <g>

                                                    <linearGradient id="SVGID_1_" gradientUnits="userSpaceOnUse" x1="23.3436" y1="357.617" x2="530.9822" y2="357.617" gradientTransform="matrix(0.9334 0 0 1 -3.622292e-02 0)">

                                                        <stop offset="0" style="stop-color:#000000;stop-opacity:0"></stop>

                                                        <stop offset="7.066998e-02" style="stop-color:#000000;stop-opacity:0.1413"></stop>

                                                        <stop offset="0.5" style="stop-color:#000000"></stop>

                                                        <stop offset="0.9293" style="stop-color:#000000;stop-opacity:0.1413"></stop>

                                                        <stop offset="1" style="stop-color:#000000;stop-opacity:0"></stop>

                                                    </linearGradient>

                                                    <line class="st0" x1="495.6" y1="357.6" x2="21.8" y2="357.6"></line>

                                                </g>

                                            </g>

                                            <path id="rightsleeve" class="st1" d="M221,165.7c-4-4.2-29.5-3.6-38.6-1.9c0,0-9.8,1.7-17.5,2.2l-0.1-0.1

                                                                              c-8.1-5.2-31.1-23.8-31.1-23.8c-6,1-6.4,14.5-8.8,19.9c-2.5,5.3-15.8,11.7-11.7,19.5c0,0,9.6,11,17.7,16.2

                                                                              c0.9,1,14.8,10.8,20.8,12.4c2.5,0.5,21.5,4.7,22.1,4.4c8.1,0,19.5,0.6,27.7-3c11.7-5.2,20.4-14.3,20.4-14.3

                                                                              C223.4,190.7,225.1,170,221,165.7z"></path>

                                            <g id="leftarm">

                                                <path id="backofsleeve" class="st2" d="M322.2,245.3c0,0,18.2,11.8,32-18.8l19.5,18.9c-14,29-44.5,29.2-44.5,29.2L322.2,245.3z"></path>

                                                <path id="hand" class="st3" d="M350.5,238.8c8.2-1.2,16.5,1.9,20.2,8.7c1.6,0.3,2.5,3.8,4.4,4.9c9.3,4.2,7.5,7.5,5.1,8.9

                                                                           c-2.6,2.7-8.6,0.8-12.4-2.8c-0.1,0.3-0.3,0.6-0.4,0.9c0,0,8,17.8,1.9,19.6c-5.4,1.6-8.2-9.1-9.2-8.7c-1.2,0.6,3.3,12.5-2.9,13.7

                                                                           c-5.1,1-7.6-10.8-8.8-10.3c-1.2,0.5,2.1,8.8-2.1,9.9c-4.2,1.2-7.3-5.8-8.8-10.7c-0.5-1.8-1.1-3.9-0.8-5.6c-1.6-2.2-2.2-4.6-2.6-7.5

                                                                           C332.7,249.7,340,240.3,350.5,238.8z"></path>

                                                <g id="leftsleeve">

                                                    <path class="st1" d="M295.1,154.6c-4.3,2.3-10.4,3.4-11.4,13.8c-0.8,8.2,8.7,30.6,18,48.1c8.1,15.3,21.2,37.7,21.2,37.7

                                                                     c9.8,9.1,13.3-11.5,18.5-14.3s20.3,0.6,19.7-9.4c0,0-10.2-20.7-18.3-35.9c-9-16.9-13.5-29.2-23.5-35.8

                                                                     C312.5,154.5,299.6,152.2,295.1,154.6"></path>

                                                    <path class="st1" d="M373.2,245.1c0,0-30.3-1.8-44,28.7l-12.9-25.7c14-29,43-27.3,43-27.3L373.2,245.1z"></path>

                                                </g>

                                            </g>

                                            <path id="backbelt" class="st2" d="M319.4,245.4l-123.1-27.6c0,0,96-41,128,13.4L319.4,245.4z"></path>

                                            <g id="pants">

                                                <path class="st4" d="M198.2,258.8c0,0,1.6,46,13.6,69.6l53.6,11.2L321,326c0,0-3.7-10.9,1.6-29.6c4.9-17.4,4.1-34.3,2.4-52.8

                                                                 C324.7,240.9,198.2,258.8,198.2,258.8"></path>

                                                <path class="st5" d="M261.7,278.4c0,0.4,9.1,40.2,6,59.7"></path>

                                            </g>

                                            <g id="shoes">

                                                <path class="st6" d="M349.5,353.5c0-12.2-2.2-24.8-10.2-32.4c-7.1-6.7-19.4-9.2-29.7-9.2c-12.4,0-24.1,4.8-31.4,14

                                                                 c-5.7,7.2-8.6,17.5-8.6,27.6H349.5z"></path>

                                                <path class="st6" d="M194.3,354.3c0-12.2,2.2-24.8,10.2-32.4c7.1-6.7,19.4-9.2,29.7-9.2c12.4,0,24.1,4.8,31.4,14

                                                                 c5.7,7.2,8.6,17.5,8.6,27.6H194.3L194.3,354.3z"></path>

                                                <path class="st7" d="M349.2,356.2c-5.2,2.4-73.6,1.6-79-2.4v-10.4c0,0,7.5,0.1,14.2,1.1c13.3,1.9,31.4,5.2,38,5.2

                                                                 c9.9,0,26.7-2.7,26.7-2.7S351.6,352.6,349.2,356.2"></path>

                                                <path class="st7" d="M194.7,356.2c5.2,2.4,73.6,1.6,79-2.4v-10.4c0,0-7.5,0.1-14.2,1.1c-13.3,1.9-31.4,5.2-38,5.2

                                                                 c-9.9,0-26.7-2.7-26.7-2.7S192.3,352.6,194.7,356.2"></path>

                                            </g>

                                            <g id="shirt">

                                                <path class="st8" d="M201.5,179.6c0,0-6.8,13.2-5.6,30.4c1.2,17.2,0.8,36.9,0.8,36.9s81.6,47.7,126.4-9.9c0,0,1.2-18.6-0.8-27

                                                                 s-9.2-22-8.4-36.4"></path>

                                                <path class="st5" d="M256.8,265.5c-9.1-18.7-3.3-81.5-3.2-82.1"></path>

                                            </g>

                                            <path id="belt" d="M196.3,245.1c0,0,95.9,41.2,127.9-13.2l1.7,15.6c-17.2,28.8-57.8,64.4-128.9,13.6L196.3,245.1z"></path>

                                            <path id="buckle" class="st9" d="M281.9,256.6l-1.9,31.7c-5.6,2.4-26.5,3.2-32.5,0l-1.9-29.9C253.6,251.5,271.5,249.7,281.9,256.6"></path>

                                            <path id="p" class="st10" d="M262.2,271c0-2.4,0.9-3.5,2.6-3.5c0.7,0,1.3,0.2,1.8,0.7s0.8,1.1,0.8,1.8c0,0.7-0.2,1.3-0.7,1.8

                                                                     s-1.1,0.8-1.8,0.8c-0.6,0-1.1-0.2-1.6-0.7v7.3c0.8,0.1,1.4,0.1,1.8,0.1c2.5,0,4.6-0.9,6.4-2.7c1.8-1.8,2.7-4,2.7-6.5

                                                                     c0-2.6-0.9-4.7-2.7-6.5c-1.8-1.8-4.1-2.7-6.7-2.7c-1.3,0-2.6,0.3-3.9,0.9s-2.3,1.4-3.1,2.3c-1.4,1.7-2.1,3.9-2.1,6.6v14.7h6.7

                                                                     L262.2,271L262.2,271z"></path>

                                            <path id="arc" class="st10" d="M273.7,261.4c0.1-0.1,0.1-0.2,0.1-0.3c0-0.3-0.2-0.7-0.5-1.1c-0.4-0.4-0.9-0.8-1.7-1.4

                                                                       c-1.1-0.8-2.2-1.3-3.4-1.7c-1.2-0.4-2.4-0.6-3.7-0.6c-1.4,0-2.8,0.2-4.1,0.7c-1.3,0.4-2.5,1.1-3.7,2c-0.5,0.4-0.9,0.8-1.2,1.1

                                                                       c-0.2,0.3-0.4,0.6-0.4,0.9c0,0.1,0,0.2,0.1,0.3c0.1,0.1,0.2,0.1,0.4,0.1s0.6-0.2,1.3-0.5c0.7-0.4,1.3-0.7,1.8-0.9

                                                                       c1-0.4,1.9-0.7,2.8-0.9c0.9-0.2,1.9-0.3,2.9-0.3c1.1,0,2.1,0.1,3.1,0.4c1,0.2,2.1,0.6,3.4,1.2c0.3,0.2,0.7,0.4,1.3,0.7

                                                                       c0.5,0.3,0.9,0.4,1,0.4C273.5,261.5,273.6,261.5,273.7,261.4L273.7,261.4z"></path>

                                            <g id="head">

                                                <path id="backcollar" class="st2" d="M316,120c1,11.4-24.6,23.1-57.2,26s-59.9-4-61-15.4c-1-11.4,24.6-23.1,57.2-26

                                                                                 C287.7,101.7,315,108.6,316,120"></path>

                                                <g id="hair">

                                                    <path class="st11" d="M308.4,44.4c0,0-2.2-7-13.6-12.5c-24.6-39.5-86.4-18.3-86.4-18.3s13.5-0.1,13.4,1.1

                                                                      c0,1.2-24.7,10.3-24.7,10.3s28.5-1.2,28.8,2.7c0.3,4-30.2,17.3-30.2,17.3l11,4.7L308.4,44.4z"></path>

                                                    <path class="st12" d="M308.5,44.6c0-0.1-2.6-7.6-13.4-12.3c-13.4-21.1-36-24.7-52.8-24.3c-18.3,0.4-33.8,5.6-33.9,5.7"></path>

                                                    <path class="st5" d="M308.3,44.7c-0.2,0-16.4-4.9-33.1-11c-19.2-9.1-35.5-12.9-44.5-13.4c-18.9-1.1-33.4,4.6-33.6,4.7"></path>

                                                </g>

                                                <path id="face" class="st3" d="M308.4,44.4c-12.3-4.1-59.8-19.2-112.6,0.7L206.9,172l49.2,11.5l50.8-21.7

                                                                           C313.1,152.7,311.7,60.2,308.4,44.4"></path>

                                                <path id="mouth" class="st5" d="M261,109.5c-8.2,8-16.7,10.2-23.7,10.2c-2.3,0-4.5-0.2-6.4-0.6c-8.4-1.6-14.2-5.7-14.3-5.7"></path>

                                                <path id="front_collar" class="st8" d="M315.8,121.5v37.1c0,0-56.7,51.1-117.8,8v-36.7c0,0,20.5,21.5,49.8,23.5

                                                                                   c-1.2,13.7,7.8,26.6,7.8,26.6s8.9-26.4,13.9-28.7C301.6,150.3,315.8,121.5,315.8,121.5"></path>

                                                <g id="eyes">

                                                    <path class="st1" d="M237.1,68.8c-0.4,5.4-16.4,14.3-26.2,14.6c-11.8,0.4-15.1-1.6-15.6-7.9c-0.5-5.3,6.1-16.2,20.1-16.8

                                                                     C228.8,58.1,237.7,61.1,237.1,68.8"></path>

                                                    <path class="st1" d="M281,64.4c-0.1,15.5-19.3,21.2-30.1,21.2c-9.6,0-22.8-2.8-21.2-13.6c0.9-6.4,6.4-16.8,28.7-16.4

                                                                     C272.7,55.8,281,58,281,64.4"></path>

                                                    <path class="st13" d="M219.5,70.7c0,1-0.6,1.9-1.4,1.9c-0.8,0-1.4-0.8-1.4-1.9s0.6-1.9,1.4-1.9S219.5,69.7,219.5,70.7"></path>

                                                    <path class="st13" d="M255.6,70.7c0,1-0.6,1.9-1.4,1.9c-0.8,0-1.4-0.8-1.4-1.9s0.6-1.9,1.4-1.9C255,68.8,255.6,69.7,255.6,70.7"></path>

                                                </g>

                                            </g>

                                            <g id="righthand">

                                                <path class="st2" d="M111.7,176.3c0,0-6-20.8,27.2-25.2L127,127.5c-31.8,5.1-40.6,34.2-40.6,34.2L111.7,176.3z"></path>

                                                <polyline class="st14" points="113.6,131.9 131.7,149.6 107.5,172.4 97.5,155.1 	"></polyline>

                                                <path class="st3" d="M114.6,142.2c1-8.3-1.7-18.6-8.5-22.2l-11.7,3.5c0,0-11.1,6.3-10.7,7.4l0,0.1c-0.1,0.1,1.3,1.4,1,1.4

                                                                 c0.5,1.3,10.7,2.5,8.6,8.3l-7.7,0.8l-3.7,11.7c1.8,0.5,3.5,1.2,5.2,1c2.3,1.6,4.6,2.1,7.5,2.4c6.6,0.8,12.8-2.1,16.7-7.1"></path>

                                                <path class="st4" d="M100.1,152.9H88.7c-1,0-1.9-0.6-1.9-1.3V73.5c0-0.7,0.9-1.3,1.9-1.3h11.4c1,0,1.9,0.6,1.9,1.3v78.2

                                                                 C102,152.4,101.2,152.9,100.1,152.9z"></path>

                                                <path class="st14" d="M76.4,126.3c-1,3.4,5.3,7,5.3,7s9.9,1.6,12.1-2.4c2.9-5.6-5.3-8.6-10.2-9.6C82.7,121.1,78.1,120.8,76.4,126.3

                                                                  z"></path>

                                                <path class="st14" d="M74.4,136.8c-1,3.4,5.3,7,5.3,7s9.9,1.6,12.1-2.4c2.9-5.6-5.3-8.6-10.2-9.6C80.7,131.7,76.1,131.4,74.4,136.8

                                                                  z"></path>

                                                <path class="st14" d="M89.3,150.1c1.1-4-5.1-6.8-7.4-6.8c-2.2,0-4.6,0-5.6,3.7c-0.9,3.5,2,5.4,4.4,6

                                                                  C84.7,153.4,88.6,153,89.3,150.1z"></path>

                                                <path class="st8" d="M127.1,128c0,0-7,29.6-40.1,33.9l20.9,19.8c31.8-5.1,38.5-33.4,38.5-33.4L127.1,128z"></path>

                                                <path class="st3" d="M110.6,124.2c-2.1-2.1-3.8-3.6-5.7-5.2c-4.3-9.2-7.7-7.4-9-4.9c-1.8,2.9,1.9,12.1,5,14.3s5.1,3,4.8,3.2"></path>

                                            </g>

                                            <g id="sign">

                                                <path id="yellowsign" class="st15" d="M179.8,80.1H11.4c-3.2,0-5.7-2.5-5.7-5.7V14.9c0-3.2,2.5-5.7,5.7-5.7h168.4

                                                                                  c3.2,0,5.7,2.5,5.7,5.7v59.6C185.5,77.6,182.9,80.1,179.8,80.1z"></path>

                                                <g id="learn-more">

                                                    <path d="M31.1,35.1h2.5v16.7h8v2H31.1V35.1z"></path>

                                                    <path d="M45.1,47.5c0.1,3.3,2.2,4.7,4.6,4.7c1.8,0,2.8-0.3,3.8-0.7l0.4,1.8c-0.9,0.4-2.4,0.8-4.5,0.8c-4.2,0-6.7-2.7-6.7-6.8

                                                         s2.4-7.3,6.4-7.3c4.4,0,5.6,3.9,5.6,6.4c0,0.5-0.1,0.9-0.1,1.1H45.1z M52.4,45.9c0-1.6-0.6-4-3.4-4c-2.5,0-3.6,2.3-3.8,4H52.4z"></path>

                                                    <path d="M65.2,53.9L65,52.2h-0.1c-0.8,1.1-2.2,2-4.1,2c-2.7,0-4.1-1.9-4.1-3.9c0-3.3,2.9-5.1,8.1-5v-0.3c0-1.1-0.3-3.1-3.1-3.1

                                                         c-1.3,0-2.6,0.4-3.5,1l-0.6-1.6c1.1-0.7,2.7-1.2,4.5-1.2c4.1,0,5.2,2.8,5.2,5.5v5.1c0,1.2,0.1,2.3,0.2,3.2H65.2z M64.8,47

                                                         c-2.7-0.1-5.7,0.4-5.7,3.1c0,1.6,1.1,2.4,2.3,2.4c1.8,0,2.9-1.1,3.3-2.3c0.1-0.3,0.1-0.5,0.1-0.8C64.8,49.3,64.8,47,64.8,47z"></path>

                                                    <path d="M71.2,44.6c0-1.6,0-3-0.1-4.2h2.2l0.1,2.7l0,0c0.6-1.8,2.1-3,3.8-3c0.3,0,0.5,0,0.7,0.1v2.3c-0.3-0.1-0.5-0.1-0.8-0.1

                                                         c-1.7,0-3,1.3-3.3,3.2c-0.1,0.3-0.1,0.7-0.1,1.1v7.2h-2.4L71.2,44.6L71.2,44.6z"></path>

                                                    <path d="M80.4,44.1c0-1.4,0-2.5-0.1-3.7h2.2l0.1,2.2h0.1c0.7-1.3,2.2-2.5,4.5-2.5c1.9,0,4.8,1.1,4.8,5.8v8.1h-2.5v-7.8

                                                         c0-2.2-0.8-4-3.1-4c-1.6,0-2.9,1.1-3.3,2.5c-0.1,0.3-0.2,0.7-0.2,1.1v8.1h-2.5V44.1z"></path>

                                                    <path d="M101.7,44.1c0-1.4,0-2.5-0.1-3.7h2.2l0.1,2.2h0.1c0.8-1.3,2-2.5,4.3-2.5c1.8,0,3.2,1.1,3.8,2.7h0.1c0.4-0.8,1-1.3,1.5-1.8

                                                         c0.8-0.6,1.7-1,3-1c1.8,0,4.5,1.2,4.5,5.9v8h-2.4v-7.7c0-2.6-1-4.2-2.9-4.2c-1.4,0-2.5,1-2.9,2.2c-0.1,0.3-0.2,0.8-0.2,1.2v8.4

                                                         h-2.6v-8.1c0-2.2-1-3.7-2.8-3.7c-1.5,0-2.7,1.2-3.1,2.5c-0.1,0.4-0.2,0.8-0.2,1.2v8.2h-2.4V44.1z"></path>

                                                    <path d="M137.3,47.1c0,5-3.5,7.2-6.7,7.2c-3.7,0-6.5-2.7-6.5-7c0-4.5,3-7.2,6.7-7.2C134.6,40.1,137.3,42.9,137.3,47.1z

                                                         M126.5,47.1c0,3,1.7,5.2,4.1,5.2c2.4,0,4.1-2.2,4.1-5.3c0-2.3-1.1-5.2-4.1-5.2C127.6,41.9,126.5,44.6,126.5,47.1z"></path>

                                                    <path d="M140.4,44.6c0-1.6,0-3-0.1-4.2h2.2l0.1,2.7h0.1c0.6-1.8,2.1-3,3.8-3c0.3,0,0.5,0,0.7,0.1v2.3c-0.3-0.1-0.5-0.1-0.8-0.1

                                                         c-1.7,0-3,1.3-3.3,3.2c-0.1,0.3-0.1,0.7-0.1,1.1v7.2h-2.4v-9.3H140.4z"></path>

                                                    <path d="M150.5,47.5c0.1,3.3,2.2,4.7,4.6,4.7c1.8,0,2.8-0.3,3.8-0.7l0.4,1.8c-0.9,0.4-2.4,0.8-4.5,0.8c-4.2,0-6.7-2.7-6.7-6.8

                                                         s2.4-7.3,6.4-7.3c4.4,0,5.6,3.9,5.6,6.4c0,0.5-0.1,0.9-0.1,1.1H150.5z M157.7,45.9c0-1.6-0.6-4-3.4-4c-2.5,0-3.6,2.3-3.8,4H157.7z

                                                         "></path>

                                                </g>

                                            </g>

                                        </svg>

                                    </a>

                                </p>

                            </div>

                            <div class="forms-container">

                                <p>

                                    <a href="https://www.clarip.com/privacy/demo" target="_blank"><button type="button" class="btn btn-subnav-demo">SCHEDULE DEMO</button></a>

                                </p>

                                <p style="color:white;margin-bottom:.25rem;">FREE PRIVACY RISK SCAN</p>

                                <form id="solutions-scan-form" class="navbar-form nopadding" method="post" action="https://www.clarip.com/leads/data.php?source=internal" novalidate="novalidate">

                                    <div class="form-scan-wrapper">

                                        <div class="form-scan-domain">

                                            <input type="text" class="form-control solutions-domain-name" placeholder="Enter Domain name.." name="website">

                                        </div>

                                        <div>

                                            <input type="submit" value="Go" class="btn btn-nav-go solutions-megamenu-scan-btn">

                                        </div>

                                    </div>

                                </form>

                            </div>

                        </li>

                        <li class="col-sm-3 prod-col-2">

                            <ul>

                                <p class="dropdown-prod-cat-title"><b>DATA RISK INTELLIGENCE<sup>TM</sup></b></p>

                                <a class="dropdown-item" href="https://www.clarip.com/privacy-hub">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-privacy-hub.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Privacy HUB</p>

                                                <p class="dropdown-item-tagline">Website scanning on steroids</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                                <a class="dropdown-item" href="https://clarip.com/privacy/data-flow-analyzer">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-data-flow-analyzer.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Data Flow Analyzer</p>

                                                <p class="dropdown-item-tagline">Visualize and manage vendor data flows</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                                <a class="dropdown-item" href="https://www.clarip.com/website-privacy-audit">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-annual-audit.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Annual Audit</p>

                                                <p class="dropdown-item-tagline">Annual "Website/Cloud/Tech Stack" Scan with Gap Analysis</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                            </ul>

                            <ul>

                                <p class="dropdown-prod-cat-title" style="margin: 25px 0 0 0;"><b>DATA DISCOVERY & MAPPING</b></p>

                                <a class="dropdown-item" href="https://www.clarip.com/data-mapping">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-data-mapping.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Automated Data Mapping</p>

                                                <p class="dropdown-item-tagline">Scan thousands databases and identify sensitive data</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                                <a class="dropdown-item" href="https://clarip.com/privacy/data-discovery">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-data-discovery.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Data Discovery</p>

                                                <p class="dropdown-item-tagline">Auto-scan your network and discover PII data sources</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                                <a class="dropdown-item" href="https://clarip.com/privacy/file-scanner">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-file-scanner.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">File Scanner</p>

                                                <p class="dropdown-item-tagline">Scan petabytes of unstructured data</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                            </ul>

                        </li>

                        <li class="col-sm-3 prod-col-3">

                            <ul>

                                <p class="dropdown-prod-cat-title"><b>CONSENT MANAGEMENT</b></p>

                                <a class="dropdown-item" href="https://www.clarip.com/consent-management">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-consent-management.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Universal Consent & Preferences</p>

                                                <p class="dropdown-item-tagline">Centralized Consent APIs and enforcement</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                                <a class="dropdown-item" href="https://www.clarip.com/cookie-compliance">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-cookie-consent.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Cookie Consent/Banner</p>

                                                <p class="dropdown-item-tagline">Powerful customizable cookie banners</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                            </ul>

                            <ul>

                                <p class="dropdown-prod-cat-title" style="margin: 30px 0 0 0;"><b>VENDOR RISK</b></p>

                                <a class="dropdown-item" href="https://clarip.com/privacy/vendor-monitor">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-vendor-monitor.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Vendor Monitor</p>

                                                <p class="dropdown-item-tagline">Proactively monitor third party vendors and get alerts</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                                <a class="dropdown-item" href="https://clarip.com/privacy/vendor-inventory">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-vendor-inventory.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Vendor Inventory</p>

                                                <p class="dropdown-item-tagline">Manage all vendors, contracts and data access in one place</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                                <a class="dropdown-item" href="https://www.clarip.com/leads/vendor-risk-assessments?source=vra">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-vendor-risk-assessment.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Vendor Risk Assessments</p>

                                                <p class="dropdown-item-tagline">Automate and streamline workflows for third party risk</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                            </ul>

                        </li>

                        <li class="col-sm-3 prod-col-4">

                            <p class="dropdown-prod-cat-title"><b>GOVERNANCE</b></p>

                            <ul>

                                <a class="dropdown-item" href="https://www.clarip.com/dsar-portal">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-dsr-portal.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">DSR portal</p>

                                                <p class="dropdown-item-tagline">Automate end-end fulfillment of individual rights requests</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                                <a class="dropdown-item" href="https://clarip.com/privacy/do-not-sell-my-information">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-do-not-sell.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Do Not Sell / Do Not Share</p>

                                                <p class="dropdown-item-tagline">Fully automate DNS requests and prevent third party tracking</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                                <a class="dropdown-item" href="https://www.clarip.com/privacy/privacycenter">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-privacy-center.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Privacy Center</p>

                                                <p class="dropdown-item-tagline">Manage notices and offer clarity and transparency via layered privacy policies</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                                <a class="dropdown-item" href="https://clarip.com/privacy/privacy-impact-assessments">

                                    <li class="nav-item">

                                        <div class="link-wrapper">

                                            <img class="nav-img-icons" src="https://clarip.com/privacy/images/nav/nav-privacy-impact-assessments.svg">

                                            <div style="flex-flow: column;display: flex;">

                                                <p class="dropdown-item-title">Privacy Impact Assessments</p>

                                                <p class="dropdown-item-tagline">Automate PIAs, DPIAs, and easily stay compliant with privacy laws</p>

                                            </div>

                                        </div>

                                    </li>

                                </a>

                            </ul>

                        </li>

                    </ul>

                </li>

                <!-- Solutions -->

                <li class="nav-item dropdown">

                    <a class="nav-link nav-top-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Solutions</a>

                    <ul class="dropdown-menu-solutions dropdown-menu">

                        <li class="col-sm-4 sol-col-1">

                            <p class="column-title" style="font-size:1rem;"><b>Key Initiatives</b></p>

                            <p style="margin:0;padding:0;color:white;"><a href="https://www.clarip.com/leads/best-practices-whitepaper?source=internal" class="btn-learn-more"><b>Implementing Privacy Governance</b></a></p>

                            <p style="font-size:12px;margin:0 0 25px 0;padding:0;color:white;">Best practices and guidelines to develop and operationalize a privacy program with Automation</p>

                            <p style="margin:0;padding:0;color:white;"><a href="https://www.clarip.com/leads/roi-whitepaper?source=internal" class="btn-learn-more"><b>Investing in Data Privacy</b></a></p>

                            <p style="font-size:12px;margin:0;padding:0;color:white;">Competitive advantages and 5 year ROI by investing in privacy today!</p><br><br><br>



                            <div class="forms-container" style="top: 0px;">

                                <p>

                                    <a href="https://www.clarip.com/privacy/demo" target="_blank"><button type="button" class="btn btn-subnav-demo">SCHEDULE DEMO</button></a>

                                </p>

                                <p style="color:white;margin-bottom:.25rem;">FREE PRIVACY RISK SCAN</p>

                                <form id="solutions-scan-form" class="navbar-form nopadding" method="post" action="https://www.clarip.com/leads/data.php?source=internal" novalidate="novalidate">

                                    <div class="form-scan-wrapper">

                                        <div class="form-scan-domain">

                                            <input type="text" class="form-control solutions-domain-name" placeholder="Enter Domain name.." name="website">

                                        </div>

                                        <div>

                                            <input type="submit" value="Go" class="btn btn-nav-go solutions-megamenu-scan-btn">

                                        </div>

                                    </div>

                                </form>

                            </div>



                        </li>

                        <li class="col-sm-2 sol-col-2">

                            <p class="dropdown-sol-cat-title">BY ROLE</p>

                            <ul>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/csuite" style="min-width: 195px;">C-Suite</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/legal" style="min-width: 195px;">Privacy & Legal</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/cio" style="min-width: 195px;">IT & Security</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/compliancemanager" style="min-width: 195px;">Risk & Compliance</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/marketing" style="min-width: 195px;">Marketing</a></li>

                            </ul>

                        </li>

                        <li class="col-sm-3 sol-col-3">

                            <p class="dropdown-sol-cat-title">BY INDUSTRY</p>

                            <ul>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/retail" style="min-width: 195px;">Retail</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="" style="min-width: 195px;">Financial services & Banking</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/data-privacy/enhancing-telecom-data-privacy-and-compliance-with-clarip/" style="min-width: 195px;">Telecom</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/healthcare" style="min-width: 195px;">Healthcare</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="" style="min-width: 195px;">Consumer Goods</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="" style="min-width: 195px;">Travel & Hospitality </a></li>

                                <li class="nav-item"><a class="dropdown-item" href="" style="min-width: 195px;">Insurance</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="" style="min-width: 195px;">Online & e-commerce</a></li>

                            </ul>

                        </li>

                        <li class="col-sm-3 sol-col-4">

                            <p class="dropdown-sol-cat-title">BY REGULATION</p>

                            <ul>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/data-privacy/the-proposed-amendments-to-the-ccpa-coming-from-the-california-assembly/" style="min-width: 195px;">CCPA Compliance</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/data-privacy/gdpr/" style="min-width: 195px;">GDPR Compliance</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/data-privacy/what-is-the-virginia-consumer-data-protection-act-and-how-does-it-affect-your-privacy-program/" style="min-width: 195px;">VA CDPA Compliance</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/data-privacy/what-your-company-needs-to-know-about-the-colorado-privacy-act/" style="min-width: 195px;">CO CPA</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/data-privacy/chinas-pipl-what-we-know-what-we-dont-know/" style="min-width: 195px;">China PIPL</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/data-privacy/what-your-company-needs-to-know-about-the-lgpd-the-brazilian-data-protection-law/" style="min-width: 195px;">LGPD Compliance</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/data-privacy/the-legislation-season-passing-data-privacy-bills/" style="min-width: 195px;">Other</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/privacy/us-privacy-law-tracker" style="min-width: 195px;">US Privacy Law Tracker</a></li>

                            </ul>

                        </li>

                    </ul>

                </li>

                <!-- Resources -->

                <li class="nav-item dropdown">

                    <a class="nav-link nav-top-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Resources</a>

                    <ul class="dropdown-menu-resources dropdown-menu">

                        <li class="col-sm-4 res-col-1 featured-cont" style="background: url(https://clarip.com/privacy/images/nav/column-1-bg.png);background-repeat:no-repeat;background-position:center;background-size:cover;min-height:400px;overflow:hidden;">

                            <div class="column-flag">

                                <div class="column-flag-item">

                                    <svg x="0px" y="0px" width="20px" height="24px" viewBox="0 0 20 24">

                                        <style type="text/css">
                                            .st0 {
                                                fill: #212529;
                                            }

                                        </style>

                                        <path class="st0" d="M10,5.2c-3.4,0-6.2,2.8-6.2,6.2c0,1.8,0.8,3.5,2.1,4.6c1,1,0.9,3.1,0.9,3.1c0,0.1,0,0.2,0.1,0.3

                                                             c0.1,0.1,0.2,0.1,0.3,0.1h5.7c0.1,0,0.2,0,0.3-0.1c0.1-0.1,0.1-0.2,0.1-0.3c0,0-0.1-2.1,0.9-3.1c0,0,0,0,0.1-0.1

                                                             c1.3-1.2,2-2.8,2-4.6C16.2,7.9,13.4,5.2,10,5.2z M13.6,15.4C13.5,15.4,13.5,15.5,13.6,15.4c-0.9,1-1.1,2.6-1.1,3.3H7.6

                                                             c0-0.7-0.2-2.3-1.1-3.3c-1.2-1-1.9-2.5-1.9-4.1c0-3,2.4-5.4,5.4-5.4s5.4,2.4,5.4,5.4C15.4,12.9,14.7,14.4,13.6,15.4z"></path>

                                        <path class="st0" d="M10,6.7c-0.2,0-0.4,0.2-0.4,0.4S9.8,7.5,10,7.5c2.2,0,4,1.8,4,4c0,0.2,0.2,0.4,0.4,0.4c0.2,0,0.4-0.2,0.4-0.4

                                                             C14.8,8.9,12.7,6.7,10,6.7z"></path>

                                        <path class="st0" d="M12.5,19.9H7.5c-0.5,0-0.9,0.4-0.9,0.9s0.4,0.9,0.9,0.9h4.9c0.5,0,1-0.4,1-0.9S13,19.9,12.5,19.9z M12.5,21H7.5

                                                             c-0.1,0-0.2-0.1-0.2-0.2c0-0.1,0.1-0.2,0.2-0.2h4.9c0.1,0,0.2,0.1,0.2,0.2C12.6,20.9,12.5,21,12.5,21z"></path>

                                        <path class="st0" d="M11.7,22.1H8.3c-0.5,0-0.9,0.4-0.9,0.9c0,0.5,0.4,0.9,0.9,0.9h3.5c0.5,0,0.9-0.4,0.9-0.9

                                                             C12.7,22.5,12.2,22.1,11.7,22.1z M11.7,23.2H8.3c-0.1,0-0.2-0.1-0.2-0.2s0.1-0.2,0.2-0.2h3.5c0.1,0,0.2,0.1,0.2,0.2

                                                             S11.8,23.2,11.7,23.2z"></path>

                                        <path class="st0" d="M10,3.3c0.2,0,0.4-0.2,0.4-0.4V0.4C10.4,0.2,10.2,0,10,0C9.8,0,9.6,0.2,9.6,0.4V3C9.6,3.2,9.8,3.3,10,3.3z"></path>

                                        <path class="st0" d="M16.3,1.9c-0.2-0.1-0.4-0.1-0.5,0.1l-1.4,2.1c-0.1,0.2-0.1,0.4,0.1,0.5c0.1,0,0.1,0.1,0.2,0.1

                                                             c0.1,0,0.2-0.1,0.3-0.2l1.4-2.1C16.5,2.3,16.5,2,16.3,1.9z"></path>

                                        <path class="st0" d="M5.5,4.6c0.1,0,0.1,0,0.2-0.1C5.9,4.5,5.9,4.2,5.8,4L4.4,1.9C4.3,1.7,4.1,1.7,3.9,1.8C3.7,1.9,3.7,2.1,3.8,2.3

                                                             l1.4,2.2C5.2,4.6,5.4,4.6,5.5,4.6z"></path>

                                        <path class="st0" d="M2.8,7L0.6,5.8c-0.2-0.1-0.4,0-0.5,0.2c-0.1,0.2,0,0.4,0.2,0.5l2.2,1.2c0.1,0,0.1,0,0.2,0

                                                             c0.1,0,0.3-0.1,0.3-0.2C3,7.3,3,7.1,2.8,7z"></path>

                                        <path class="st0" d="M20,5.9c-0.1-0.2-0.3-0.2-0.5-0.2L17.2,7C17,7.1,16.9,7.3,17,7.5c0.1,0.1,0.2,0.2,0.3,0.2c0.1,0,0.1,0,0.2,0

                                                             l2.3-1.2C20,6.3,20,6.1,20,5.9z"></path>

                                    </svg>

                                    FEATURED

                                </div>

                            </div>

                            <div class="forms-container" style="top: 30px;">

                                <p style="font-size: 1rem;font-weight: 900;text-align: center;margin: 0;">UPCOMING WEBINAR</p>

                                <p style="font-size: 1.4rem;text-align: center;font-weight: lighter;margin: 10px 0 0;">Prioritizing Privacy Compliance: Where To Start</p>

                                <p style="text-align:center;">

                                    <a href="https://clarip.com/privacy/clarip-webinars" target="_blank" rel="noreferrer"><button type="button" class="btn btn-nav-register">REGISTER NOW</button></a>

                                </p>

                            </div>

                        </li>

                        <li class="col-sm-2 res-col-2">

                            <p class="dropdown-sol-cat-title">RESOURCES</p>

                            <ul>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/blog/topics/whitepapers/" style="min-width: 195px;">White papers</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/data-privacy/" style="min-width: 195px;">Articles</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/privacy/integrations" style="min-width: 195px;">Integrations</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/privacy/product-data-sheets" style="min-width: 195px;">Product Data Sheets</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="" style="min-width: 195px;">ROI Calculator</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://www.clarip.com/blog" style="min-width: 195px;">Blog</a></li>

                            </ul>

                        </li>

                        <li class="col-sm-3 res-col-3">

                            <p class="dropdown-sol-cat-title">EVENTS</p>

                            <ul>

                                <li class="nav-item"><a class="dropdown-item" href="https://clarip.com/privacy/clarip-webinars" style="min-width: 195px;">Upcoming webinar</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="" style="min-width: 195px;">Roundtable Discussions & Interviews</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="" style="min-width: 195px;">Podcasts</a></li>

                            </ul>

                        </li>

                        <li class="col-sm-3 res-col-4">

                            <p class="dropdown-sol-cat-title">EXPLORE</p>

                            <ul>

                                <li class="nav-item"><a class="dropdown-item" href="https://clarip.com/privacy/clarip-case-studies" style="min-width: 195px;">Case Studies</a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://help.clarip.com/" style="min-width: 195px;">
                                        <p style="margin:0;">Clarip University</p><sub> (Login Req.)</sub>
                                    </a></li>

                                <li class="nav-item"><a class="dropdown-item" href="https://clarip.com/privacy/clarip-training" style="min-width: 195px;">Clarip Certification & Training</a></li>

                            </ul>

                        </li>

                    </ul>

                </li>

            </ul>

            <a href="https://www.clarip.com/privacy/demo" target="_blank"><button type="button" class="btn btn-nav-demo">Request Demo</button></a>

        </div> <!-- navbar-collapse../..// -->

    </div> <!-- container-fluid../..// -->

</nav>

<!-- ============= COMPONENT END// ============== -->
 
        </nav>
        <script type="text/javascript">
            $(function() {
                var images = ['images/background-3.jpg', 'images/background-7.jpg'];
                $('.topfoldbg').css({'background-image': 'linear-gradient( rgba(255, 255, 255, 0.9), rgba(255, 255, 255, 0.7), rgba(255, 255, 255, 0)), url(https://www.clarip.com/' + images[Math.floor(Math.random() * images.length)] + ')'});
            });
        </script>
        <section class="container-fluid topfoldbg">
            <div class="topfoldrow">
                <div class="container topfold-content">
                    <div class="row">
                        <div class="col-lg-9 col-sm-12">
                            <h1>The most powerful enterprise</h1>
                            <h2><b>Privacy Governance</b> Platform.</h2>
                            <p>Analyze billions of data points. Manage consent and preferences. Automate data mapping. Discover PII across thousands of data sources. Fullfill subject rights requests end-to-end.<br><b>All on Auto-PILOT!</b></p>
                        </div>
                        <div class="col-lg-3 col-sm-12">
                            <div class="entrybuttons">
                                <a href="https://www.clarip.com/privacy/demo?source=home" class="entry-btn1">DEMO</a>
                                <a href="https://www.clarip.com/business?source=home" class="entry-btn2">EXPLORE</a>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </section>
        <section class="container-fluid content1">
            <div class="row center-row">
                <div class="col-lg-8 col-sm-12">
                    <div>
                        <h2>DATA RISK INTELLIGENCE</h2>
                        <p>Close gaps in privacy notices<br>
                            Uncover new revenue opportunities<br>
                            Stop customer PII data leakage</p>
                        <span>Patented Technology | Hybrid AI | Fortune 100 Clients</span>
                        <a href="https://www.clarip.com/privacy-hub?source=home" class="entry-btn3">PRIVACY HUB</a>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12">
                    <div>
                        <h2>Choice<br>Matters.</h2>
                        <p>Don't let down your customer's trust.<br>Most powerful Consent Management Platform on the market.</p>
                    </div>
                    <a href="https://www.clarip.com/consent-management?source=home" class="entry-btn4">CONSENT MANAGEMENT</a>
                </div>
            </div>
        </section>
        <section class="container-fluid content2">
            <div class="row center-row">
                <div class="col-md-4">
                    <a href="https://www.clarip.com/dsar-portal?source=home" class="learnmore">
                        <img src="https://www.clarip.com/images/computer.svg" alt="Data Subject Access Request Portal">
                        <h3>DSAR Portal</h3>
                        <p>Powerful data subject access rights management software for the enterprise!</p>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="https://www.clarip.com/leads/ccpachecklist?source=home" class="learnmore">
                        <img src="https://www.clarip.com/images/ticket-details-list.svg" alt="California Consumer Privacy Act">
                        <h3>CCPA Checklist</h3>
                        <p>Is Your Company Ready for CCPA? Download the Clarip compliance checklist. <b>It's Free!</b></p>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="https://www.clarip.com/consumer?source=home" class="learnmore">
                        <img src="https://www.clarip.com/images/consumer.svg" alt="Understand what is collected and who it is shared with">
                        <h3>Consumer</h3>
                        <p>Privacy made easy! Understand what's collected, and who it's shared with.</p>
                    </a>
                </div>
            </div>
        </section>
        <section class="container-fluid content3">
            <div class="row center-row">
                <img src="https://clarip.com/privacy/img/clarip-guy.png" alt="clarip guy and the privacy compliance experts">
            </div>
            <svg enable-background="new 0 0 1500 95" version="1.1" viewBox="0 0 1500 95" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" id="bigslant" >
                <style type="text/css">
                    polygon{fill:url(#MyGradient)}
                </style>
                <defs>
                    <linearGradient id="MyGradient">
                        <stop offset="50%" stop-color="#2cd5c4" />
                        <stop offset="95%" stop-color="#00aeef" />
                    </linearGradient>
                </defs>
                <polygon points="1500 95 0 95 1500 0"></polygon>
            </svg>
        </section>
        <footer>
            <div class="container-footer">

    <div class="container">

        <div class="row footerlist">

            <div class="col-lg-3">

                <h4>Contact</h4>

                <ul>

                    <li class="contacticons">

                        <span class="home-icon"><svg id="Layer_1" focusable="false" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="13px" height="13px" viewBox="0 0 13 13">
                                <path fill="#fff" d="M6.3, 4.1L2.2, 7.5v3.7c0, 0.2, 0.2, 0.4, 0.4, 0.4l2.5, 0c0.2, 0, 0.4-0.2, 0.4-0.4V9c0-0.2, 0.2-0.4, 0.4-0.4h1.4 c0.2, 0, 0.4, 0.2, 0.4, 0.4v2.2c0, 0.2, 0.2, 0.4, 0.4, 0.4c0, 0, 0, 0, 0, 0l2.5, 0c0.2, 0, 0.4-0.2, 0.4-0.4V7.5L6.7, 4.1C6.6, 4,6.4, 4, 6.3, 4.1 L6.3, 4.1z M12.9, 6.4L11, 4.8V1.7c0-0.1-0.1-0.3-0.3-0.3H9.5c-0.1, 0-0.3, 0.1-0.3, 0.3v1.6l-2-1.7c-0.4-0.3-1-0.3-1.4, 0L0.1, 6.4 C0, 6.5, 0, 6.7, 0.1, 6.8c0, 0, 0, 0, 0, 0l0.6, 0.7c0.1, 0.1,0.3, 0.1, 0.4, 0c0, 0, 0, 0, 0, 0l5.3-4.4c0.1-0.1, 0.2-0.1, 0.3, 0L12, 7.5 c0.1, 0.1, 0.3, 0.1, 0.4, 0c0, 0, 0, 0, 0, 0l0.6-0.7C13, 6.7, 13, 6.5, 12.9, 6.4C12.9, 6.4, 12.9, 6.4, 12.9, 6.4L12.9, 6.4z" />
                            </svg></span>1521, Concord Pike, Suite #301,<br>Wilmington, DE 19803 USA
                    </li>

                    <li class="contacticons">

                        <span class="home-icon"><svg id="Layer_1" focusable="false" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="13px" height="13px" viewBox="0 0 13 13">
                                <path fill="#fff" d="M6.3, 4.1L2.2, 7.5v3.7c0, 0.2, 0.2, 0.4, 0.4, 0.4l2.5, 0c0.2, 0, 0.4-0.2, 0.4-0.4V9c0-0.2, 0.2-0.4, 0.4-0.4h1.4 c0.2, 0, 0.4, 0.2, 0.4, 0.4v2.2c0, 0.2, 0.2, 0.4, 0.4, 0.4c0, 0, 0, 0, 0, 0l2.5, 0c0.2, 0, 0.4-0.2, 0.4-0.4V7.5L6.7, 4.1C6.6, 4,6.4, 4, 6.3, 4.1 L6.3, 4.1z M12.9, 6.4L11, 4.8V1.7c0-0.1-0.1-0.3-0.3-0.3H9.5c-0.1, 0-0.3, 0.1-0.3, 0.3v1.6l-2-1.7c-0.4-0.3-1-0.3-1.4, 0L0.1, 6.4 C0, 6.5, 0, 6.7, 0.1, 6.8c0, 0, 0, 0, 0, 0l0.6, 0.7c0.1, 0.1,0.3, 0.1, 0.4, 0c0, 0, 0, 0, 0, 0l5.3-4.4c0.1-0.1, 0.2-0.1, 0.3, 0L12, 7.5 c0.1, 0.1, 0.3, 0.1, 0.4, 0c0, 0, 0, 0, 0, 0l0.6-0.7C13, 6.7, 13, 6.5, 12.9, 6.4C12.9, 6.4, 12.9, 6.4, 12.9, 6.4L12.9, 6.4z" />
                            </svg></span>20 Montchanin Road, Suite 20,<br>Greenville, DE 19807 USA
                    </li>

                    <li class="contacticons">

                        <span class="globe-icon"><svg id="Layer_1" focusable="false" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="13px" height="13px" viewBox="0 0 13 13">
                                <path fill="#fff" d="M6.5, 0C2.9, 0, 0, 2.9, 0, 6.5S2.9, 13, 6.5, 13S13, 10.1, 13, 6.5S10.1, 0, 6.5, 0z M8.7, 9.4C8.6, 9.5, 8.4, 9.6, 8.4, 9.7 C8.3, 9.7, 8.2, 9.8, 8.2, 9.9c0, 0.1-0.1, 0.3-0.1, 0.4l-0.5, 1.2c-0.4, 0.1-0.7, 0.1-1.1, 0.1V11c0-0.3-0.2-1-0.6-1.3C5.7, 9.5, 5.7, 9.3, 5.7, 9.1 V8.2c0-0.3-0.2-0.6-0.4-0.7C4.9, 7.3, 4.3, 7, 4, 6.8C3.6, 6.7, 3.4, 6.5, 3.1, 6.3l0, 0C2.9, 6.1, 2.8, 5.9, 2.6, 5.7C2.4, 5.3, 2, 4.7, 1.7, 4.4 c0.5-1.2, 1.5-2.2, 2.7-2.7L5.1, 2c0.3, 0.1, 0.6-0.1, 0.6-0.4V1.3c0.2, 0, 0.4-0.1, 0.6-0.1L7, 2c0.2, 0.2, 0.2, 0.4, 0, 0.6L6.9, 2.7L6.6, 3 c-0.1, 0.1-0.1, 0.2, 0, 0.3l0.1, 0.1c0.1, 0.1, 0.1, 0.2, 0, 0.3L6.6, 3.9C6.5, 4, 6.5, 4, 6.4, 4H6.2C6.1, 4, 6.1, 4, 6, 4L5.8, 4.3 c-0.1, 0.1-0.1, 0.2, 0, 0.2l0.4, 0.8c0.1, 0.1, 0, 0.3-0.2, 0.3H5.8c-0.1, 0-0.1, 0-0.1-0.1L5.4, 5.4C5.3, 5.3, 5.2, 5.3, 5, 5.3L4.2, 5.6 C4.1, 5.6, 4, 5.8, 4, 5.9C4, 6, 4.1, 6.1, 4.2, 6.2l0.3, 0.1C4.7, 6.4, 5, 6.5, 5.2, 6.5s0.6, 0.7, 0.8, 0.8h1.7c0.2, 0, 0.4, 0.1, 0.6, 0.2l0.4, 0.4 C8.9, 8.1, 9, 8.3, 9, 8.5C9, 8.8, 8.9, 9.1, 8.7, 9.4z M10.9, 7c-0.2, 0-0.3-0.1-0.4-0.3L10.1, 6c-0.1-0.2-0.1-0.5, 0-0.7l0.5-0.8 c0.1-0.1, 0.1-0.2, 0.2-0.2l0.3-0.2c0.4, 0.7, 0.6, 1.5, 0.6, 2.3c0, 0.2, 0, 0.4, 0, 0.7L10.9, 7z" />
                            </svg></span><a href="https://www.clarip.com/privacy/contact">Contact Online</a>
                    </li>

                </ul>

                <h3 class="contacticons">

                    <span class="phone-icon">

                        <svg id="Layer_1" focusable="false" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20px" height="20px" viewBox="0 0 13 13" style="enable-background:new 0 0 13 13;">
                            <path fill="#fff" d="M0, 1.2C0, 7.7, 5.3, 13, 11.8, 13c0.3, 0, 0.5-0.2, 0.6-0.5L13, 9.9c0.1-0.3-0.1-0.6-0.4-0.7L9.8, 8c-0.2-0.1-0.5, 0-0.7, 0.2L7.8, 9.7

                            c-2-0.9-3.6-2.6-4.5-4.5l1.5-1.3C5.1, 3.8, 5.1, 3.5, 5, 3.2L3.8, 0.4C3.7, 0.1, 3.4-0.1, 3.1, 0L0.5, 0.6C0.2, 0.7, 0, 0.9, 0, 1.2z" />
                        </svg></span>888-252-5653
                </h3>

                <ul>

                    <li class="contacticons">

                        <span class="home-icon"><svg id="Layer_1" focusable="false" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="13px" height="13px" viewBox="0 0 13 13">
                                <path fill="#fff" d="M6.3, 4.1L2.2, 7.5v3.7c0, 0.2, 0.2, 0.4, 0.4, 0.4l2.5, 0c0.2, 0, 0.4-0.2, 0.4-0.4V9c0-0.2, 0.2-0.4, 0.4-0.4h1.4 c0.2, 0, 0.4, 0.2, 0.4, 0.4v2.2c0, 0.2, 0.2, 0.4, 0.4, 0.4c0, 0, 0, 0, 0, 0l2.5, 0c0.2, 0, 0.4-0.2, 0.4-0.4V7.5L6.7, 4.1C6.6, 4,6.4, 4, 6.3, 4.1 L6.3, 4.1z M12.9, 6.4L11, 4.8V1.7c0-0.1-0.1-0.3-0.3-0.3H9.5c-0.1, 0-0.3, 0.1-0.3, 0.3v1.6l-2-1.7c-0.4-0.3-1-0.3-1.4, 0L0.1, 6.4 C0, 6.5, 0, 6.7, 0.1, 6.8c0, 0, 0, 0, 0, 0l0.6, 0.7c0.1, 0.1,0.3, 0.1, 0.4, 0c0, 0, 0, 0, 0, 0l5.3-4.4c0.1-0.1, 0.2-0.1, 0.3, 0L12, 7.5 c0.1, 0.1, 0.3, 0.1, 0.4, 0c0, 0, 0, 0, 0, 0l0.6-0.7C13, 6.7, 13, 6.5, 12.9, 6.4C12.9, 6.4, 12.9, 6.4, 12.9, 6.4L12.9, 6.4z" />
                            </svg></span><a href="https://www.clarip.com/demo"><b>SCHEDULE DEMO</b></a>
                    </li>

                </ul>



            </div>

            <div class="col-lg-3">

                <h4>About</h4>

                <ul>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/about">About Us</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/team">Team</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/business#">Support</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/jobs">Careers</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/business-pricing">Pricing</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/terms">Terms and Conditions</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/data-privacy/privacy-policy/">Privacy Policy</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/blog">Blog</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/press.php">Press</a></li>

                </ul>

            </div>

            <div class="col-lg-3">

                <h4>Resources</h4>

                <ul>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/blog/topics/whitepapers/">White Papers</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/marketing.php">Building Customer Engagement</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/compliancemanager">Compliance</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/iot">IoT Readiness</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/highlights">Key Features</a></li>

                </ul>

            </div>

            <div class="col-lg-3">

                <h4>Solutions</h4>

                <ul>

                    <li><span class="chevron"></span><a href="https://clarip.com/privacy/do-not-sell-my-information">Do Not Sell Automation</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/dsar-portal">DSR Fulfillment Automation</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/data-mapping">Data Mapping Automation</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/privacy-risk-scanner">Data Risk Intelligence</a></li>

                    <li><span class="chevron"></span><a href="https://clarip.com/privacy/ccpa-software">CCPA/CPRA Compliance</a></li>

                    <li><span class="chevron"></span><a href="https://clarip.com/privacy/gdpr-software">GDPR Compliance</a></li>

                    <li><span class="chevron"></span><a href="https://www.clarip.com/privacy-notice-for-humans">Privacy Policy Automation</a></li>

                </ul>

            </div>

        </div>

    </div>

    <div class="bottom-banner">

        <div class="banner-container">

            <span>
                <p>Copyright
                    2025 Clarip Inc. All Rights Reserved.
                </p>
            </span>

            <span>

                <a href="https://twitter.com/claripinc">

                    <svg focusable="false" class="i-twitter" viewBox="0 0 27.1 22" xmlns="http://www.w3.org/2000/svg">
                        <path d="m24.3 5.5v0.7c0 7.3-5.6 15.8-15.8 15.8-3.1 0-6.1-0.9-8.5-2.5 0.4 0.1 0.9 0.1 1.3 0.1 2.6 0 5-0.9 6.9-2.4-2.4-0.1-4.5-1.7-5.2-3.9 0.3 0.1 0.7 0.1 1 0.1 0.5 0 1-0.1 1.5-0.2-2.5-0.5-4.4-2.7-4.4-5.4v-0.1c0.7 0.4 1.6 0.7 2.5 0.7-1.5-1-2.5-2.7-2.5-4.6 0-1 0.3-2 0.8-2.8 2.7 3.4 6.8 5.6 11.4 5.8-0.1-0.4-0.1-0.8-0.1-1.3 0-3.1 2.5-5.6 5.6-5.6 1.6 0 3 0.7 4.1 1.8 1.3-0.2 2.5-0.7 3.5-1.3-0.4 1.3-1.3 2.4-2.4 3.1 1-0.1 2.1-0.5 3.1-0.9-0.8 1.1-1.7 2.1-2.8 2.9z" />
                    </svg>

                </a>

                <a href="https://www.linkedin.com/company/clarip">

                    <svg focusable="false" class="i-linkedin" viewBox="0 0 22 22" xmlns="http://www.w3.org/2000/svg">
                        <path d="m4.9 22h-4.5v-14.7h4.6v14.7zm-2.3-16.7c-1.4 0-2.6-1.2-2.6-2.7 0-1.4 1.2-2.6 2.6-2.6 1.5 0 2.6 1.2 2.6 2.6 0.1 1.5-1.1 2.7-2.6 2.7zm19.4 16.7h-4.6v-7.1c0-1.7 0-3.9-2.4-3.9s-2.7 1.9-2.7 3.8v7.2h-4.5v-14.7h4.4v2h0.1c0.6-1.2 2.1-2.4 4.3-2.4 4.6 0 5.5 3 5.5 7l-0.1 8.1z" />
                    </svg>

                </a>

                <button onclick="topFunction()" id="backtotop" title="Go to top">

                    <svg class="backtotop" enable-background="new 0 0 15 15" version="1.1" viewBox="0 0 15 15" xml:space="preserve" xmlns="http://www.w3.org/2000/svg">
                        <path fill="#fff" d="m13.8 11.7c-0.3 0-0.6-0.1-0.9-0.4l-5.4-5.3-5.4 5.4c-0.5 0.5-1.3 0.5-1.8 0s-0.5-1.3 0-1.8l6.2-6.2c0.5-0.5 1.3-0.5 1.8 0l6.2 6.2c0.5 0.5 0.5 1.3 0 1.8-0.1 0.2-0.4 0.3-0.7 0.3z" />
                    </svg>

                </button>

                <script>
                    function topFunction() {

                        document.body.scrollTop = 0;

                        document.documentElement.scrollTop = 0;

                    }

                </script>

            </span>

        </div>

    </div>

</div>
 
        </footer>     
    </body>
</html>