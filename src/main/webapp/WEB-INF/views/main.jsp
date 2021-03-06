<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	font-size: 19px;
}

#gotop {
	position: fixed;
	bottom: 80px;
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
										???????????? : 1234 5678 90</img></li>
									<li><img src="resources/imgs/email.png"
										style="width: 15px;"></img> ????????? : your@email.com</li>
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

						<li><a href="careJoin.do">????????? ??????</a></li>
						<li><a href="careSelect.do?c_manager_id=${info.m_id}">?????????
								??????</a></li>
						<li><a href="monitoring.do?c_manager_id=${info.m_id}">?????????
								????????????</a></li>
						<li><a href="boardList.do">???????????? ?????????</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<br> <br>

		</nav>

		<!-- ???????????? ????????? ????????? -->
		<h3 id="top"></h3>

		<!--Home Sections-->
		<section id="home" class="home bg-black fix" style="height: 600px;">
			<div class="overlay">
				<img src="resources/imgs/mainimg1.jpg" alt="" width="1920px"
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
										?????? ??????????????? <strong>???????????? ??????</strong>
									</h2>
									<h2 class="text-white">???????????? ????????? ????????? ????????? ??????????????????</h2>
								</div>
								<div class="home_btns m-top-40"></div>
							</div>
							<!-- End off slid item -->
							<div class="slid_item">
								<div class="home_text">
									<h2 class="text-white">
										???????????? ?????????, ?????????<strong>?????? ?????? ??????</strong>
									</h2>
									<h2 class="text-white">2022-06-13~2022-06-19</h2>
									<h2 class="text-white">???????????? ?????? ??????????????????</h2>
								</div>

								<div class="home_btns m-top-40"></div>
							</div>
							<!-- End off slid item -->
							<div class="slid_item">
								<div class="home_text ">
									<br>
									<h2 class="text-white">
										Keepers ?????? 5??? ?????? <strong>?????? ?????? ??????</strong>
									</h2>
									<h1 class="text-white">???????????? 5?????? ?????? ??????</h1>
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


					<!-- ???????????? ?????????, ??????????????????????????? ?????? -->
					<div class="col-md-6" style="margin-right: 12px;">
						<div class="test_item fix"
							style="text-align: center; background-color: white;">

							<div class="item_text" style="font-size: 22px;">
								<legend style="text-align: center; height: 35px;"> ??? ??????
								</legend>
								<br>
								<div>${info.m_name}???</div>
								<div>ID : ${info.m_id}</div>
								<div>DEPT : ${info.m_department}</div>
								<br> <a href="logout.do"><button type="button"
										class="btn btn-warning">????????????</button></a> <br> <br> <a
									href="memberUpdatePage.do"><h5
										style="color: rgb(14, 99, 14);">???????????? ????????? ???????????? ???????????????</h5></a>


							</div>
						</div>
					</div>


					<a href="./board.html">
						<div class="test_item fix"
							style="text-align: center; background-color: white; height: 408px;">
							<a href="boardList.do">
								<div class="item_text">
									<legend style="text-align: center; height: 35px;">????????????
										????????? </legend>
									<section
										style="background-color: rgba(249, 249, 249, 0.863) !important; color: gray"
										id="boardLimit"></section>
									<br>
								</div>
							</a>
						</div>
					</a>

				</div>
				</a>


			</div>
		</div>
		</div>
	</section>

	<!--????????? ??????-->
	<section id="test" class="test bg-grey roomy-60 fix"
		style="background-color: rgba(67, 103, 93, 0.361) !important;">
		<div class="container">
			<div class="row">
				<div class="main_test fix">


					<!-- ????????? ?????? -->
					<a href="careSelect.do?c_manager_id=${info.m_id}">
						<div class="col-md-6">
							<div class="test_item fix"
								style="text-align: center; background-color: white; height: 408px; padding: 5px;">
								<br>
								<div class="item_text">
									<legend style="text-align: center; height: 35px;"> ?????????
										?????? </legend>

									<section
										style="background-color: rgba(249, 249, 249, 0.863) !important; color: gray"
										id="careLimit"></section>

								</div>

							</div>

						</div>
					</a>

					<!-- ????????? ???????????? -->
					<a href="monitoring.do?c_manager_id=${info.m_id}">
						<div class="col-md-6">
							<div class="test_item fix"
								style="text-align: center; background-color: white; height: 408px;">
								<div class="item_text">
									<legend style="text-align: center; height: 35px;">?????????
										???????????? </legend>

									<section>
										<br> <img src="resources/imgs/monitor.png" alt=""
											style="height: 230px;">
									</section>
								</div>
							</div>

						</div>
					</a>
				</div>
			</div>
		</div>
	</section>








	<!--?????? ??????????????? ?????? ??????-->
	<section id="action" class="action bg-primary roomy-40"
		style="background-color: rgba(0, 0, 0, 0.718);">
		<div class="container">
			<div class="row">
				<div class="maine_action">
					<br>
					<h1 class="text-white" style="text-align: center;">Keepers???
						??????????????? ?????? ???????????????</h1>
					<br>
				</div>
			</div>
		</div>
	</section>


	<!-- ???????????? ?????? -->
	<div style="background-color: rgba(255, 166, 0, 0.327);">
		<br> <br> <br> <br> <br>
	</div>
	<footer id="contact"
		style="background-color: rgba(255, 166, 0, 0.327); color: #2f3234;">
		<div class="container">
			<div class="row">
				<div class="widget_area">
					<div class="col-md-3">
						<div class="widget_item widget_about">
							<h5 class="text-white">?????? ??????</h5>
							<p class="m-top-20">Keepers??? ??????????????? ????????? ???????????? ???????????? ?????????????????????
								??????????????? ???????????? ????????????. ?????? ?????? ???????????? ?????????, ????????? ????????? ??? ??? ????????????.</p>
							<br>
							<div class="widget_ab_item m-top-30">
								<div class="item_icon">
									<i class="fa fa-location-arrow"></i>
								</div>
								<div class="widget_ab_item_text">
									<h6 class="text-white">??????</h6>
									<p>?????? ?????? ????????? 472-11</p>
								</div>
							</div>
							<div class="widget_ab_item m-top-30">
								<div class="item_icon">
									<i class="fa fa-phone"></i>
								</div>
								<div class="widget_ab_item_text">
									<h6 class="text-white">????????????</h6>
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
							<h5 class="text-white">????????? ??????</h5>
							<div class="widget_latst_item m-top-30">
								<div class="item_icon">
									<img src="resources/imgs/product1.png" alt="" width="50px" />
								</div>
								<div class="widget_latst_item_text">
									<p style="color: black;">??????????????? ?????? ???????????? ??????</p>


								</div>
							</div>
							<div class="widget_latst_item m-top-30">
								<div class="item_icon">
									<img src="resources/imgs/product2.png" alt="" width="37px" />
								</div>
								<div class="widget_latst_item_text">
									<p style="color: black;">12?????? ???????????? ??????????????? 1??? ??????</p>

								</div>
							</div>
							<div class="widget_latst_item m-top-30">
								<div class="item_icon">
									<img src="resources/imgs/product3.png" alt="" width="42px" />
								</div>
								<div class="widget_latst_item_text">
									<p style="color: black;">24?????? ???????????? ??????????????? ?????? ??????</p>
								</div>
							</div>
						</div>
					</div>
					<!-- End off col-md-3 -->

					<div class="col-md-3">
						<div class="widget_item widget_service sm-m-top-50">
							<h5 class="text-white">?????? ??????</h5>
							<ul class="m-top-20">
								<li class="m-top-20"><a
									href="http://www.yangjibokji.or.kr/" style="color: black;"><i
										class="fa fa-angle-right"></i> ??????????????????????????? </a></li>
								<li class="m-top-20"><a
									href="http://care1004.or.kr/main/main.php"
									style="color: black;"><i class="fa fa-angle-right"></i>
										??????????????????????????? </a></li>
								<li class="m-top-20"><a
									href="http://www.gjw.or.kr/agapesilver/" style="color: black;"><i
										class="fa fa-angle-right"></i>????????????????????????????????????</a></li>
								<li class="m-top-20"><a
									href="http://www.noin.or.kr/index.php?" style="color: black;"><i
										class="fa fa-angle-right"></i>??????????????????????????????</a></li>
								<li class="m-top-20"><a href="" style="color: black;"><i
										class="fa fa-angle-right"></i>???????????????????????????</a></li>
								<li class="m-top-20"><a href="" style="color: black;"><i
										class="fa fa-angle-right"></i>??????????????????????????????????????????</a></li>
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
			<input type="hidden" name="m_id" value=${info.m_id}>
		</div>
		</div>
		<br> <br> <br> <br> <br> <br> <br>
	</footer>
	<!-- ?????? ?????? ?????? ??? -->
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
	<script>
		$(document).ready(function (){
			console.log("document ready")
			
			var m_id = $('input[name=m_id]').val();
			
			//????????????
			$.ajax({
				url : "boardLimit.do",
				type : "get",
				dataType : "json",
				async : false,
				success : boardLimit,
				error : function(e){
					console.log("???????????? ??????")
				}
			})
			
			console.log(m_id)
			//???????????????
			$.ajax({
				url : "careLimit.do",
				type : "post",
				data : {"c_manager_id" : m_id},
				dataType : "json",
				success : careLimit,
				error : function(e){
					console.log("??????????????? ??????")
				}
			})
		})
		
		
		function boardLimit(res){
			console.log(res)
			var html = "<table class='table table-striped' style='font-size:15px;'><thead>";
				html += "<tr>";
				html +=	"<th scope='col'></th>";
				html +=	"<th scope='col'>??????</th>";
				html +=	"<th scope='col'>?????????</th>";
				html +=	"<th scope='col'>????????????</th>"
				html += "</tr></thead><tbody>";
			$.each(res, (i, obj) => {
				html += "<tr>";
				html += "<th scope='row'>"+(i+1)+"</th>"
				html += "<th>"+res[i].b_title+"</th>"
				html += "<td>"+res[i].b_id+"</td>";
				html += "<td>"+res[i].b_signdate+"</td>";
				html += "</tr>";
			});
				html += "</tbody></table>";
			
			$('#boardLimit').html(html);
		};
		
		function careLimit(res){
			console.log(res)
			var html = "<table class='table table-striped' style='font-size:15px;'><thead>";
				html += "<tr>";
				html +=	"<th scope='col'></th>";
				html +=	"<th scope='col'>??????</th>";
				html +=	"<th scope='col'>????????????</th>";
				html +=	"<th scope='col'>??????</th>"
				html += "</tr></thead><tbody>";
			$.each(res, (i, obj) => {
				html += "<tr>";
				html += "<th scope='row'>"+(i+1)+"</th>"
				html += "<th>"+res[i].c_name+"</th>"
				html += "<td>"+res[i].c_phone+"</td>";
				html += "<td>"+res[i].c_memo+"</td>";
				html += "</tr>";
			});
				html += "</tbody></table>";
			
			$('#careLimit').html(html);
			
		};
	
	</script>
</body>

</html>