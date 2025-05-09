<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" type="image/png" sizes="16x16" href="fav16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="fav32x32.png">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimal-ui">
    <link rel="icon" type="image/png" href="/img/fav16x16.png" sizes="16x16"/>
    <link rel="icon" type="image/png" href="/img/fav32x32.png" sizes="32x32"/>
    <link rel="icon" type="image/png" href="/img/fav16x16.png">
        <title>Rich Audience Marketplace</title>
    <meta name="description" content="Rich Audience Marketplace">
<meta name="csrf-param" content="_csrf-richaudience">
<meta name="csrf-token" content="EgjbMPgIVft1rwxnMxsCY_mA7L9nsGw9a0Nff9c462xLapN4pzEBnhz7YDJ0Q0M8n-ad9SzqIwgBLRkxs0mZJg==">

<link href="/css/cookies.css" rel="stylesheet">
<link href="/css/bootstrap4.min.css" rel="stylesheet">
<link href="/css/styles.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">
<link href="/css/custom.css" rel="stylesheet">
<link href="/css/animsition.css" rel="stylesheet">
<link href="/css/fontawesome.css" rel="stylesheet">
<link href="/css/drawSvg.css" rel="stylesheet">
<link href="/css/animation.css" rel="stylesheet">
<link href="/css/custom-extra.css" rel="stylesheet">
<link href="/css/menu.css" rel="stylesheet">
<link href="/css/transition.css" rel="stylesheet">
<link href="/css/bootstrap-select.min.css" rel="stylesheet">
<style>#languageSelector{display:block;}</style></head>
<body>
<img class="d-none" src="/img/logo2.gif">
<script>
var language = "en";
</script>

    <script>
        function checkCMPResponse() {
            window.top.__tcfapi('addEventListener', 2, function (tcData, success) {
                if (tcData.eventStatus == "useractioncomplete" || tcData.eventStatus == "tcloaded") {
                    __tcfapi('getTCData', 2, (tcData, success) => {
                        if (success) {
                            ggConsents = tcData;
                        }
                    }, [755, 108]);
                    if (ggConsents.purpose.consents[1] && ggConsents.purpose.consents[2] && ggConsents.purpose.consents[3] && ggConsents.purpose.consents[4]) {
                        // check google
                        if (ggConsents.vendor.consents[108]) {
                            loadSCR(108);
                        }
                        if (ggConsents.vendor.consents[755]) {
                            loadSCR(755);
                        }

                    }
                }


            });
        }

        window.onload = checkCMPResponse;

        function loadSCR(vendor) {
            if (vendor == 755) {
                var exScript = document.createElement('script');
                exScript.onload = function () {
                    window.dataLayer = window.dataLayer || [];

                    function gtag() {
                        dataLayer.push(arguments);
                    }

                    gtag('js', new Date());

                    gtag('config', 'UA-83995949-1');
                };
                exScript.src = "https://www.googletagmanager.com/gtag/js?id=UA-83995949-1";
                document.getElementsByTagName('head')[0].appendChild(exScript);
            }

            if (vendor == 108) {

            }
        }
    </script>
    <div id="isMobile"></div>
<div id="languageSelector">
    <div class="currentLanguage">
        EN        <div id="currentLanguageIcon" class="livicon-evo" style="margin: 0;padding-left: 0" data-options="name:morph-chevron-top-bottom.svg;style:solid;size:24px;solidColor:#FFFFFF;rotate:180;eventType:click; "></div>
    </div>
    <div class="availableLanguage">
        <a href="/en/" class="active">EN</a>
        <a href="/es/" class="">ES</a>
    </div>
</div>


<div id="header" class="menubar">
    <div class="">
        <a href="/en/" onclick='hideMenuLayer();'>
            <div class="d-none d-md-block" id="logo_animation_container" style="background-color:rgba(255, 255, 255, 0.00); width:100px; height:100px; margin-top:-5px; margin-left: -4px;">
                <canvas id="logo_canvas" class="logo_canvas" width="100" height="100"
                        style="position: absolute; display: block; background-color:rgba(255, 255, 255, 0.00);"></canvas>
                <div id="logo_dom_overlay_container"
                     style="pointer-events:none; overflow:hidden; width:100px; height:100px; position: absolute; left: 0px; top: 0px; display: block;">
                </div>
            </div>
            <img class="d-md-none" src="/img/imago.svg" alt="logo">
        </a>
    </div>
    <div class="logomenu">
        <div id="icon-menu-desktop" class="d-none d-lg-block livicon-evo" data-options="name: morph-menu-arrow-bottom.svg;size: 50px;eventType:click;solidColor:#FFFFFF;
        rotate:90"></div>
        <div id="icon-menu-mobile" class="d-block d-lg-none d-md-block livicon-evo"
             data-options="name: morph-menu-arrow-left.svg;size: 50px;eventType:click;solidColor:#FFFFFF"></div>
    </div>

            <div class="title"><span></span></div>
</div>
<div id="mobile-navigation" class="menubar d-lg-none">
    <p class="section-name"></p>
</div>

<div class="nav" id="swup">
    <div id="languageSelectorMenu">
        <div class="currentLanguage">
            EN            <div id="currentLanguageIconMenu" class="livicon-evo" style="margin: 0;padding-left: 0" data-options="name:morph-chevron-top-bottom.svg;style:solid;size:24px;solidColor:#FFFFFF;rotate:180;eventType:click; "></div>
        </div>
        <div class="availableLanguage">
            <a href="/en/" class="active">EN</a>
            <a href="/es/" class="">ES</a>
        </div>
    </div>
    <ul class="navigation-menu-mobile .d-block .d-sm-none">
        <li class="white-hover">
            <i class="icon-home"></i><a href="/en/">Home</a>
                    </li>
        <li class="white-hover">
            <i class="icon-publishers"></i><a href="/en/publishers/">Solutions for Publishers</a>
            <div style="display: inline-block;float: right" class="livicon-evo"
                 data-options="eventOn:parent;name: morph-minus-plus.svg;size: 30px;eventType:click;solidColor:#FFFFFF;morphState:end;"></div>
            <div class="drop">
                <ul>
                    <a href='/publishers/#connexion'>
                        <li class="">Connection</li>
                    </a>
                    <a href='/publishers/#formats'>
                        <li class="">Formats</li>
                    </a>
                    <a href='/publishers/#reporting'>
                        <li class="">Reporting / Control</li>
                    </a>
                    <a href='/publishers/#ssp'>
                        <li class="">Marketplace for Publishers</li>
                    </a>
                                    </ul>
            </div>
        </li>
        <li class="white-hover">
            <i class="icon-advertisers"></i><a href="/en/advertisers/">Solutions for Advertisers</a>
            <div style="display: inline-block;float: right" class="livicon-evo"
                 data-options="eventOn:parent;name: morph-minus-plus.svg;size: 30px;eventType:click;solidColor:#FFFFFF;morphState:end;"></div>
            <div class="drop">
                <ul>
                    <a href='/advertisers/#advSecurity'>
                        <li class="">Security and Brand Safety</li>
                    </a>
                    <a href='/advertisers/#formats'>
                        <li class="">Formats</li>
                    </a>
                    <a href='/advertisers/#targeting'>
                        <li class="">Advanced Targeting</li>
                    </a>
                    <a href='/advertisers/#reporting'>
                        <li class="">Reporting / Control</li>

                        <a href='/advertisers/#custom'>
                            <li class="">Private Ecosystems</li>
                        </a>
                                        </ul>
            </div>
        </li>
                <li class="white-hover">
            <i class="icon-contacto"></i><a href="/en/contact/">Contact</a>
        </li>
    </ul>
    <div class="nav__content d-flex .d-none .d-sm-block" onmouseleave="hideMenu('nav_intro')">
        <ul class="nav__list" style="display: none">
                        <li class="nav__list-item" id="nav_home_li" onmouseover="hideSubMenus(this)">
                <i class="icon-home"></i><a href="/en/" onclick='hideMenuLayer();'>Home</a>
            </li>
            <li class="nav__list-item" id="nav_about_li" onmouseover="showMenu('nav_sellers',$(this))">
                <i class="icon-publishers"></i><a href="/en/publishers/" onclick='hideMenuLayer();'>Solutions for Publishers</a>
            </li>
            <li class="nav__list-item" id="nav_projects_li" onmouseover="showMenu('nav_buyers',$(this))">
                <i class="icon-advertisers"></i><a href="/en/advertisers/" onclick='hideMenuLayer();'>Solutions for Advertisers</a>
            </li>

                        <li class="nav__list-item" onmouseover="hideSubMenus(this)">
                <i class="icon-contacto"></i><a href="/en/contact/" onclick='hideMenuLayer();'>Contact</a>
            </li>


        </ul>
        <ul class="nav_sub__list collapse" id="nav_intro">
            <a href='javascript:goTo("/en/","porque")'>
                <li class="nav__list-item">¿Por qué Rich Audience?</li>
            </a>
            <a href='javascript:goTo("/en/","sellers")'>
                <li class="nav__list-item">Publishers</li>
            </a>
            <a href='javascript:goTo("/en/","buyers")'>
                <li class="nav__list-item">Advertisers</li>
            </a>
            <a href='javascript:goTo("/en/","formats")'>
                <li class="nav__list-item">Formatos</li>
            </a>
                    </ul>

        <ul class="nav_sub__list collapse" id="nav_buyers">
            <a href='/en/advertisers/#advSecurity'>
                <li class="nav__list-item">Security and Brand Safety</li>
            </a>
            <a href='/en/advertisers/#formats'>
                <li class="nav__list-item">Formats</li>
            </a>
            <a href='/en/advertisers/#targeting'>
                <li class="nav__list-item">Advanced Targeting</li>
            </a>
            <a href='/en/advertisers/#reporting'>
                <li class="nav__list-item">Reporting / Control</li>

                <a href='/en/advertisers/#custom'>
                    <li class="nav__list-item">Private Ecosystems</li>
                </a>
                        </ul>

        <ul class="nav_sub__list collapse" id="nav_sellers">
            <a href='/en/publishers/#connexion'>
                <li class="nav__list-item">Connection</li>
            </a>
            <a href='/en/publishers/#formats'>
                <li class="nav__list-item">Formats</li>
            </a>
            <a href='/en/publishers/#reporting'>
                <li class="nav__list-item">Reporting / Control</li>
            </a>
            <a href='/en/publishers/#ssp'>
                <li class="nav__list-item">Marketplace for Publishers</li>
            </a>
                    </ul>
            </div>
</div><div class="animsition containerWrapper">
    
<div id="presentation" class="home" style="position: initial">
    <div style="position: relative">
        <section class="main" style="position: initial">
            <div class="d-none">
                <p>01.<br>why rich audience</p>
            </div>
            <div class="row">
                <div class="col-xl-2 col-lg2 hidden-md hidden-sm hidden-xs"></div>
                <div class="titlepresentation col-xl-10 col-lg-10 col-md-12">
                    <h1><span>A universe of</span><br>Solutions for Advertisers and Publishers</h1>
                </div>
            </div>
            <div class="row boxbuttonsfunnel justify-content-between">
                <div class="col-xl-3 col-lg-4 col-md-4 col-sm-4 col-xs-4 col-5 buttonsfunnel left sellers" id="sellersText">
                    <div class="titularfunnel">Solutions for Publishers</div>
                    <div class="funnelbaseline">We help you monetize your website</div>
                    <div class="line-fill-left"></div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-4 col-sm-4 col-xs-4 col-5 buttonsfunnel right buyers" id="buyersText">
                    <div class="titularfunnel">Solutions for Advertisers</div>
                    <div class="funnelbaseline">We help you communicate your brand</div>
                    <div class="line-fill-right"></div>
                </div>
            </div>
        </section>
        <a class="animsition-link" data-animsition-out-class="fade-out-right" href="/en/publishers/">
            <div id="sellersLinkLeft"></div>
        </a>
        <a class="animsition-link" data-animsition-out-class="fade-out-left" href="/en/advertisers/">
            <div id="sellersLinkRight"></div>
        </a>
    </div>
    <section id="porque" class="containerfull">
        <div class="row">
            <div class="col-xl-2 col-lg-3 col-md-12 marcadorsection">
                <p>01.<br>why rich audience</p>
            </div>
            <div class="col-xl-8 col-lg-9 col-md-12 txtpresentacion">
                                <p>We have been working hard to bring a new ecosystem onto the market that allows brands to connect with their audiences through the best publishers in each market, using a 
        <span class="position-relative d-none d-lg-inline-block">
            
    <svg id="animated_underline_1" preserveAspectRatio="none" class="animated animated_underline_1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 524 14">
        <mask class="mask">
        <path fill="none" stroke="#FFF" stroke-width="5"
        d="M 0.51846966,6.5686016 81.918206,4.4947229 195.46306,2.4208443 318.51319,1.2110818 414.94855,2.5936675 520.88918,5.8773087 344.26385,6.0501319 296.73747,4.3218997 209.98021,4.8403694 79.325858,9.5065963 7.4313984,12.271768 154.8496,6.7414248 202.54881,8.6424802 300.19393,6.914248 330.95646,7.2598944"/>
        </mask>
            <g class="layer">
                <image
                xlink:href="data:img/png;base64,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"/>
            </g>
        </svg>
            secure, 100% transparent and
        </span>
        
        <span class="position-relative d-inline-block d-md-none">
            
    <svg id="animated_underline_1" preserveAspectRatio="none" class="animated animated_underline_1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 524 14">
        <mask class="mask">
        <path fill="none" stroke="#FFF" stroke-width="5"
        d="M 0.51846966,6.5686016 81.918206,4.4947229 195.46306,2.4208443 318.51319,1.2110818 414.94855,2.5936675 520.88918,5.8773087 344.26385,6.0501319 296.73747,4.3218997 209.98021,4.8403694 79.325858,9.5065963 7.4313984,12.271768 154.8496,6.7414248 202.54881,8.6424802 300.19393,6.914248 330.95646,7.2598944"/>
        </mask>
            <g class="layer">
                <image
                xlink:href="data:img/png;base64,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"/>
            </g>
        </svg>
            secure, 100%
        </span>
        
        <span class="position-relative d-inline-block d-md-none">
            
    <svg id="animated_underline_2" preserveAspectRatio="none" class="animated animated_underline_2" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 387 8">
        <mask class="mask">
            <path fill="none" stroke="#FFF" stroke-width="2"
            d="M 4.6588061,3.4050132 H 33.186016 L 52.395614,3.2135554 97.324374,2.4477243 138.1687,1.9371702 154.57025,1.6180739 188.13918,1.3627968 219.0277,1.0437005 249.59713,0.72460421 h 26.48499 L 306.65155,0.85224273 340.47576,0.66078494 0.57437335,5.4472295 228.79205,2.7030013 380.42662,1.9371702 22.528199,6.7236148"/>
        </mask>
        <g class="layer">
            <image
            xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAAYMAAAAICAYAAAAbZJO9AAADuklEQVRoge1ayW4TQRB9FccOcRwnJGxikVguwAUOXPgDrhz4Bo58AjdOXPgdjhz4AiBSRBBJDoQlkeMtTrw0avQalYq2xwtOoqifZNk9U91dPdPz6lWNBQkJJwTnXA7AImefAzBvPCkBmFVtv1+XIt6WAcwMWMUCgPyA8+f46Yc8xxhlbOt71vGA5QHnwGs0l2HTD/5a58bsu8Tr3w8LGevKQtVviQn6/w8cADhU47QBNFS7Rz8t9pXvddr8ov2wiI3d4XgaRwCabNcAdI2fVY4V7LoiUhvGhxQMjgHOuSKAgprJ/y6qtiW5rPYMCTBAkyr4UJZU25KZnd+2LTFbsrSEZNfnH6pd+hH6aRKMEXpCQsL0EAKdD1wtfvZ5zAeNyrEEA6MALbTisHaWpCzpaEVoCVDbWjK1ZDfsOIgQobVHIruR0ea9H6TuE6aLjlHB46BJRToK/LzfSFbhOdPi44gK+DyAK1TK3vY+/e3yvMUOgFt8VltU6l4UrZh1LlLVb1NVX+derFBA3TGiucbx/F5dPaV70j9PbwBs0MdV+muz2DL5zH/e/hMMnHMvATwHcHHCtC9humhnlD7OOpxJqzURWYJo8HohknrXeQy08WM8A/BOpfw9dV4TyTyFgCenLeOPLjk4qrCAoMxi58aBJ7xrADaZkfVDQ0TaE86VMCScc1nlSUQEbwzDlAZ15v1FRLZGvU/RzMA55we+DeACa5g3GJkLnLSs6o+hBDGjonBQxsuMsKEOGrKAPB+sxVOsBn+qGxVuaCCgMtfR4pqzMqwG7WLBtcp5+tWseySrgmqHa9YcsJHq3EShRlxRpKPJskO/OrSps32PBLcZGburyC5HP3b5XSWh5k1G5ed+SMX2lf0DKur3IKI8EJFD55zflysist5n7QkJCSNCnHOvADxVZZNA2IXIC73TCqcIuU5izZFwsqJuDA2SY47EZxGC3R7J2duts58nsrsq1axQtX1UY+wxNW6yzwIDY4nzVWkfSLHFdW0ya+vw2AevAjiOJtEig/ksg+6GiOzEFuqcu8QssCoi2zz2J7CLyEGsT0JCwtmDDwbC+ttjVfuO/eOhZNJrnXprpRmOd9jnAWt3PrO4TOIpmRegw6JG8vvM2t+K6rdLpdpT66iwFrhPf4q0+cGx5kio3wE8YfBYA/CJdo8AvBeRvwHBOXcVwE2uc41r8uS5JSIn/W+IhISEhLEwlRfIfGH8GsAL9denoGJ3qIyrStFWVc03KNy2Cix1EZm0rpqQkJCQEAOA3+EyGixAqZZGAAAAAElFTkSuQmCC"/>
        </g>
    </svg>
            transparent and
        </span>
         multi-device environment. We call it the Rich Audience Marketplace.</p>

                                <p>Advertisers have a wide range of formats available: 
        <span class="position-relative d-none d-lg-inline-block">
            
    <svg id="animated_underline_1" preserveAspectRatio="none" class="animated animated_underline_1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 524 14">
        <mask class="mask">
        <path fill="none" stroke="#FFF" stroke-width="5"
        d="M 0.51846966,6.5686016 81.918206,4.4947229 195.46306,2.4208443 318.51319,1.2110818 414.94855,2.5936675 520.88918,5.8773087 344.26385,6.0501319 296.73747,4.3218997 209.98021,4.8403694 79.325858,9.5065963 7.4313984,12.271768 154.8496,6.7414248 202.54881,8.6424802 300.19393,6.914248 330.95646,7.2598944"/>
        </mask>
            <g class="layer">
                <image
                xlink:href="data:img/png;base64,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"/>
            </g>
        </svg>
            Display, Video, Rich Media and native.
        </span>
        
        <span class="position-relative d-inline-block d-md-none">
            
    <svg id="animated_underline_1" preserveAspectRatio="none" class="animated animated_underline_1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 524 14">
        <mask class="mask">
        <path fill="none" stroke="#FFF" stroke-width="5"
        d="M 0.51846966,6.5686016 81.918206,4.4947229 195.46306,2.4208443 318.51319,1.2110818 414.94855,2.5936675 520.88918,5.8773087 344.26385,6.0501319 296.73747,4.3218997 209.98021,4.8403694 79.325858,9.5065963 7.4313984,12.271768 154.8496,6.7414248 202.54881,8.6424802 300.19393,6.914248 330.95646,7.2598944"/>
        </mask>
            <g class="layer">
                <image
                xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAAgwAAAAOCAYAAABD0UQtAAAN+klEQVR4nO2cW5CcVRHH++wu2fudJbsBkgjhkoWIgiIXBQKUWipeUMsH5UXKkgfLssoqnix4UB98sMpHfPBWlg9WLMsrqCiFV5BIlFsMJBByI7vZ3cnOdS8zs8c6+GuqOflmdhZmswn7ddXUzPd95zvfOd19+t/dp79xklJKKZ1C3vtzRKSb8+0i0mna9IpIa3RPn4i0NHAu0AYR6Voh13tEpK3O9eX6rDWWQP0ikmQLuug3pjbGs5K+OuHjclTr/nrkmF8zqLIMn5tFVREp1OkrT5uVXiswhyQqikg54fyciCyY45KILJrj+L74OH6mHZ/ty7azbbJhyYUfzrnZJvE3pVWg1GFIadXJe98SGXQLChbILBBbgLTApedbaS8A+zn00xfd43ieRKBl+9fxtJg+Uzo9NA1gFJDDVp66yLXnRWReRMZE5KpVtFnhGQdF5KSI3GDG0Gp08rgBv6BL562RjgSgnRKRGQD4IhHZj26Pv4XsepbvKg6GwP8Sv9W5UKekYpwwdULUGbJ95ERkCZnP8ztH+6w5fu3bORe+1z2lDsMZTN57BUKJQNMCn41+bZRpI2QbEcbgPWB+WxDt4BP3ZQFYIpC3Y9wQReXNorDoJ0TkklWWXJE5lODJ30RkGJDowVgfE5EtIvK2VR6L0iH4v3mV+l+At8K8GqEyYNVtIs9OQGwfhrqb/s7BsAfgnYSPDiN/dZS1WYS/nRj9QXQttN0lIptE5HzanodDoZQD+BVI1PArcCRlYgaQ97kiMpJwfQrnJay37czpCM/ZT5sRs1YUsMIaGjL6usS1Gfi1wPzmuLeN7y7Gei7rdbABWQTAfIV524zBufBqgvGrg97GWBf5XSsDdbroBE5iBRuzydi/M4F87Egs860OjMo5ZxyYLN8lbNoCbUObonNu4Qya92u0bh0G770FVwVKC6wKhLadRqIKphY8FSxt5NtjDIACrkbUFuhtlN2TkO4+G0kXlxijKFFaUo1qUgRRy9v38PM+EfmviDwE/8bg5zYRuYJnZDHWqudLRCUKJPpMdcx6aS9c+xe/Z5jDOIu/CwM8tAKDlpSCVt0pEulkRORxEbkdEAzG/2kR+R3P+yjOST1HLDznOfTpcvRvGvDuhT+qi4EPL8EvB3+OAnz6jDD3w0T+MWiF8f5ARC7FCfgsRv9nIrLXtOtlrgGUX2QuM/DjPq6Xec4zyOgGE8E/KSJ7mNMW5vN7QHiItejRh2HOnWRuV7HWLmGes4xtmnUW+HEHvPg7fDhM2wGzFks4bBtF5AHG+XnG+JiIfJw+d8G/MN4PicgofBtEbya4dh58a+GznzHbbNcg9uB76N+9OC0HjCM1wb130/45HJnN8Gob6+aH8ONTyHKIcYY5/oQ2Wzm+jvHpupxBFxeYk+rGMfQrPP8J2nawTm5mPot1nPsCvF5EbhcinzD+Hcusp0Yoj04LOm+3muZNQLQSKrGWzkcXVovUXmSxD/qZNb9L0XHRZOv0OAcfghMy/2bH+qYdBu99vDdpj1ujFK+NRm0Ea6NeC6S9JiWo/dgoVqNjC+pJ99gx2ej4TKQ5lDlnIoWsOb9kgC6mWvvUmnqzZFN7guItssjtRz3hMvpyAfysGi+6DSWdpl0/xmgEQ9BpIrgu5LKB7720uSzSDzWcqg/6qbdlUADEqvTfR/uTHCtQFjFKl0fzt+uhapyHLEBwu0mZ16JjjGGH6XePeXYw4L8SkU8b53SG5wV+/RKjP0QfV6+w3qGKvBq9J/cG9v9z9K8GeAG9tI5MFcO6gEzLzG+M3weiPjXyUh1xRMbD6MAheDmIoY7rIeZxGAL/b2JOFY5VbwvowkgCf7L0r05sr8kmCRmGE4xvrEYNRxnZaXTcSM2G5ddRc2z3+DXDMMD5vTgKChZzy9RDjDGWHGu8kFCnoNRh1tmT9B/b31EciGkcZm/sSwkejRt57KTfZ7FPcwBuL8+aJ+PUYrJ3oe/PoVcHaHMnff/TOJPK42mczNDnb1lzQR5fN1sTOdbhBtbXMPxUJ7aCnm1hrLtF5IvwPzyzGxkMRXUzsyuo0VlLUuxQbCmaY3UwChFezKH7L4QAynnvv4DhDErxYRMxJRVRtb9Br+xMphKKpVGwjXbVeGiq1TLSFv408lsXaNV4vjn6K6g36ZzztXjlvQ9Rw9tfFZxzE7XaJdw3ZMB7GOPTaYC8yxgJzYooUNssSjfjb8FoDWKcy0Qvi5wbbnA7IosxGI6AeBey+MSbrClYYKyNZAFC25f5tBPJtwA0VQzQo7S7FKMpUfYkiVRnyuhJBYOYwegeAlxuFJH3oSfHMIBBbr9GT8JYbhGRj9DmNyaau5wobhdR6PnwtIR8PohRC0b5L0RyFQAwyO0u+jnA8X7286d5dhk9CTw54pw74L1vZ7zjzH87z1qEV86k4/dhxLfBgwzXdsAbjYr+5JzLeO83mi2GLvqoEN1+knk8Cu+Co/kZxhAA7hEReQ+fH3N9hDkMost98DzM/2Mi8h/GU3XO5b33d/PM3ejgl41cp4mmW+H5CDr6CuDyGLrxgAG+d5HpsBTW/1OM56IV6LTKrYxutprz/0DuA2a7Jolewgb1owvax4JxRDbV2JppBk0gi3aTiSwY50ftogY0HYynJXLsFkydQ452bSazaXlmHaoeZDaHs5CHZwUTnBUMBqrD1M0zWnFadR09hjy20vcovFW7c5x+L2NdaGCkmc1+E9BoJiQPf5KKjteKvh8chvtwFMbrVD6vBml6WT1pBVeNNNQQq6G1QK7FLpqq1jS3grIaaY2iVWGWjDLlnHNLp2eqpxKFgP18LGCr190VXeuLsjLLebTteMqbTXQb0x5kEAN2TEkRZC2ah9+qS7qgY3kqqQHvZsx5vPsTJguhTkOQ3XdYqJoNiCOlYCgvZrzfBqzCAr6eTwkjPmM+R2s5YN77YDRnnXNlc+6dPOdRFnzo9znn3KEG+GP7vgQj0mYMVpj3bufcKU4I7UcB7Zc55+jjZgPSYU5/YJ7XYfgdUcKkkY2uvcD3e+jjhIlCNauUIXrrp+0IfR+jvxdwFuYB3yx6exfOTInoebPRX60zUHqGOpGLAOKdnD/IVsFOnjvH875F+3sZexG9udEY2f2cP8y8LjP1FGEe38Dp2AAYhfE8yPOOAsBBtrfBkyNEWxo0/BHd/ZJxcDIA8jS/M9EbDfXeYlDayNZDjn7C+N7LtQF04Nkab3NoWjpHFis8+8/w72LuVRkcYXw9Rne64ZWuk5cZ8/UEKx3IvYo8Dxqnchv68JLRF53zQRxta7MmWdsrfWPodFAG3fiac+7BtR6M9/465DTHOsiZ7RYlzdR3IseNOJUbDYa2oEMDJlsyWEcGR7nvfufcj163JeG934RS3cIC0cILBeuw+N+RkN72BhjEALSC/wzKGQzhsaZwcI2JgsQBszfbH/1e7txqVOOrHAaWaZdBvp3IZxJjOYpyaTFOlu9SwlbFSePp20+R/bKk17fqD977ViqSa2ZZ1ppwIMJCXXDOvS4NbOpieo0j1G9+d5rCLuXPBpyPLAD4FZwQLXx7mEV+J+tJnaMO42ipvFuNs30cQKuwraEFZLMYG91O0kirnTaCca/wjFGTtuxm7LN1UuC72U//N2u+HiW9QudwXscxjOpoHiEyDfPaG/Zjg9NtnX6cpzvILgTQ+jmg6TG2oe0DjRSUee9vxe5N8txrALz9ZEJ81D6sm3nnXDahr1HqO34KyI4wpgkMsjoDWhh32Dn3YkI/QX/ez71hDMW4TcI9Xci1AzmeMr4a9G7k/aJz7hnmN4r8p+lvAFk9rjxVmXjvgzNzJY7UPmzObcigh2DlAPLpgCeKK3kTKGwhoHkebLqKOp9J+rqQ8/PGvuY5pwFO0WROrm5wKz7c89WQtQtZrwZ5dtYSGcPBaAeh4JybtnNad0WP3ntVxD6jlH0oW71rfRHoN6swsYDHnjcFKhJFInmzNz1nMidlFsG0KX5axLBVaHsNgLOIvPec7U4byq3GoBwMJwZqyKSIlzAq2/Gye0wqMBiXJ51zD7MldwV9xTU2SwBpmf10dfLmjDNsI3E9Zx1oPVeheFHTn/HiFHOfFjQV9b107/0A8xgH+LX40gOiU2RKGgWE0OcWgoACe+9jOC9TzrmnvPcdGP1ZeBZ4ezB9V/6Nkfd+jMzmskCfUtN43uacq5jjIXReaxhiDKxSSF1MyvKtdzorHAYAos8AeH8CqDcC/KtR8DiFJ/5XDPlGnnMBQLGPNkUTkU9hoB9ZiYE/W8l7rwWMwWOtsGhvMulRWycxaCrEJdomy5nI2xunSrez7PaEBbX4j2QeCnvV8v+xbTXFZGUtDHPO2YLQ14go7wOhFmA9RB4pNY+896GWJOOceyJla0pnIzXFYTD/iqcpWY0AO0zqKt6n7zL79N1c6wHY9VrfKrxmqG8a6J6NN3uFExSwaAQeR/ZC2ykKwEL7Q865ySaOb83Jez+MjGwkr78ryCOA/bVE5/dQwBZ48l2b8vXeb+ftgnnzRzy6d2kBfu5Mffc4pZRSSimlGg6D9z6A9P0UH/UT8fWbogqtGm2rU1DXbNJXQjQd/DRVxvGfmuRNej8DOJ0A5I+v53Sg934H2xW/cM5Vo2utpOquhNdlU0ClmZFcmqZLKaWUUlqfFBc9fpNCj2a9T6rv9WdMkVzeFF3pZzY6tv+EFQAqHwPceiQKLW8lyn8kjchTSimllFI6XXRKhoE93TtJI19LYYitjM/U+D5p3i9/9Tgt7kkppZRSSimltwCJyP8AY7Id+Rv4Ys8AAAAASUVORK5CYII="/>
            </g>
        </svg>
            Display, Video, Rich Media and
        </span>
        
        <span class="position-relative d-inline-block d-md-none">
            
    <svg id="animated_underline_1" preserveAspectRatio="none" class="animated animated_underline_1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 524 14">
        <mask class="mask">
        <path fill="none" stroke="#FFF" stroke-width="5"
        d="M 0.51846966,6.5686016 81.918206,4.4947229 195.46306,2.4208443 318.51319,1.2110818 414.94855,2.5936675 520.88918,5.8773087 344.26385,6.0501319 296.73747,4.3218997 209.98021,4.8403694 79.325858,9.5065963 7.4313984,12.271768 154.8496,6.7414248 202.54881,8.6424802 300.19393,6.914248 330.95646,7.2598944"/>
        </mask>
            <g class="layer">
                <image
                xlink:href="data:img/png;base64,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"/>
            </g>
        </svg>
            native.
        </span>
         Our ecosystem is compatible with the main buying platforms available on the market, so you can connect to our Marketplace using your purchasing methodology to optimize your media strategy.</p>

                                <p class="position-relative">In 2020 we publicly launched Rich Audience 
        <span class="position-relative d-inline-block">
            
    <svg id="animated_circle_1" preserveAspectRatio="none" class="animated animated_circle_1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 277.7 156.8">
        <mask class="mask">
            <path fill="none" stroke="#FFF" stroke-width="5"
            d="M142.9-0.5c0,0,55.2,4.2,98.4,40.7S275,112,275,112
            s3.9,34.2-66.2,41.5c-70.1,7.3-134.1-24.7-134.1-24.7S4.5,97.4,1.7,62.6c-2.8-34.8,61.7-48.8,61.7-48.8S190.8-5.3,232.9,58.7"/>
        </mask>
        <g class="layer">
            <g style="transform:matrix( -1.694305419921875, 0, 0, 2, 338.85,116.5)">
                <path fill="#FFFFFF" stroke="none"
                d="M113.3-58.2c0.7,0,1.4,0,2.1,0c0.2,0,0.2-0.1,0.2-0.2c0-0.2-0.1-0.2-0.2-0.2h0
                C114.8-58.6,114.1-58.4,113.3-58.2 M113.3-58.2c-3,0.2-6.3,0.7-10,1.5c-1.6,0.3-3.5,0.8-5.8,1.5c1.7-0.4,3.7-0.7,5.8-1.1
                C107.7-57.1,111-57.7,113.3-58.2 M195.6-23.5c-1.4,3.2-4,6.6-7.8,10c-4.8,4.4-10.8,8.3-17.8,11.8c-5.4,2.7-12,5.5-19.9,8.2
                c-14.8,5.1-29.9,8.5-45.1,10.2c-14.9,2-29.7,1.4-44.3-1.6c-7.7-1.6-13.8-4.8-18.3-9.6c-5.3-5.6-6.7-11.9-4.4-19.1
                c2.1-6.5,6.5-12.7,13.1-18.6c5.1-4.6,11.5-8.9,19.1-13c6.9-3.6,13.9-6.5,21.2-8.6c2.3-0.7,4.3-1.3,6.2-1.8
                c-2.5,0.5-4.5,1-6.2,1.5c-7.1,2-14,4.7-20.7,8c-15.7,7.9-26.3,17.3-31.9,28c-2.8,5.5-3.5,11-2,16.4c1.5,5.4,4.9,9.8,10.1,13.1
                c2.6,1.7,5.7,3.1,9.4,4.2c1.9,0.5,5.2,1.3,10.1,2.3c8.1,1.6,16.4,2.3,24.9,2c17.9-0.6,35.5-3.4,52.7-8.5
                c8.7-2.6,16.3-5.3,22.8-8.1c8-3.6,15-7.6,20.8-12.2c5.9-4.6,9.8-9.5,11.8-14.6c2.4-6.3,1.1-12-3.9-17c-4.1-4.2-10.2-7.4-18.2-9.6
                c-4.8-1.4-11.7-2.6-20.6-3.8c-17.8-2.2-36.8-1.2-57,3c-9.4,2-16.9,4.3-22.5,6.9c-8.1,3.8-13.9,8.8-17.4,15.1
                c-0.2,0.3-0.2,0.7-0.1,1c0.1,0.3,0.3,0.6,0.6,0.8c0.6,0.3,1.1,0.3,1.6-0.2c4.5-4.7,9.4-8.5,14.7-11.5c5-2.8,10.9-5,17.5-6.6
                c14.4-3.5,29-5.2,43.8-5.1c15.8,0.1,29.8,2,41.8,5.8c3.3,1.1,6.1,2.2,8.2,3.4c2.9,1.6,5.2,3.5,6.8,5.7
                C197.1-31.7,197.5-27.8,195.6-23.5z"/>
            </g>
        </g>
    </svg>
        #core
        </span>
        , an innovating technology that allows the most advanced advertisers to step up and create their own programmatic ecosystem. We believe that #core is the natural evolution of programmatic buying as it offers the control, security and transparency of direct buying in a 
        <span class="position-relative d-none d-md-inline-block">
            
    <svg id="animated_underline_2" preserveAspectRatio="none" class="animated animated_underline_2" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 387 8">
        <mask class="mask">
            <path fill="none" stroke="#FFF" stroke-width="2"
            d="M 4.6588061,3.4050132 H 33.186016 L 52.395614,3.2135554 97.324374,2.4477243 138.1687,1.9371702 154.57025,1.6180739 188.13918,1.3627968 219.0277,1.0437005 249.59713,0.72460421 h 26.48499 L 306.65155,0.85224273 340.47576,0.66078494 0.57437335,5.4472295 228.79205,2.7030013 380.42662,1.9371702 22.528199,6.7236148"/>
        </mask>
        <g class="layer">
            <image
            xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAAYMAAAAICAYAAAAbZJO9AAADuklEQVRoge1ayW4TQRB9FccOcRwnJGxikVguwAUOXPgDrhz4Bo58AjdOXPgdjhz4AiBSRBBJDoQlkeMtTrw0avQalYq2xwtOoqifZNk9U91dPdPz6lWNBQkJJwTnXA7AImefAzBvPCkBmFVtv1+XIt6WAcwMWMUCgPyA8+f46Yc8xxhlbOt71vGA5QHnwGs0l2HTD/5a58bsu8Tr3w8LGevKQtVviQn6/w8cADhU47QBNFS7Rz8t9pXvddr8ov2wiI3d4XgaRwCabNcAdI2fVY4V7LoiUhvGhxQMjgHOuSKAgprJ/y6qtiW5rPYMCTBAkyr4UJZU25KZnd+2LTFbsrSEZNfnH6pd+hH6aRKMEXpCQsL0EAKdD1wtfvZ5zAeNyrEEA6MALbTisHaWpCzpaEVoCVDbWjK1ZDfsOIgQobVHIruR0ea9H6TuE6aLjlHB46BJRToK/LzfSFbhOdPi44gK+DyAK1TK3vY+/e3yvMUOgFt8VltU6l4UrZh1LlLVb1NVX+derFBA3TGiucbx/F5dPaV70j9PbwBs0MdV+muz2DL5zH/e/hMMnHMvATwHcHHCtC9humhnlD7OOpxJqzURWYJo8HohknrXeQy08WM8A/BOpfw9dV4TyTyFgCenLeOPLjk4qrCAoMxi58aBJ7xrADaZkfVDQ0TaE86VMCScc1nlSUQEbwzDlAZ15v1FRLZGvU/RzMA55we+DeACa5g3GJkLnLSs6o+hBDGjonBQxsuMsKEOGrKAPB+sxVOsBn+qGxVuaCCgMtfR4pqzMqwG7WLBtcp5+tWseySrgmqHa9YcsJHq3EShRlxRpKPJskO/OrSps32PBLcZGburyC5HP3b5XSWh5k1G5ed+SMX2lf0DKur3IKI8EJFD55zflysist5n7QkJCSNCnHOvADxVZZNA2IXIC73TCqcIuU5izZFwsqJuDA2SY47EZxGC3R7J2duts58nsrsq1axQtX1UY+wxNW6yzwIDY4nzVWkfSLHFdW0ya+vw2AevAjiOJtEig/ksg+6GiOzEFuqcu8QssCoi2zz2J7CLyEGsT0JCwtmDDwbC+ttjVfuO/eOhZNJrnXprpRmOd9jnAWt3PrO4TOIpmRegw6JG8vvM2t+K6rdLpdpT66iwFrhPf4q0+cGx5kio3wE8YfBYA/CJdo8AvBeRvwHBOXcVwE2uc41r8uS5JSIn/W+IhISEhLEwlRfIfGH8GsAL9denoGJ3qIyrStFWVc03KNy2Cix1EZm0rpqQkJCQEAOA3+EyGixAqZZGAAAAAElFTkSuQmCC"/>
        </g>
    </svg>
            Private Premium Ecosystem.
        </span>
        
        <span class="position-relative d-inline-block d-md-none">
            
    <svg id="animated_underline_2" preserveAspectRatio="none" class="animated animated_underline_2" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 387 8">
        <mask class="mask">
            <path fill="none" stroke="#FFF" stroke-width="2"
            d="M 4.6588061,3.4050132 H 33.186016 L 52.395614,3.2135554 97.324374,2.4477243 138.1687,1.9371702 154.57025,1.6180739 188.13918,1.3627968 219.0277,1.0437005 249.59713,0.72460421 h 26.48499 L 306.65155,0.85224273 340.47576,0.66078494 0.57437335,5.4472295 228.79205,2.7030013 380.42662,1.9371702 22.528199,6.7236148"/>
        </mask>
        <g class="layer">
            <image
            xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAAYMAAAAICAYAAAAbZJO9AAADuklEQVRoge1ayW4TQRB9FccOcRwnJGxikVguwAUOXPgDrhz4Bo58AjdOXPgdjhz4AiBSRBBJDoQlkeMtTrw0avQalYq2xwtOoqifZNk9U91dPdPz6lWNBQkJJwTnXA7AImefAzBvPCkBmFVtv1+XIt6WAcwMWMUCgPyA8+f46Yc8xxhlbOt71vGA5QHnwGs0l2HTD/5a58bsu8Tr3w8LGevKQtVviQn6/w8cADhU47QBNFS7Rz8t9pXvddr8ov2wiI3d4XgaRwCabNcAdI2fVY4V7LoiUhvGhxQMjgHOuSKAgprJ/y6qtiW5rPYMCTBAkyr4UJZU25KZnd+2LTFbsrSEZNfnH6pd+hH6aRKMEXpCQsL0EAKdD1wtfvZ5zAeNyrEEA6MALbTisHaWpCzpaEVoCVDbWjK1ZDfsOIgQobVHIruR0ea9H6TuE6aLjlHB46BJRToK/LzfSFbhOdPi44gK+DyAK1TK3vY+/e3yvMUOgFt8VltU6l4UrZh1LlLVb1NVX+derFBA3TGiucbx/F5dPaV70j9PbwBs0MdV+muz2DL5zH/e/hMMnHMvATwHcHHCtC9humhnlD7OOpxJqzURWYJo8HohknrXeQy08WM8A/BOpfw9dV4TyTyFgCenLeOPLjk4qrCAoMxi58aBJ7xrADaZkfVDQ0TaE86VMCScc1nlSUQEbwzDlAZ15v1FRLZGvU/RzMA55we+DeACa5g3GJkLnLSs6o+hBDGjonBQxsuMsKEOGrKAPB+sxVOsBn+qGxVuaCCgMtfR4pqzMqwG7WLBtcp5+tWseySrgmqHa9YcsJHq3EShRlxRpKPJskO/OrSps32PBLcZGburyC5HP3b5XSWh5k1G5ed+SMX2lf0DKur3IKI8EJFD55zflysist5n7QkJCSNCnHOvADxVZZNA2IXIC73TCqcIuU5izZFwsqJuDA2SY47EZxGC3R7J2duts58nsrsq1axQtX1UY+wxNW6yzwIDY4nzVWkfSLHFdW0ya+vw2AevAjiOJtEig/ksg+6GiOzEFuqcu8QssCoi2zz2J7CLyEGsT0JCwtmDDwbC+ttjVfuO/eOhZNJrnXprpRmOd9jnAWt3PrO4TOIpmRegw6JG8vvM2t+K6rdLpdpT66iwFrhPf4q0+cGx5kio3wE8YfBYA/CJdo8AvBeRvwHBOXcVwE2uc41r8uS5JSIn/W+IhISEhLEwlRfIfGH8GsAL9denoGJ3qIyrStFWVc03KNy2Cix1EZm0rpqQkJCQEAOA3+EyGixAqZZGAAAAAElFTkSuQmCC"/>
        </g>
    </svg>
            Private Premium Ecosystem.
        </span>
         Additionally, it makes audience activation more effective and offers contextual targeting capabilities.</p>

                                <p>All this supported by a highly specialized technical team 
        <span class="position-relative d-inline-block">
            
     <svg id="animated_circle_2" preserveAspectRatio="none" class="animated animated_circle_2" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 270 67">
        <mask class="mask">
            <path fill="none" stroke="#FFF" stroke-width="5"
            d="m 173.79155,7.3063813 c 0,0 -58.68613,-5.289308 -80.598981,-4.0299489 -21.912847,1.259359 -60.701106,6.548667 -71.531593,11.8379746 -10.830488,5.289308 -34.506438,13.097334 2.770589,29.972746 37.277028,16.875411 135.255165,20.90536 135.255165,20.90536 l 38.62791,-0.773516 23.06399,-1.602902 13.62467,-1.870053 11.04221,-2.582454 8.63787,-2.671504 6.05541,-2.582453 4.8087,-3.472956 c 0,0 10.95317,-10.240765 -10.41886,-18.611477 -21.37203,-8.370713 -38.73681,-12.823219 -38.73681,-12.823219 0,0 -23.15303,-4.719657 -33.9281,-5.699209 -10.77507,-0.979551 -26.62599,-2.760554 -48.17612,-1.781002"/>
        </mask>
        <g class="layer">
           <image
             xlink:href="data:img/png;base64,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" />
        </g>
    </svg> 
            available 24/7.
        </span>
        </p>
                <a href="/en/publishers/" class="btnHome">Solutions for Publishers</a>
                <a href="/en/advertisers/" class="btnHome">Solutions for Advertisers</a>
            </div>
        </div>
    </section>
</div>
<div id="contact">
    <div class="containerfull">
        <div class="marcadorsection" data-text="Find us"></div>
        <div class="row">
                                    <div class="col-lg-12">
                <h3 class="titularessection titularnegativo">Find us</h3>
            </div>
        </div>

                <div class="row">
            <div class="d-none d-lg-block col-12">
                <div class="row">
                    <div class="direcciones col-lg-3">
                        <span></span>
                        <div class="number">1</div>
                        <div>
                            <p class="city">Barcelona Headquarters (Sabadell)</p>
                            <p class="direccion" style="color: white !important"><a href="https://goo.gl/maps/Z79DxjDFe765XDrV6" target="_blank">Francesc Macia 54, floor 3<br>08208, Sabadell, Barcelona, España</a>
                                <br>
                                +34 918 221 969                            </p>
                        </div>
                    </div>
                    <div class="direcciones col-lg-3">
                        <span></span>
                        <div class="number">2</div>
                        <div>
                            <p class="city">Madrid</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/gYwn3ngWBDtPJZABA" target="_blank">Paseo de la Castellana, 130, 4ª planta<br> Madrid - 28046 (España)</a>
                                <br>
                                +34 911 610 116                            </p>
                        </div>
                    </div>
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number">3</div>
                        <div>
                            <p class="city">Barcelona</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/AEE3bLXXzn2dQRZ66" target="_blank">Calle Tuset, 5 - 11, 4ª planta<br> Barcelona - 08006 (España)</a>
                                                            </p>
                        </div>
                    </div>
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number">4</div>
                        <div>
                            <p class="city">Bogotá</p>
                            <p class="direccion" style="color: white !important"><a href="https://goo.gl/maps/fEnzksG2rLfpDhK79" target="_blank">Cll 99# 10-57 TINKKO <br> Ecotek, Bogotá, Colombia</a></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="direcciones col-lg-3">
                        <span></span>
                        <div class="number">5</div>
                        <div>
                            <p class="city">CDMX</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/KbUnFYrX2JK9wBnJ6" target="_blank">Calle Eugenio Sue 316, Colonia Polanco IV Sección<br> C.P.11550, Alcaldía Miguel Hidalgo, Ciudad de México</a>
                            </p>
                        </div>
                    </div>
                    <div class="direcciones col-lg-3">
                        <span></span>
                        <div class="number">6</div>
                        <div>
                            <p class="city">Lima</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/srQLPRw1TGSq1M6x5" target="_blank">Av. Alberto del Campo 411 <br> Magdalena del Mar 15076, Lima - Perú</a>

                            </p>
                        </div>
                    </div>
                    <div class="direcciones col-lg-3">
                        <span></span>
                        <div class="number">7</div>
                        <div>
                            <p class="city">Buenos Aires</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/bYt4idPCon8s4m8G9" target="_blank">Av. Dorrego 2133 <br> Ciudad Autónoma de Buenos Aires.</a>
                            </p>
                        </div>
                    </div>
                    <div class="direcciones col-lg-3">
                        <span></span>
                        <div class="number">8</div>
                        <div>
                            <p class="city">Sao Paulo</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/F7djrxQLXkggw4oE7" target="_blank">Av. Paulista, 1374 - Bela Vista, São Paulo <br> SP, 01310-100, Brasil</a>
                            </p>
                        </div>
                                            </div>
                </div>
                    <div class="row">
                        <div class="direcciones col-lg-3">
                            <span></span>
                            <div class="number">9</div>
                            <div>
                                <p class="city">Santiago de Chile</p>
                                <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/M463uoM8wGT1gj9E8" target="_blank">Avenida Apoquindo 6550, edificio Génesis, oficina 205 <br> Las Condes, Región Metropolitana, Chile</a>
                                </p>
                            </div>
                        </div>
                        <div class="direcciones col-lg-3">
                            <span></span>
                            <div class="number">10</div>
                            <div>
                                <p class="city">Milan</p>
                                <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/ZtAtDPuMp8RJc2hm7" target="_blank">Largo Richini 6 <br> Milano 20122</a>

                                </p>
                            </div>
                        </div>
                        <div class="direcciones col-lg-3">
                            <span></span>
                            <div class="number">11</div>
                            <div>
                                <p class="city">Varsovia</p>
                                <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/LLviMbj33vH3RWDA9" target="_blank">ul. Puławska nr 2 , lok. Budynek B <br> 02-566 Warszawa, Poland</a>
                                </p>
                            </div>
                        </div>
                        <div class="direcciones col-lg-3">
                            <span></span>
                            <div class="number">12</div>
                            <div>
                                <p class="city">París</p>
                                <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/xzduVhawTCDkV4Ax6" target="_blank">22 rue René Boulanger <br> 75010 Paris, Francia</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="direcciones col-lg-3">
                            <span></span>
                            <div class="number">13</div>
                            <div>
                                <p class="city">New Jersey</p>
                                <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/dCSKPYCAeRAiKXA77" target="_blank">18 West 18th Street <br> New York,NY 10011,USA</a>
                                </p>
                            </div>
                        </div>
                        <div class="direcciones col-lg-3">
                            <span></span>
                            <div class="number">14</div>
                            <div>
                                <p class="city">Miami</p>
                                <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/Zj7FB1xfEyoMSHBs8" target="_blank">2980 McFarlane Rd. Miami <br> FL 33133. Estados Unidos</a>

                                </p>
                            </div>
                        </div>
                        <div class="direcciones col-lg-3">
                            <span></span>
                            <div class="number">15</div>
                            <div>
                                <p class="city">Londres</p>
                                <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/EKd2XXKUYcJ5ngFi8" target="_blank">16 Red Lion Square <br> London WC1R 4QH England</a>
                                </p>
                            </div>
                        </div>
                        <div class="direcciones col-lg-3">

                        </div>
                    </div>
                </div>
            </div>
            <div class="d-lg-none col-12">
                <div class="row">
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">1</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse1" data-parent="#collapse1">Barcelona Headquarters (Sabadell)                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse1" aria-labelledby="heading1"
                             data-parent="#collapse1">
                            <p class="city d-none d-xs-block">Barcelona Headquarters (Sabadell)</p>
                            <p class="direccion" style="color: white !important"><a href="https://goo.gl/maps/Z79DxjDFe765XDrV6" target="_blank">Francesc Macia 54, floor 3<br>08208, Sabadell, Barcelona, España</a>
                                <br>
                                +34 918 221 969                            </p>
                        </div>
                    </div>
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">2</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse2" data-parent="#collapse2">Madrid                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse2" aria-labelledby="heading2" data-parent="#collapse2">
                            <p class="city d-none d-xs-block">Madrid</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/gYwn3ngWBDtPJZABA" target="_blank">Paseo de la Castellana, 130, 4ª planta, Madrid <br> 28046 (España)</a>
                                <br>
                                +34 911 610 116                            </p>
                        </div>
                    </div>
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">3</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse3" data-parent="#collapse3">Barcelona                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse3" aria-labelledby="heading3" data-parent="#collapse3">
                            <p class="city d-none d-xs-block">Barcelona</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/AEE3bLXXzn2dQRZ66" target="_blank">Calle Tuset, 5 - 11, 4ª planta, Barcelona <br> 08006 (España)</a></p>
                        </div>
                    </div>

                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">4</div>
                        <div class="city d-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse4" data-parent="#collapse4">Bogotá                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse4" aria-labelledby="heading4" ata-parent="#collapse4">
                            <p class="city d-none d-xs-block">Lisboa</p>
                            <p class="direccion" style="color: white !important"><a href="https://goo.gl/maps/fEnzksG2rLfpDhK79" target="_blank">Cll 99# 10-57 TINKKO <br> </br>Ecotek, Bogotá, Colombia</a></p>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">5</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse5" data-parent="#collapse5">CDMX                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse5" aria-labelledby="heading5" data-parent="#collapse5">
                            <p class="city d-none d-xs-block">CDMX</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/KbUnFYrX2JK9wBnJ6" target="_blank">Calle Eugenio Sue 316, Colonia Polanco IV Sección <br> C.P.11550, Alcaldía Miguel Hidalgo, Ciudad de México</a></p>
                        </div>
                    </div>
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">6</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse6" data-parent="#collapse6">Lima                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse6" aria-labelledby="heading6" data-parent="#collapse6">
                            <p class="city d-none d-xs-block">Lima</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/srQLPRw1TGSq1M6x5" target="_blank">Av. Alberto del Campo 411 <br> Magdalena del Mar 15076, Lima - Perú</a></p>
                        </div>
                    </div>
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">7</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse7" data-parent="#collapse7">Buenos Aires                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse7" aria-labelledby="heading7" data-parent="#collapse7">
                            <p class="city d-none d-xs-block">Buenos Aires</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/bYt4idPCon8s4m8G9" target="_blank">Av. Dorrego 2133 <br> Ciudad Autónoma de Buenos Aires.</a></p>
                        </div>
                    </div>

                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">8</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse8" data-parent="#collapse8">Sao Paulo
                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse8" aria-labelledby="heading8" data-parent="#collapse8">
                            <p class="city d-none d-xs-block">Sao Paulo</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/F7djrxQLXkggw4oE7" target="_blank">Av. Paulista, 1374 - Bela Vista, São Paulo <br> SP, 01310-100, Brasil</a></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">9</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse9" data-parent="#collapse9">Santiago de Chile                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse9" aria-labelledby="heading8" data-parent="#collapse9">
                            <p class="city d-none d-xs-block">Santiago de Chile</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/M463uoM8wGT1gj9E8" target="_blank">Avenida Apoquindo 6550, edificio Génesis, oficina 205 <br> Las Condes, Región Metropolitana, Chile</a></p>
                        </div>
                    </div>
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">10</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse10" data-parent="#collapse10">Milan                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse10" aria-labelledby="heading10" data-parent="#collapse10">
                            <p class="city d-none d-xs-block">Milan</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/ZtAtDPuMp8RJc2hm7" target="_blank">Largo Richini 6<br> Milano 20122</a></p>
                        </div>
                    </div>
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">11</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse11" data-parent="#collapse11">Varsovia                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse11" aria-labelledby="heading11" data-parent="#collapse5">
                            <p class="city d-none d-xs-block">Varsovia</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/LLviMbj33vH3RWDA9" target="_blank">ul. Puławska nr 2 , lok. Budynek B <br> 02-566 Warszawa, Poland</a></p>
                        </div>
                    </div>
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">12</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse12" data-parent="#collapse12">París                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse12" aria-labelledby="heading12" data-parent="#collapse12">
                            <p class="city d-none d-xs-block">París</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/xzduVhawTCDkV4Ax6" target="_blank">22 rue René Boulanger <br> 75010 Paris, Francia</a></p>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">13</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse13" data-parent="#collapse13">New Jersey                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse13" aria-labelledby="heading13" data-parent="#collapse13">
                            <p class="city d-none d-xs-block">New Jersey</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/dCSKPYCAeRAiKXA77" target="_blank">18 West 18th Street <br> New York,NY 10011,USA</a></p>
                        </div>
                    </div>
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">14</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse14" data-parent="#collapse14">Miami                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse14" aria-labelledby="heading14" data-parent="#collapse5">
                            <p class="city d-none d-xs-block">Miami</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/Zj7FB1xfEyoMSHBs8" target="_blank">2980 McFarlane Rd. Miami <br> FL 33133. Estados Unidos</a></p>
                        </div>
                    </div>
                    <div class="direcciones accordion col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-6">
                        <span></span>
                        <div class="number d-none d-xs-block">15</div>
                        <div class="cityd-xs-none contact-accordion" data-toggle="collapse" data-target="#collapse15" data-parent="#collapse15">Londres                            <div style="display: inline-block;" class="livicon-evo"
                                 data-options="name: morph-minus-plus.svg;size: 24px;eventType:click;solidColor:#fff;rotate:180;morphState:end;"></div>
                        </div>
                        <div class="collapse" id="collapse15" aria-labelledby="heading15" data-parent="#collapse5">
                            <p class="city d-none d-xs-block">Londres</p>
                            <p class="direccion" style="color: white !important"><a href="https://maps.app.goo.gl/EKd2XXKUYcJ5ngFi8" target="_blank">16 Red Lion Square, London <br> WC1R 4QH England</a></p>
                        </div>
                    </div>

                </div>
            </div>
                        <div class="col-xl-12 col-lg-12 col-md-12">
                                <div class="row boxform" id="contactTitle">
                    <div class="col-xl-3 col-lg-3"></div>
                    <div class="col-xl-7 col-lg-9">
                                                <div class="titular">Or if you prefer...</div>
                    </div>
                </div>
                <div class="row collapse" id="contactResponse">
                    <div class="col-12">
                        <div class="titular">Message sent!</div>
                    </div>
                    <div class="col-12 mx-auto textWhite">
                        Many thanks for contacting the Richaudience team! <br> We will contact you as soon as possible.                    </div>
                    <div class="col-lg-12">
                        <button type="button" onclick="contactReset();">
                            <div class="txt">Contact again<i class="icon icon-rocket"></i></div>
                        </button>
                    </div>
                </div>
                <div class="row collapse" id="contactError">
                    <div class="mx-auto textWhite">
                        There has been an error. Try again passed some minutes, or call our team in your nearest office.                    </div>
                    <div class="col-lg-12">
                        <button type="button" onclick="contactReset();">
                            <div class="txt">Contact again</div>
                            <div class="icon icon-rocket"></div>
                        </button>
                    </div>
                </div>
                <div class="row collapse" id="contactLoading">
                    <div class="mx-auto textWhite">
                        <div class="livicon-evo align-middle align-center" style="display: inline-block;" data-options="name: loader-11.svg;size: 50px;autoPlay:true;repeat:loop;solidColor:#FFFFFF;eventType:none;"></div>
                        Contacting with Richaudience Team                    </div>
                </div>
                <div class="row" id="contactForm">


                    <div class="col-xl-3 col-lg-3">
                        <div class="filterform">
                            <div class="presentation">
                                <p>Thank you for contacting us, we really appreciate your interest. Please, choose the most suitable contact to get a solution based on your needs.</p>
                                <p>See you soon!</p>
                            </div>

                            <button><input type="radio" value="solutions for brands" name="radio_option1" id="option1"
                                           class="collapse">solutions for brands</button>
                            <button><input type="radio" value="solutions for publishers" name="radio_option1" id="option1"
                                           class="collapse">solutions for publishers</button>
                            <button><input type="radio" value="platforms (dsp/ssp)" name="radio_option1" id="option1"
                                           class="collapse">platforms (dsp/ssp)</button>
                            <button><input type="radio" value="privacy" name="radio_option1" id="option1" class="collapse">privacy</button>
                        </div>
                    </div>

                                        <div class="col-xl-9 col-lg-9">
                        <div class="row">
                            <form id="contact-form" action="/en/" method="post">
<input type="hidden" name="_csrf-richaudience" value="EgjbMPgIVft1rwxnMxsCY_mA7L9nsGw9a0Nff9c462xLapN4pzEBnhz7YDJ0Q0M8n-ad9SzqIwgBLRkxs0mZJg=="><div class="collapse"><div class="form-group field-contactform-type">

<input type="hidden" id="contactform-type" class="form-control" name="ContactForm[type]" value="">

<div class="help-block"></div>
</div></div>                            <div class="form-group  col-lg-12 col-xl-9">
                                <div class="form-group field-contactform-name required">
<label class="control-label" for="contactform-name">Name and surname</label>
<input type="text" id="contactform-name" class="form-control" name="ContactForm[name]" aria-required="true">

<div class="help-block"></div>
</div>                            </div>
                            <div class="form-group  col-lg-12 col-xl-9">
                                <div class="form-group field-contactform-email required">
<label class="control-label" for="contactform-email">E-mail</label>
<input type="text" id="contactform-email" class="form-control" name="ContactForm[email]" aria-required="true">

<div class="help-block"></div>
</div>                            </div>

                            <div class=" col-lg-12 col-xl-9">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="form-group field-contactform-country">
<label class="control-label" for="contactform-country">Country</label>
<input type="text" id="contactform-country" class="form-control" name="ContactForm[country]">

<div class="help-block"></div>
</div>                                    </div>
                                    <div class="col-lg-8">
                                        <div class="form-group field-contactform-company">
<label class="control-label" for="contactform-company">Company</label>
<input type="text" id="contactform-company" class="form-control" name="ContactForm[company]">

<div class="help-block"></div>
</div>                                    </div>
                                </div>
                            </div>

                                                        <div class=" col-lg-12 col-xl-9">
                                <div class="form-group field-contactform-body required">
<label class="control-label" for="contactform-body">Message</label>
<textarea id="contactform-body" class="form-control" name="ContactForm[body]" aria-required="true"></textarea>

<div class="help-block"></div>
</div>                            </div>
                            <div class="form-group col-lg-12 col-xl-9">
                                <label>
                                                                        <div id="terminos" class="field-contactform-terminos required">
<input type="hidden" name="ContactForm[terminos]" value="0"><input type="checkbox" id="contactform-terminos" class="checkboxcustom" name="ContactForm[terminos]" value="1" aria-required="true"><div id="terminoslabel" class="checkboxlabel">I confirm I am of legal age, I have read and accept the <a href="https://legal.richaudience.com/legal-notice/" target="_blank">Legal notice</a> and the <a href="https://legal.richaudience.com/privacy-policy/" target="_blank">Privacy policy</a></div><div class="help-block"></div>
</div>                                                                                                        </label>
                            </div>
                                                        <div class=" col-lg-12 col-xl-9">
                                <button type="submit"><div class="txt">Send message</div><div class="icon icon-rocket"></div></button>                            </div>
                            </form>                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

        <div id="cookies-pop-up" class="cookies-pop-up hide adj1200">
        <div id="cookies-accept">
            <p>
                This website uses only essential cookies to ensure its functionality, such as language settings and security. All cookie information can be found in our <a href="https://legal.richaudience.com/cookies-policy/" style="cursor:pointer" target="_blank">cookie policy.</a>            </p>
            <div class="buttons-list">
                <button onclick="setConsent(1);saveConfiguration();">
                    Accept                </button>
            </div>
        </div>

    </div>
</div>
<footer class="footer">
    <div class="containerfull">
        <div class="row">
            <div class="col-xl-2 col-lg-3 col-md-4 col-xs-6 col-6">
            </div>
            <div class="col-xl-12 col-lg-12">
                <div class="row">
                    <div class="col-xl-3 col-lg-4 col-md-4 col-xs-8 col-8">
                        <img src="/img/logoRichAudienceNegativo.svg" class="logoFooter">
                    </div>
                </div>
                <div class="legal d-none d-md-block">
                    <p>Copyright 2019</p>
                    <ul>
                        <li><a href="/en/">Home</a></li>

                        <li>|</li>
                        <li><a href="https://legal.richaudience.com/legal-notice/" target="_blank">Website Terms of Use</a></li>
                        <li>|</li>
                        <li><a href="https://legal.richaudience.com/privacy-policy/" target="_blank">Privacy Policy</a></li>
                        <li>|</li>
                        <li><a href="https://legal.richaudience.com/cookies-policy/" target="_blank">Cookies Policy</a></li>
                                            </ul>
                </div>
                <div class="legal-mobile d-md-none">
                    <ul>
                        <li><a href="/en/">Home</a></li>
                        <li><a href="https://legal.richaudience.com/legal-notice/" target="_blank">Website Terms of Use</a></li>
                        <li><a href="https://legal.richaudience.com/privacy-policy/" target="_blank">Privacy Policy</a></li>
                        <li><a href="https://legal.richaudience.com/cookies-policy/" target="_blank">Cookies Policy</a></li>
                                                <li>
                            <p>Copyright 2019</p>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
</footer>
<script src="/js/cookies.js"></script>
<script src="/assets/693bf50d/jquery.js"></script>
<script src="/assets/b999d3f1/yii.js"></script>
<script src="/js/animsition.js"></script>
<script src="/js/animsition-config.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap4.min.js"></script>
<script src="/js/onscreen-pseudo.js"></script>
<script src="/js/LivIconsEvo/tools/snap.svg-min.js"></script>
<script src="/js/LivIconsEvo/tools/TweenMax.min.js"></script>
<script src="/js/LivIconsEvo/tools/MorphSVGPlugin.min.js"></script>
<script src="/js/LivIconsEvo/LivIconsEvo.defaults.js"></script>
<script src="/js/on-screen.min.js"></script>
<script src="/js/app.js"></script>
<script src="/js/LivIconsEvo/LivIconsEvo.min.js"></script>
<script src="/js/drawSvg.js"></script>
<script src="/js/animateOnScreen.js"></script>
<script src="/js/createjs.min.js"></script>
<script src="/js/init.js"></script>
<script src="/js/bootstrap-select.min.js"></script>
<script src="/js/select-custom.js"></script>
<script src="/js/home.js"></script>
<script src="/js/contactForm.js"></script>
<script src="/assets/b999d3f1/yii.validation.js"></script>
<script src="/assets/b999d3f1/yii.activeForm.js"></script>
<script src="/js/logo2.js"></script>
<script src="/js/initLogo.js"></script>
<script>jQuery(function ($) {
jQuery('#contact-form').yiiActiveForm([{"id":"contactform-type","name":"type","container":".field-contactform-type","input":"#contactform-type","validate":function (attribute, value, messages, deferred, $form) {yii.validation.string(value, messages, {"message":"Type must be a string.","skipOnEmpty":1});}},{"id":"contactform-name","name":"name","container":".field-contactform-name","input":"#contactform-name","validate":function (attribute, value, messages, deferred, $form) {yii.validation.required(value, messages, {"message":"This field is required"});}},{"id":"contactform-email","name":"email","container":".field-contactform-email","input":"#contactform-email","validate":function (attribute, value, messages, deferred, $form) {yii.validation.required(value, messages, {"message":"This field is required"});yii.validation.email(value, messages, {"pattern":/^[a-zA-Z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$/,"fullPattern":/^[^@]*<[a-zA-Z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?>$/,"allowName":false,"message":"Please, enter a valid email address","enableIDN":false,"skipOnEmpty":1});}},{"id":"contactform-country","name":"country","container":".field-contactform-country","input":"#contactform-country","validate":function (attribute, value, messages, deferred, $form) {yii.validation.string(value, messages, {"message":"Country must be a string.","skipOnEmpty":1});}},{"id":"contactform-company","name":"company","container":".field-contactform-company","input":"#contactform-company","validate":function (attribute, value, messages, deferred, $form) {yii.validation.string(value, messages, {"message":"Company must be a string.","skipOnEmpty":1});}},{"id":"contactform-body","name":"body","container":".field-contactform-body","input":"#contactform-body","validate":function (attribute, value, messages, deferred, $form) {yii.validation.required(value, messages, {"message":"This field is required"});}},{"id":"contactform-terminos","name":"terminos","container":".field-contactform-terminos","input":"#contactform-terminos","validate":function (attribute, value, messages, deferred, $form) {yii.validation.required(value, messages, {"message":"Please accept our privacy policy and terms of use to contact us.","requiredValue":1});}}], []);

        $(".white-hover").click(function() {
            if ($(this).find(".drop ul").is(":visible")){
                $(this).find(".drop ul").slideUp();
            }else{
                $(this).find(".drop ul").slideDown();
            }
        }); 
    
});</script></body>
</html>
