<!DOCTYPE html>
<html lang="en" class="no-js">
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>Узнать МФО банка</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta content="" name="description"/>
        <meta content="Alex Sokolov" name="author"/>

        <!-- GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
        <link href="vendor/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!-- PAGE LEVEL PLUGIN STYLES -->
        <link href="css/animate.css" rel="stylesheet">
        <link href="vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>

        <!-- THEME STYLES -->
        <link href="css/layout.min.css" rel="stylesheet" type="text/css"/>

        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico"/>
    </head>
    <!-- END HEAD -->

    <!-- BODY -->
    <body>

        <!--========== HEADER ==========-->
        <header class="header navbar-fixed-top">
            <!-- Navbar -->
            <nav class="navbar" role="navigation">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="menu-container">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="toggle-icon"></span>
                        </button>

                        <!-- Logo -->
                        <div class="logo">
                            <a class="logo-wrap" href="index.html">
                                <img class="logo-img logo-img-main" src="img/logo.png" alt="Asentus Logo">
                                <img class="logo-img logo-img-active" src="img/logo-dark.png" alt="Asentus Logo">
                            </a>
                        </div>
                        <!-- End Logo -->
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse nav-collapse">
                        <div class="menu-container">
                            <ul class="navbar-nav navbar-nav-right">
                                <li class="nav-item"><a class="nav-item-child nav-item-hover active" href="index.html">Узнать МФО</a></li>
                                <li class="nav-item"><a class="nav-item-child nav-item-hover" href="#">Контакты</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Navbar Collapse -->
                </div>
            </nav>
            <!-- Navbar -->
        </header>
        <!--========== END HEADER ==========-->



        <!--========== FOOTER ==========-->
        <footer class="footer">
            <!-- Links -->
            <div class="footer-seperator">
                <div class="content-lg container">
                    <div class="row">
                        <div class="col-sm-2 sm-margin-b-50">
                            <!-- List -->
                            <ul class="list-unstyled footer-list">
                                <li class="footer-list-item"><a class="footer-list-link" href="#">Home</a></li>
                                <li class="footer-list-item"><a class="footer-list-link" href="#">About</a></li>
                            </ul>
                            <!-- End List -->
                        </div>
                        <div class="col-sm-4 sm-margin-b-30">
                            <!-- List -->
                            <ul class="list-unstyled footer-list">
                                <li class="footer-list-item"><a class="footer-list-link" href="#">Twitter</a></li>
                                <li class="footer-list-item"><a class="footer-list-link" href="#">Facebook</a></li>
                                <li class="footer-list-item"><a class="footer-list-link" href="#">Instagram</a></li>
                                <li class="footer-list-item"><a class="footer-list-link" href="#">YouTube</a></li>
                            </ul>
                            <!-- End List -->
                        </div>
                        <div class="col-sm-5 sm-margin-b-30">
                            <form action="index2.php" method="post">
                            <h2 class="color-white">Поиск банка по МФО</h2>

                                <select name="bank" class="form-control footer-input margin-b-20">
                                <option disabled selected="selected"> - Выберите банк (обязательно) -</option>
                                <option value="приватбанк">ПриватБанк</option>
                                <option value="уксоцбанк">УксоцБанк</option>
                                <option value="ощадбанк">Ощадбанк</option>
                                <option value="БАЙКАЛКРЕДОБАНК">БАЙКАЛКРЕДОБАНК</option>
                                <option value="КРЕДОБАНК">КРЕДОБАНК</option>
                                <option value="Укргазбанк">Укргазбанк</option>
                                <option value="УкрСиббанк">УкрСиббанк</option>
                                <option value="Мегабанк">Мегабанк</option>
                                <option value="правекс">ПРАВЕКС-БАНК</option>
                                <option value="альфа">АЛЬФА-БАНК</option>
                                <option value="аваль">РАЙФФАЙЗЕН БАНК АВАЛЬ</option>
                                <option value="ОНЕГО">ОНЕГО</option>
                                <option value="ПроКредит">ПроКредит Банк</option>
                                <option value="отп">ОТП БАНК</option>
                                <option value="втб">ВТБ Банк</option>
                                <option value="Универсал">КУБАНСКИЙ УНИВЕРСАЛЬНЫЙ БАНК</option>
                                <option value="ТВЕРЬУНИВЕРСАЛБАНК">ТВЕРЬ УНИВЕРСАЛ БАНК</option>
                                <option value="ТОРЖОКУНИВЕРСАЛБ">ТОРЖОКУНИВЕРСАЛБАНК</option>
                                <option value="ОРБИТА">ОРБИТА</option>
                                <option value="ЕКАТЕРИНИНСКИЙ">ЕКАТЕРИНИНСКИЙ</option>
                            </select>
                            
                            <p class="color-white">ИЛИ</p>
                            <input type="text" name="mfo" class="form-control footer-input margin-b-20" placeholder="Введите МФО">
<!--
                            <select name="country" class="form-control footer-input margin-b-20">
                                <option value="" disabled selected="selected"> - Выберите страну (не обязательно) -</option>
                                <option value="UA">Украина</option>
                                <option value="RU">Россия</option>
                            </select>



                            
                            <input type="text" name="city" class="form-control footer-input margin-b-20" placeholder="Введите город (не обязательно)">
-->
                            <textarea class="form-control footer-input margin-b-30" rows="{$row}" placeholder="">{foreach item=mfo from=$data.mfo}
{$mfo}
{foreachelse}Не удалось получить данные
{/foreach}
</textarea>

                            <button type="submit" class="btn-theme btn-theme-sm btn-base-bg text-uppercase">Submit</button>
                            </form>
                        </div>
                    </div>
                    <!--// end row -->
                </div>
            </div>
            <!-- End Links -->

            <!-- Copyright -->
            <div class="content container">
                <div class="row">
                    <div class="col-xs-6">
                        <img class="footer-logo" src="img/logo.png" alt="Asentus Logo">
                    </div>
                    <div class="col-xs-6 text-right">
                        <p class="margin-b-0"><a title="Сервис для поиска МФО банка" class="color-base fweight-700" href="http://mfo.gelezako.com">Узнать МФО</a>, Theme Powered by: KeenThemes.com</p>
                    </div>
                </div>
                <!--// end row -->
            </div>
            <!-- End Copyright -->
        </footer>
        <!--========== END FOOTER ==========-->

        <!-- Back To Top -->
        <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

        <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- CORE PLUGINS -->
        <script src="vendor/jquery.min.js" type="text/javascript"></script>
        <script src="vendor/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL PLUGINS -->
        <script src="vendor/jquery.easing.js" type="text/javascript"></script>
        <script src="vendor/jquery.back-to-top.js" type="text/javascript"></script>
        <script src="vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
        <script src="vendor/jquery.wow.min.js" type="text/javascript"></script>
        <script src="vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>
        <script src="vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
        <script src="vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL SCRIPTS -->
        <script src="js/layout.min.js" type="text/javascript"></script>
        <script src="js/components/wow.min.js" type="text/javascript"></script>
        <script src="js/components/swiper.min.js" type="text/javascript"></script>
        <script src="js/components/masonry.min.js" type="text/javascript"></script>

    </body>
    <!-- END BODY -->
</html>