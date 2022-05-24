<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <title>Keepers</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="keepers.ico">

    <!--Google Font link-->
    <link
        href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">


    <link rel="stylesheet" href="assets/css/slick/slick.css">
    <link rel="stylesheet" href="assets/css/slick/slick-theme.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/iconfont.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/bootsnav.css">

    <!-- xsslider slider css -->


    <!--<link rel="stylesheet" href="assets/css/xsslider.css">-->




    <!--For Plugins external css-->
    <!--<link rel="stylesheet" href="assets/css/plugins.css" />-->

    <!--Theme custom css -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

    <!--Theme Responsive css-->
    <link rel="stylesheet" href="assets/css/responsive.css" />

    <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>


    <style>
        /* 폰트 */
        @font-face {
            font-family: 'SUIT-Medium';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Medium.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }


        /* input radius 주려고 만듬 */
        input {
            border-radius: 8px !important;
        }
    </style>

</head>

<body data-spy="scroll" data-target=".navbar-collapse" style="font-family: SUIT-Medium;">


    <!-- Preloader -->
    <div id="loading" style="background-color: orange;">
        <div id="loading-center">
            <div id="loading-center-absolute">
                <div class="object" id="object_one"></div>
                <div class="object" id="object_two"></div>
                <div class="object" id="object_three"></div>
                <div class="object" id="object_four"></div>
            </div>
        </div>
    </div>
    <!--End off Preloader -->

    <!--Home page style-->
    <nav class="navbar navbar-default bootsnav navbar-fixed">
        <div class="navbar-top bg-grey fix">
            <div class="container">
                <div class="row"></div>
                <div class="col-md-6" style=" margin: 15px; text-align: center;">
                    <div class="navbar-callus text-left sm-text-center">
                        <ul class="list-inline" style="text-align: center;">
                            <li><img src="./imgs/tel.png" style="width: 15px;"> 문의사항 : 1234 5678 90</img> </li>
                            <li><img src="./imgs/email.png" style="width: 15px;"></img> 이메일 : your@email.com
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        </div>

        <!-- Start Top Search -->
        <div class="top-search">
            <div class="container">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-search"></i></span>
                    <input type="text" class="form-control" placeholder="Search">
                    <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                </div>
            </div>
        </div>
        <!-- End Top Search -->


        <!-- 상단 -->
        <div class="container">
            <div class="attr-nav">
                <ul>
                    <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                </ul>
            </div>
            <div style="text-align: center; margin-bottom: 30px;">
                <a class="navbar-brand" href="Main.html">
                    <img src="keepers.ico" class="logo" alt="">
                    <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
                </a>

            </div>

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                    <i class="fa fa-bars"></i>
                </button>

            </div>

            <!-- 상단 끝 -->

            <!--메인메뉴바 시작-->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav navbar-right">

                    <li><a href="Main.html">메인 메뉴</a></li>
                    <li><a href="C_join.html">사용자 등록</a></li>
                    <li><a href="C_select.html">사용자 조회</a></li>
                    <li><a href="C_monitor.html">사용자 모니터링</a></li>
                    <li><a href="board.html">공지사항 게시판</a></li>
                </ul>
            </div><!-- 메인메뉴바 끝 -->
        </div><!-- 상단 끝 -->
    </nav>



    <br><br>
    <br><br>
    <br><br>
    <br><br>

    <!-- 복지사 회원가입 폼 -->

    <section style="padding: 50px; margin-left:250px; margin-right:250px">
        <form action="" style="background-color: rgba(251, 195, 91, 0.469); border-radius: 30px;">
            <br>
            <br>
            <h3 style="text-align: center; color: rgb(93, 91, 91);">복지사 회원가입</h3>
            <hr>
            <div style="margin-left: 200px; margin-right: 200px;">
                <br>
                <div class="mb-3">
                    <label for="disabledTextInput" id="inputPassword6" class="form-label">아이디</label>
                    <input type="text" class="form-control" placeholder="아이디를 입력하세요" name="m_id">
                </div>
                <br>
                <div class="mb-3">
                    <label for="disabledTextInput" id="inputPassword6" class="form-label">비밀번호</label>
                    <input type="password" class="form-control" placeholder="비밀번호를 입력하세요" name="m_pw">
                </div>
                <br>
                <div class="mb-3">
                    <label for="disabledTextInput" id="inputPassword6" class="form-label">이름</label>
                    <input type="text" class="form-control" placeholder="이름를 입력하세요" name="m_name">
                </div>
                <br>
                <div class="mb-3">
                    <label for="disabledTextInput" id="inputPassword6" class="form-label">전화번호</label>
                    <input type="text" class="form-control" placeholder="공백 없이 전화번호를 입력하세요" name="m_phone">
                </div>
                <br>
                <div class="mb-3">
                    <label for="disabledTextInput" id="inputPassword6" class="form-label">이메일</label>
                    <input type="text" class="form-control" placeholder="이메일을 입력하세요" name="m_email">
                </div>
                <br>
                <br>
                <div class="mb-3">
                    <label for="disabledSelect" class="form-label">소속 선택</label>
                    <select id="disabledSelect" class="form-select" style="margin-right: 50px;">
                        <option>인사과</option>
                        <option>복지과</option>
                        <option>관리과</option>
                    </select>

                    <label for="disabledSelect" class="form-label">유형 선택</label>
                    <select id="disabledSelect" class="form-select">
                        <option>1유형</option>
                        <option>2유형</option>
                        <option>3유형</option>
                    </select>

                </div>
                <br><br>
                <hr>
                <div style="text-align: center;">
                    <button type="reset" class="btn btn-warning" style="margin-right:30px ;">초기화</button>
                    <button type="submit" class="btn btn-warning" style="margin-right: 30px;">등록</button>
                </div>
                <br>
                <br>
                <br>
            </div>
        </form>
    </section>
    <!-- 복지사 회원가입 폼 끝-->


    <!--밑단 회사 설명 폼-->
    <section style="background-color: orange; height: 150px;">
        <br>
        <div class="action_item text-center">
            <h2 class="text-white text-uppercase" style="text-align: center; margin-top: 30px;">Keepers는 독거노인의 복지를 위해
                일합니다</h2>
        </div>
        <br>
    </section>




    <div style="background-color: rgba(255, 166, 0, 0.327);"><br><br><br></div>
    <footer id="contact" style="background-color: rgba(255, 166, 0, 0.327);">
        <!--<div class="action-lage"></div>-->
        <div class="container">
            <div class="row">
                <div class="widget_area">
                    <div class="col-md-3">
                        <div class="widget_item widget_about">
                            <h5 class="text-white">회사 소개</h5>
                            <p class="m-top-20">독거노인 슬리퍼를 통해 생활반응 확인 알림을 표시해줍니다</p>
                            <div class="widget_ab_item m-top-30">
                                <div class="item_icon"><i class="fa fa-location-arrow"></i></div>
                                <div class="widget_ab_item_text">
                                    <h6 class="text-white">위치</h6>
                                    <p>
                                        광주 동구 서석동 472-11</p>
                                </div>
                            </div>
                            <div class="widget_ab_item m-top-30">
                                <div class="item_icon"><i class="fa fa-phone"></i></div>
                                <div class="widget_ab_item_text">
                                    <h6 class="text-white">전화번호</h6>
                                    <p>+82 010 9085 1327</p>
                                </div>
                            </div>
                            <div class="widget_ab_item m-top-30">
                                <div class="item_icon"><i class="fa fa-envelope-o"></i></div>
                                <div class="widget_ab_item_text">
                                    <h6 class="text-white">Email</h6>
                                    <p>doeun1327@naver.com</p>
                                </div>
                            </div>
                        </div><!-- End off widget item -->
                    </div><!-- End off col-md-3 -->



                    <div class="widget_brand m-top-40">
                        <h3 style="color: gray;">문의사항</h3>
                        <p>제품 및 사이트 이용, 문의사항이 있다면 언제나 연락주세요
                            <br>감사합니다
                        </p>
                    </div>

                </div><!-- End off col-md-3 -->
            </div>
        </div>
        </div>
        <br><br><br><br><br><br><br>
    </footer>




    </div>

    <!-- JS includes -->

    <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
    <script src="assets/js/vendor/bootstrap.min.js"></script>

    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.js"></script>
    <script src="assets/js/jquery.easing.1.3.js"></script>
    <script src="assets/css/slick/slick.js"></script>
    <script src="assets/css/slick/slick.min.js"></script>
    <script src="assets/js/jquery.collapse.js"></script>
    <script src="assets/js/bootsnav.js"></script>


    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>

</body>

</html>