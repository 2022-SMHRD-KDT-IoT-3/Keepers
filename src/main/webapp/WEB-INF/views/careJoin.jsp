<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
<link rel="icon" type="image/png" href="resources/imgs/logow.png">

<!--Google Font link-->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">


<link rel="stylesheet" href="resources/css/slick/slick.css">
<link rel="stylesheet" href="resources/css/slick/slick-theme.css">
<link rel="stylesheet" href="resources/css/animate.css">
<link rel="stylesheet" href="resources/css/iconfont.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<link rel="stylesheet" href="resources/css/bootsnav.css">
<!-- xsslider slider css -->


<!--<link rel="stylesheet" href="assets/css/xsslider.css">-->




<!--For Plugins external css-->
<!--<link rel="stylesheet" href="assets/css/plugins.css" />-->

<!--Theme custom css -->
<link rel="stylesheet" href="resources/css/style.css">
<!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

<!--Theme Responsive css-->
<link rel="stylesheet" href="resources/css/responsive.css" />

<script src="resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>


<style>
a {
	font-size: 17px;
}

#gotop {
	position: fixed;
	bottom: 80px;
}

/* input radius 주려고 만듬 */
input {
	border-radius: 8px !important;
}

.mb-3 {
	font-size: 20px;
}
</style>

</head>

<body data-spy="scroll" data-target=".navbar-collapse">


	<!-- Preloader -->
	<div id="loading" style="background-color: rgb(255, 119, 0);">
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



	<div class="culmn">
		<!--Home page style-->


		<nav class="navbar navbar-default bootsnav navbar-fixed">
			<div class="navbar-top bg-grey fix">
				<div class="container">
					<div class="row">
						<div class="col-md-6" style="margin: 15px; text-align: center;">
							<div class="navbar-callus text-left sm-text-center">
								<ul class="list-inline" style="text-align: center;">
									<li><img src="resources/imgs/tel.png" style="width: 15px;">
										문의사항 : 1234 5678 90</img></li>
									<li><img src="resources/imgs/email.png"
										style="width: 15px;"></img> 이메일 : your@email.com</li>
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
						<span class="input-group-addon close-search"><i
							class="fa fa-times"></i></span>
					</div>
				</div>
			</div>
			<!-- End Top Search -->


			<div class="container">
				<div class="attr-nav">
					<ul>
						<li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
					</ul>
				</div>
				<div style="text-align: center; margin-bottom: 30px;">
					<a class="navbar-brand" href="main.do"> <img
						src="resources/imgs/logow.png" class="logo" alt=""
						style="width: 210px;"> <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
					</a>

				</div>
				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>

				</div>
				<!-- End Header Navigation -->

				<!-- navbar menu -->

				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">

						<li><a href="careJoin.do">사용자 등록</a></li>
						<li><a href="C_select.html">사용자 조회</a></li>
						<li><a href="C_monitor.html">사용자 모니터링</a></li>
						<li><a href="board.html">공지사항 게시판</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<br> <br>

		</nav>

		<!-- 제일위로 가지는 페이지 -->
		<h3 id="top"></h3>

		<!--Home Sections-->
		<section id="home" class="home bg-black fix" style="height: 600px;">
			<div class="overlay">
				<img src="resources/imgs/mainimg2.jpg" alt="" width="1920px"
					height="800px" style="opacity: 0.7;">
			</div>
			<div class="container"></div>
			<div class="row">
				<div class="main_home text-center">
					<div class="col-md-12">
						<div class="hello_slid">
							<div class="slid_item" style="float: left;">
								<div class="home_text">
									<br>
									<h2 class="text-white">
										함께 이루어가는 <strong>아름다운 세상</strong>
									</h2>
									<h2 class="text-white">여러분의 따뜻한 관심과 참여를 부탁드립니다</h2>
								</div>
								<div class="home_btns m-top-40"></div>
							</div>
							<!-- End off slid item -->
							<div class="slid_item">
								<div class="home_text">
									<h2 class="text-white">
										독거노인 고독사, 사고사<strong>예방 교육 실시</strong>
									</h2>
									<h2 class="text-white">2022-06-13~2022-06-19</h2>
									<h2 class="text-white">적극적인 참여 부탁드립니다</h2>
								</div>

								<div class="home_btns m-top-40"></div>
							</div>
							<!-- End off slid item -->
							<div class="slid_item">
								<div class="home_text ">
									<h2 class="text-white">
										동구사회복지센터<strong>확장</strong>
									</h2>
									<h1 class="text-white">주소는 여기로</h1>
								</div>

								<div class="home_btns m-top-40"></div>
							</div>
							<!-- End off slid item -->
						</div>
					</div>

				</div>


			</div>
			<!--End off row-->
	</div>
	<!--End off container -->
	</section>
	<!--End off Home Sections-->
	<!--Test section-->
	<section id="test" class="test bg-grey roomy-60 fix"
		style="background-color: rgba(250, 241, 219, 0.891) !important;">
		<div class="container">
			<div class="row">
				<div class="main_test fix">



					<!-- 독거노인 등록 폼 -->
					<section
						style="padding: 30px; margin-left: 150px; margin-right: 150px">
						<form action="careInsert.do"
							style="background-color: rgba(251, 195, 91, 0.469); border-radius: 30px;">
							<br> <br>
							<div
								style="text-align: center; color: rgb(87, 87, 87); font-size: 25px; font-weight: 600;">사용자
								등록</div>
							<hr>
							<div style="margin-left: 150px; margin-right: 150px;">
								<br>
								 <input type="hidden" name="c_manager_id" value="${info.m_id}">
								<br>
								<div class="mb-3">
									<label for="disabledTextInput" id="inputPassword6"
										class="form-label">이름</label> <input type="text"
										class="form-control" placeholder="이름을 입력하세요" name="c_name">
								</div>
								<br>
								<div class="mb-3">
									<label for="disabledTextInput" id="inputPassword6"
										class="form-label">생년월일</label> <input type="date"
										class="form-control" placeholder="생년월일을 선택하세요" name="c_birth">
								</div>
								<br>
								<div class="mb-3">
									<label for="disabledTextInput" id="inputPassword6"
										class="form-label">전화번호</label> <input type="text"
										class="form-control" placeholder="공백 없이 전화번호를 입력하세요"
										name="c_phone">
								</div>
								<br>
								<div class="mb-3">
									<label for="disabledTextInput" id="inputPassword6"
										class="form-label">주소</label> <input type="text"
										class="form-control" placeholder="주소를 입력하세요" name="c_address">
								</div>
								<br>
								<div class="mb-3">
									<label for="disabledTextInput" id="inputPassword6"
										class="form-label">메모</label>
									<textarea class="form-control" placeholder="특이사항을 입력하세요"
										name="c_memo" style="border-radius: 8px;">
                </textarea>
								</div>
								<br> <br>
								<hr>
								<div style="text-align: center;">
									<button type="reset" class="btn btn-warning"
										style="margin-right: 30px;">초기화</button>
									<button type="submit" class="btn btn-warning"
										style="margin-right: 30px;">등록</button>
								</div>
								<br> <br> <br>
							</div>
						</form>
					</section>
					<!-- 복지사 회원가입 폼 끝-->





				</div>
			</div>
		</div>
	</section>




	<!--회사 설명나누는 경계 구간-->
	<section id="action" class="action bg-primary roomy-40"
		style="background-color: rgba(0, 0, 0, 0.718);">
		<div class="container">
			<div class="row">
				<div class="maine_action">
					<br>
					<div class="col-md-8">
						<div class="action_item text-center">
							<h2 class="text-white text-uppercase">Keepers는 당신과 함께합니다</h2>
						</div>
					</div>
					<br> <br>

				</div>
			</div>
		</div>
	</section>


	<!-- 회사소개 구간 -->
	<div style="background-color: rgba(255, 166, 0, 0.327);">
		<br>
		<br>
		<br>
	</div>
	<footer id="contact"
		style="background-color: rgba(255, 166, 0, 0.327);">
		<div class="container">
			<div class="row">
				<div class="widget_area">
					<div class="col-md-3">
						<div class="widget_item widget_about">
							<h5 class="text-white">회사 소개</h5>
							<p class="m-top-20">Keepers는 무게센서를 이용한 슬리퍼를 이용하여 독거노인분들의
								생활반응을 측정하고 있습니다. 이를 통해 고령층의 사고사, 고독사 방지를 할 수 있습니다.</p>
							<br>
							<div class="widget_ab_item m-top-30">
								<div class="item_icon">
									<i class="fa fa-location-arrow"></i>
								</div>
								<div class="widget_ab_item_text">
									<h6 class="text-white">위치</h6>
									<p>광주 동구 서석동 472-11</p>
								</div>
							</div>
							<div class="widget_ab_item m-top-30">
								<div class="item_icon">
									<i class="fa fa-phone"></i>
								</div>
								<div class="widget_ab_item_text">
									<h6 class="text-white">전화번호</h6>
									<p>+82 010 9085 1327</p>
								</div>
							</div>
							<div class="widget_ab_item m-top-30">
								<div class="item_icon">
									<i class="fa fa-envelope-o"></i>
								</div>
								<div class="widget_ab_item_text">
									<h6 class="text-white">Email</h6>
									<p>doeun1327@naver.com</p>
								</div>
							</div>
						</div>
					</div>
					<!-- End off col-md-3 -->

					<div class="col-md-3">
						<div class="widget_item widget_latest sm-m-top-50">
							<h5 class="text-white">제품소개</h5>
							<div class="widget_latst_item m-top-30">
								<div class="item_icon">
									<img src="assets/images/ltst-img-1.jpg" alt="" />
								</div>
								<div class="widget_latst_item_text">
									<p>Lorem ipsum dolor sit amet, consectetur</p>

								</div>
							</div>
							<div class="widget_latst_item m-top-30">
								<div class="item_icon">
									<img src="assets/images/ltst-img-2.jpg" alt="" />
								</div>
								<div class="widget_latst_item_text">
									<p>Lorem ipsum dolor sit amet, consectetur</p>

								</div>
							</div>
							<div class="widget_latst_item m-top-30">
								<div class="item_icon">
									<img src="assets/images/ltst-img-3.jpg" alt="" />
								</div>
								<div class="widget_latst_item_text">
									<p>Lorem ipsum dolor sit amet, consectetur</p>
								</div>
							</div>
						</div>
					</div>
					<!-- End off col-md-3 -->

					<div class="col-md-3">
						<div class="widget_item widget_service sm-m-top-50">
							<h5 class="text-white">제휴 기관</h5>
							<ul class="m-top-20">
								<li class="m-top-20"><a
									href="http://www.yangjibokji.or.kr/"><i
										class="fa fa-angle-right"></i> 양지종합사회복지관 </a></li>
								<li class="m-top-20"><a href=""><i
										class="fa fa-angle-right"></i> 두암종합사회복지관 </a></li>
								<li class="m-top-20"><a href=""><i
										class="fa fa-angle-right"></i>A사회복지관</a></li>
								<li class="m-top-20"><a href=""><i
										class="fa fa-angle-right"></i> A사회복지관</a></li>
								<li class="m-top-20"><a href=""><i
										class="fa fa-angle-right"></i> A사회복지관</a></li>
								<li class="m-top-20"><a href=""><i
										class="fa fa-angle-right"></i> A사회복지관</a></li>
							</ul>
						</div>
					</div>
					<!-- End off col-md-3 -->
					<div class="col-md-3">
						<div style="width: 800px;">
							<img src="resources/imgs/old.png" alt=""> <a href="#top"><img
								src="resources/imgs/up.png" alt="" width="30px"></a>
						</div>
					</div>

				</div>
				<!-- End off col-md-3 -->
			</div>
		</div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br> <br> <br>
	</footer>
	<!-- 회사 소개 구간 끝 -->
	</div>

	<!-- JS includes -->

	<script src="resources/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="resources/js/vendor/bootstrap.min.js"></script>

	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/css/slick/slick.js"></script>
	<script src="resources/css/slick/slick.min.js"></script>
	<script src="resources/js/jquery.collapse.js"></script>
	<script src="resources/js/bootsnav.js"></script>



	<script src="resources/js/plugins.js"></script>
	<script src="resources/js/main.js"></script>

</body>

</html>