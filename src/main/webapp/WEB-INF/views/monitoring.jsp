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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment-with-locales.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-adapter-moment@1.0.0"></script>

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

<!-- calender.script -->
    <script src="https://funyphp.com/js/jquery-1.8.3.min.js.pagespeed.jm.0IhQ85x_cu.js"></script>

<style>
a {
	font-size: 19px;
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

        <!-- /* section calendar */ -->
   <style type="text/css">
        
        .sec_cal {
            width: 360px;
            margin: 0 auto;
            font-family: "NotoSansR";
        }
        
        .sec_cal .cal_nav {
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: 700;
            font-size: 48px;
            line-height: 78px;
        }
        
        .sec_cal .cal_nav .year-month {
            width: 300px;
            text-align: center;
            line-height: 1;
        }
        
        .sec_cal .cal_nav .nav {
            display: flex;
            border: 1px solid #333333;
            border-radius: 5px;
        }
        
        .sec_cal .cal_nav .go-prev,
        .sec_cal .cal_nav .go-next {
            display: block;
            width: 50px;
            height: 78px;
            font-size: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .sec_cal .cal_nav .go-prev::before,
        .sec_cal .cal_nav .go-next::before {
            content: "";
            display: block;
            width: 20px;
            height: 20px;
            border: 3px solid #000;
            border-width: 3px 3px 0 0;
            transition: border 0.1s;
        }
        
        .sec_cal .cal_nav .go-prev:hover::before,
        .sec_cal .cal_nav .go-next:hover::before {
            border-color: #ed2a61;
        }
        
        .sec_cal .cal_nav .go-prev::before {
            transform: rotate(-135deg);
        }
        
        .sec_cal .cal_nav .go-next::before {
            transform: rotate(45deg);
        }
        
        .sec_cal .cal_wrap {
            padding-top: 40px;
            position: relative;
            margin: 0 auto;
        }
        
        .sec_cal .cal_wrap .days {
            display: flex;
            margin-bottom: 20px;
            padding-bottom: 20px;
            border-bottom: 1px solid #ddd;
        }
        
        .sec_cal .cal_wrap::after {
            top: 368px;
        }
        
        .sec_cal .cal_wrap .day {
            display: flex;
            align-items: center;
            justify-content: center;
            width: calc(100% / 7);
            text-align: left;
            color: #999;
            font-size: 12px;
            text-align: center;
            border-radius: 5px;
        }
        /*  */
        .current.today {
            background: #FEEBB6;
        }
        .current.red {
            background: #FD9F28;
        }
        
        .sec_cal .cal_wrap .dates {
            display: flex;
            flex-flow: wrap;
            height: 290px;
        }
        
        .sec_cal .cal_wrap .day:nth-child(7n -1) {
            color: #3c6ffa;
        }
        
        .sec_cal .cal_wrap .day:nth-child(7n) {
            color: #ed2a61;
        }
        
        .sec_cal .cal_wrap .day.disable {
            color: #ddd;
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
						<li><a href="careSelect.do?c_manager_id=${info.m_id}">사용자
								조회</a></li>
						<li><a href="monitoring.do?c_manager_id=${info.m_id}">사용자
								모니터링</a></li>
						<li><a href="boardList.do">공지사항 게시판</a></li>
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
				<img src="resources/imgs/mainimg1.jpg" alt="" width="1920px"
					height="600px" style="opacity: 0.7;">
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
									<br>
									<h2 class="text-white">
										Keepers 동구 5개 기관 <strong>추가 제휴 계약</strong>
									</h2>
									<h1 class="text-white">시범사업 5년간 시범 운영</h1>
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




	<!--달력차트, 주간 차트-->
	<!--두번째 구간-->
	<section id="test" class="test bg-grey roomy-60 fix"
		style="background-color: rgba(250, 241, 219, 0.891) !important;">
		<div class="container">
			<div class="row">
				<div class="main_test fix">


					<!-- 달력 공간-->
						<div class="col-md-6">
							<div class="test_item fix"
								style="text-align: center; background-color: white; height:640px;">
								<br>
								<div class="sec_cal">
        <div class="cal_nav">
            <a href="javascript:;" class="nav-btn go-prev">prev</a>
            <div class="year-month"></div>
            <a href="javascript:;" class="nav-btn go-next">next</a>
        </div>
        <div class="cal_wrap">
            <div class="days">
                <div class="day">MON</div>
                <div class="day">TUE</div>
                <div class="day">WED</div>
                <div class="day">THU</div>
                <div class="day">FRI</div>
                <div class="day">SAT</div>
                <div class="day">SUN</div>
            </div>
            <div class="dates"></div>
        </div>
    </div>
							</div>

						</div>

					<!-- 주간 차트 -->
						<div class="col-md-6">
							<div class="test_item fix" 
								style="background-color: white;">
									<legend style="height: 35px; text-align:center">주간
										모니터링 </legend>
								<div class="item_text" id="chart_w" style="width:500px; height:500px; padding-right:5px;">
									<section>
										<br>
										<canvas id="weekChart"></canvas>
									</section>
								</div>
							</div>

						</div>
				</div>
			</div>
		</div>
	</section>




	<!--모니터링-->
	<section id="test" class="test bg-grey roomy-60 fix"
		style="background-color: rgba(255, 255, 255, 0.891) !important;">
		<br> <br>
		<div class="container">
			<div class="row">
				<div class="main_test fix">

					<!-- 모니터링 페이지 -->

					<div
						style="text-align: center; color: rgb(87, 87, 87); font-size: 32px; font-weight: 600;">모니터링
					</div>
					<hr>
					<div style="float: right;">
						<select name="monitorSeq" aria-label="Default select example"
							style="height: 50px; width: 160px;">
							<c:choose>
								<c:when test="${not empty list}">
									<option selected>사용자 선택</option>
									<c:forEach var="vo" items="${list}" varStatus="i">
										<option value="${vo.c_seq}">${vo.c_name}</option>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<option selected>사용자 선택</option>
								</c:otherwise>
							</c:choose>
						</select>

						<button type="button" class="btn btn-warning"
							style="margin-left: 10px;" id="monitorSelect">조회</button>
					</div>
					<br> <br> <br>

					<!--이 부분에 차트 넣으면 됩니다 일단 이미지로 시각화만 했어요!
                                사이즈는 1920*600 정도가 적당해보입니다 -->
					<div class="panel" id="chart_p"
						style="text-align: center; padding: 20px; height: 400px;">
						<canvas id="myChart"></canvas>
					</div>
					<br> <br>
					<!-- 마지막 활동 시간 넣고 싶으면 이 곳 이용하세요 -->
					<div style="text-align: center;">
						<h1>
							마지막 활동 시간은 <strong
								style="background-color: rgb(159, 254, 159); border-radius: 8px;"
								id="lastAct"> </strong>입니다
						</h1>
					</div>

				</div>
			</div>
		</div>
	</section>

	<!--두번째 구간-->
	<section id="test" class="test bg-grey roomy-60 fix"
		style="background-color: rgba(243, 243, 200, 0.468) !important;">
		<div class="container">
			<div class="row">
				<div class="main_test fix">


					<!-- 사용자 조회 -->
					<div class="col-md-6">
						<div class="test_item fix" style="text-align: center;">

							<div class="item_text">
								<legend style="text-align: center; height: 35px;"> 생활반응
									확인 </legend>
								<br>
								<section id="presentAct"></section>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="test_item fix" style="text-align: center;">

							<legend style="text-align: center; height: 35px;"> 사용자
								정보 </legend>
							<br>
							<section>

								<table class="table table-striped"
									style="background-color: rgb(248, 234, 207); text-align: center;">
									<thead>
										<tr>
											<th scope="col">이름</th>
											<th scope="col">전화번호</th>
											<th scope="col">주소</th>
											<th scope="col">메모</th>
										</tr>
									</thead>
									<tbody id="monitoringInfo">

									</tbody>
								</table>
							</section>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>


	<!-- 공지사항 폼 끝-->






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
					<h1 class="text-white" style="text-align: center;">Keepers는
						노인복지를 위해 노력합니다</h1>
					<br>
				</div>
			</div>
		</div>
	</section>


	<!-- 회사소개 구간 -->
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
							<h5 class="text-white">서비스 소개</h5>
							<div class="widget_latst_item m-top-30">
								<div class="item_icon">
									<img src="resources/imgs/product1.png" alt="" width="50px" />
								</div>
								<div class="widget_latst_item_text">
									<p style="color: black;">무게센서를 통해 생활반응 확인</p>


								</div>
							</div>
							<div class="widget_latst_item m-top-30">
								<div class="item_icon">
									<img src="resources/imgs/product2.png" alt="" width="37px" />
								</div>
								<div class="widget_latst_item_text">
									<p style="color: black;">12시간 무반응시 복지사에게 1차 알림</p>

								</div>
							</div>
							<div class="widget_latst_item m-top-30">
								<div class="item_icon">
									<img src="resources/imgs/product3.png" alt="" width="42px" />
								</div>
								<div class="widget_latst_item_text">
									<p style="color: black;">24시간 무반응시 복지사에게 방문 알림</p>
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
									href="http://www.yangjibokji.or.kr/" style="color: black;"><i
										class="fa fa-angle-right"></i> 양지종합사회복지관 </a></li>
								<li class="m-top-20"><a
									href="http://care1004.or.kr/main/main.php"
									style="color: black;"><i class="fa fa-angle-right"></i>
										두암종합사회복지관 </a></li>
								<li class="m-top-20"><a
									href="http://www.gjw.or.kr/agapesilver/" style="color: black;"><i
										class="fa fa-angle-right"></i>우리동네간호주간보호센터</a></li>
								<li class="m-top-20"><a
									href="http://www.noin.or.kr/index.php?" style="color: black;"><i
										class="fa fa-angle-right"></i>씨씨씨아가페실버센터</a></li>
								<li class="m-top-20"><a href="" style="color: black;"><i
										class="fa fa-angle-right"></i>동구노인종합복지관</a></li>
								<li class="m-top-20"><a href="" style="color: black;"><i
										class="fa fa-angle-right"></i>딸과아들재활노인주간보호센터</a></li>
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
	<!-- 회사 소개 구간 끝 -->
	</div>


	<!-- JS includes -->

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

	<script type="text/javascript">
		$('#monitorSelect').click(function(){
			var d_c_seq = $('select[name=monitorSeq]').val()
			console.log(d_c_seq)
			$('#chart_p').html("<canvas id='myChart'></canvas>")
			$('#chart_w').html("<canvas id='weekChart'></canvas>")
			$.ajax({
				url : "monitoringChart.do",
				type : "get",
				data : {"d_c_seq" : d_c_seq},
				dataType : "json",
				async : false,
				success : monitorResult,
				error : function(e){
					console.log("chart에러")
				}
				
			})
			
			
			$.ajax({
				url : "monitoringAct.do",
				type: "get",
				data : {"d_c_seq" : d_c_seq},
				dataType : "json",
				success : monitorAct,
				async : false,
				error : function(e){
					console.log("act에러")
				}
			})
			
			$.ajax({
				url : "monitorInfo.do",
				type: "get",
				data : {"d_c_seq" : d_c_seq},
				dataType : "json",
				success : function(res){
					console.log(res)
					var html = "<tr>";
					html += "<th scope='row'>"+res.c_name+"</th>"
					html += "<td>"+res.c_phone+"</td>"
					html += "<td>"+res.c_address+"</td>"
					html += "<td>"+res.c_memo+"</td>"
					html += "</tr>";
					
					$('#monitoringInfo').html(html)
				},
				error : function(e){
					console.log("info에러")
				}
			})
		})
		
		function monitorResult(result){
			
			if(result != "0"){
			
				var testValue = result[0].split(',');
				var testLabel = result[1].split(',');
				console.log(testValue);
				console.log(testLabel);
				
		          const labels1 = testLabel;
		          const data1 = {
		              labels: labels1,
		              
		              datasets: [{
		                  label: '일간활동여부',
		                  //100= 마지막에 넣어주기 최대범위설정 
		                  data: testValue,
		                  backgroundColor: [
		                       //라인선 색(0.2 = 투명도 )
		                       'rgb( 255,165,0, 0.5)',
		                  ],
		                  borderColor: [
		                       // border 색 
		                       'rgb( 255,165,0)',
		                  ],
		                  //선두께
		                  borderWidth: 4,
		                  
		                  //둥근선 
		                  tension: 0.3,
		                  
		                  pointBorderWidth: 0,
		                  pointStyle: 'star'
		                  
		              }]
		          };
				
		          const config1 = {
		                  type: 'line',
		                  data: data1,
		                  options: {
		                  	 layout : {
		                           padding : {
		                        	   top :20,
		                               bottom :20
		                           },
		                       },
		                      scales: {
		                          y: {
		                              //0부터 시작하기
		                              beginAtZero: true
		                          },
		                          X: {
		                          showGrid: true,
		                          display:true,
		                          type: 'time',
		                          time: {
		                            parser: 'HH:mm:ss',
		                            unit: 'hour',
		                            displayFormats: {
		                              hour: 'HH:mm'
		                            },
		                            tooltipFormat: 'D MMM YYYY - HH:mm:ss'
		                          }
		                          
		                      	},
		                      },
		                      //비율유지 하지마라 
		                      maintainAspectRatio:false
		                  }
		                  
		              };
		            
		              const multichart_d = new Chart(
		                  document.getElementById('myChart'),
		                  config1
		              );
		              
		              var weekLabel = "06월 06일,06월 07일,06월08일,06월09일,06월10일,06월11일,06월12일".split(',');
		              var weekData = "47,52,45,33,25,15,10".split(',');
	      				console.log(weekLabel)
		      		const data2 = {
		      				
		      				labels: weekLabel,
		      	              
		      	              datasets: [{
		      	                  label: '주간활동여부',
		      	                  //100= 마지막에 넣어주기 최대범위설정 
		      	                  data: weekData,
		      	                  backgroundColor: [
		      	                       //라인선 색(0.2 = 투명도 )
		      	                       'rgb( 255,165,0, 0.5)',
		      	                  ],
		      	                  borderColor: [
		      	                       // border 색 
		      	                       'rgb( 255,165,0)',
		      	                  ],
		      	                  //선두께
		      	                  borderWidth: 4,
		      	                  
		      	                  //둥근선 
		      	                  tension: 0.3,
		      	                  
		      	                  pointBorderWidth: 0,
		      	                  pointStyle: 'star'
		      	                  
		      	              }]
		      	          };
		      			
		      	          const config2 = {
		      	                  type: 'line',
		      	                  data: data2,
		      	                  options: {
		      	                  	 layout : {
		      	                           padding : {
		      	                        	   top :20,
		      	                               bottom :20
		      	                           },
		      	                       },
		      	                      scales: {
		      	                          y: {
		      	                              //0부터 시작하기
		      	                              beginAtZero: true
		      	                          },
		      	                          X: {
		    		                          showGrid: true,
		    		                          display:true
		    		                          /* type: 'time',
		    		                          time: {
		    		                            parser: 'DD/MM/YYYY',
		    		                            unit: 'day',
		    		                            displayFormats: {
		    		                              hour: 'DD/MM/YYYY'
		    		                            },
		    		                            tooltipFormat: 'DD/MM/YYYY'
		    		                          } */
		    		                          
		    		                      	},
		      	                      },
		      	                      //비율유지 하지마라 
		      	                      maintainAspectRatio:false
		      	                  }
		      	                  
		      	              };
		      	            
		      	              const weekchart_d = new Chart(
		      	                  document.getElementById('weekChart'),
		      	                  config2
		      	              );
		      	              
		      	            
		      	              // 날짜 정보 가져오기
		      	              var date = new Date(); // 현재 날짜(로컬 기준) 가져오기
		      	              var utc = date.getTime() + date.getTimezoneOffset() * 60 * 1000; // uct 표준시 도출
		      	              var kstGap = 9 * 60 * 60 * 1000; // 한국 kst 기준시간 더하기
		      	              var today = new Date(utc + kstGap); // 한국 시간으로 date 객체 만들기(오늘)

		      	              var thisMonth = new Date(
		      	                  today.getFullYear(),
		      	                  today.getMonth(),
		      	                  today.getDate()
		      	              );
		      	              // 달력에서 표기하는 날짜 객체

		      	              var currentYear = thisMonth.getFullYear(); // 달력에서 표기하는 연
		      	              var currentMonth = thisMonth.getMonth(); // 달력에서 표기하는 월
		      	              var currentDate = thisMonth.getDate(); // 달력에서 표기하는 일

		      	              // kst 기준 현재시간
		      	              // console.log(thisMonth);

		      	              // 캘린더 렌더링
		      	              renderCalender(thisMonth);

		      	              function renderCalender(thisMonth) {
		      	                  // 렌더링을 위한 데이터 정리
		      	                  currentYear = thisMonth.getFullYear();
		      	                  currentMonth = thisMonth.getMonth();
		      	                  currentDate = thisMonth.getDate();

		      	                  // 이전 달의 마지막 날 날짜와 요일 구하기
		      	                  var startDay = new Date(currentYear, currentMonth, 0);
		      	                  var prevDate = startDay.getDate();
		      	                  var prevDay = startDay.getDay();

		      	                  // 이번 달의 마지막날 날짜와 요일 구하기
		      	                  var endDay = new Date(currentYear, currentMonth + 1, 0);
		      	                  var nextDate = endDay.getDate();
		      	                  var nextDay = endDay.getDay();

		      	                  // console.log(prevDate, prevDay, nextDate, nextDay);

		      	                  // 현재 월 표기
		      	                  $(".year-month").text(currentYear + "." + (currentMonth + 1));

		      	                  // 렌더링 html 요소 생성
		      	                  calendar = document.querySelector(".dates");
		      	                  calendar.innerHTML = "";

		      	                  // 지난달
		      	                  for (var i = prevDate - prevDay + 1; i <= prevDate; i++) {
		      	                      calendar.innerHTML =
		      	                          calendar.innerHTML +
		      	                          '<div class="day prev disable">' +
		      	                          "<h1>" +
		      	                          i +
		      	                          "</h1>" +
		      	                          "</div>";
		      	                  }
		      	                  // 이번달
		      	                  for (var i = 1; i <= nextDate; i++) {
		      	                      calendar.innerHTML =
		      	                          calendar.innerHTML +
		      	                          '<div class="day current">' +
		      	                          "<h1>" +
		      	                          i +
		      	                          "</h1>" +
		      	                          "</div>";
		      	                  }
		      	                  // 다음달
		      	                  for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
		      	                      calendar.innerHTML =
		      	                          calendar.innerHTML +
		      	                          '<div class="day next disable">' +
		      	                          "<h1>" +
		      	                          i +
		      	                          "</h1>" +
		      	                          "</div>";
		      	                  }

		      	                  // 오늘 날짜 표기
		      	                  if (today.getMonth() == currentMonth) {
		      	                      todayDate = today.getDate();
		      	                      var currentMonthDate = document.querySelectorAll(".dates .current");
		      	                      currentMonthDate[todayDate - 1].classList.add("today");
		      	                      currentMonthDate[todayDate - 2].classList.add("today");
		      	                      currentMonthDate[4].classList.add("today");
		      	                      currentMonthDate[7].classList.add("today");
		      	                      
		      	                  }
		      	                  if (today.getMonth() == currentMonth) {
		      	                      todayDate = today.getDate();
		      	                      var currentMonthDate = document.querySelectorAll(".dates .current");
		      	                      currentMonthDate[1].classList.add("red");
		      	                      currentMonthDate[2].classList.add("red");
		      	                      currentMonthDate[5].classList.add("red");
		      	                      currentMonthDate[6].classList.add("red");
		      	                      currentMonthDate[8].classList.add("red");
		      	                      
		      	                  }
		      	              }

		      	              // 이전달로 이동
		      	              $(".go-prev").on("click", function() {
		      	                  thisMonth = new Date(currentYear, currentMonth - 1, 1);
		      	                  renderCalender(thisMonth);
		      	              });

		      	              // 다음달로 이동
		      	              $(".go-next").on("click", function() {
		      	                  thisMonth = new Date(currentYear, currentMonth + 1, 1);
		      	                  renderCalender(thisMonth);
		      	              });
		      	          
				
			}else{
			
	          const data1 = {
	              labels: [0,1,2,3,4,5,6,7],
	              
	              datasets: [{
	                  label: '일간활동여부',
	                  //100= 마지막에 넣어주기 최대범위설정 
	                  data: [0.0,0.0,0.0,0.0,0.0,0.0,0.0],
	                  backgroundColor: [
	                       //라인선 색(0.2 = 투명도 )
	                       'rgb( 255,165,0, 0.5)',
	                  ],
	                  borderColor: [
	                       // border 색 
	                       'rgb( 255,165,0)',
	                  ],
	                  //선두께
	                  borderWidth: 4,
	                  
	                  //둥근선 
	                  tension: 0.3,
	                  
	                  pointBorderWidth: 0,
	                  pointStyle: 'star'
	                  
	              }]
	          };
			
	          const config1 = {
	                  type: 'line',
	                  data: data1,
	                  options: {
	                  	 layout : {
	                           padding : {
	                        	   top :20,
	                               bottom :20
	                           },
	                       },
	                      scales: {
	                          y: {
	                              //0부터 시작하기
	                              beginAtZero: true
	                          },
	                          X: {
	                          showGrid: true,
	                          display:true,
	                          type: 'time',
	                          time: {
	                            parser: 'HH:mm:ss',
	                            unit: 'hour',
	                            displayFormats: {
	                              hour: 'HH:mm'
	                            },
	                            tooltipFormat: 'D MMM YYYY - HH:mm:ss'
	                          }
	                          
	                      	},
	                      },
	                      //비율유지 하지마라 
	                      maintainAspectRatio:false
	                  }
	                  
	              };
	            
	              const multichart_d = new Chart(
	                  document.getElementById('myChart'),
	                  config1
	              );
		}
		};
		
		
		function monitorAct(result){
			console.log(result[0])
			if(result[0] != null){
				var lastAct = "";
				$.each(result, (index, obj) => {
					if(obj.v_weight > 10){
						lastAct = obj.v_signdate;
						return false;
					}
				});
				$('#lastAct').text(lastAct);
				
				var html = "";
				if(result[0].v_weight >10){
					html += "<img src='resources/imgs/on.png' width='180px'> <br>"
					html += "<br>"
					html += "<h2"
					html +="	style='background-color: rgb(159, 254, 159); display: inline; border-radius: 5px;'>"
					html +="	<strong >활동중</strong>"
					html +="</h2>"
				}else{
	                html += "<img src='./imgs/off.png' width='200px'>"
	                html += "<br>"
	                html += "<br>"
	                html += "<h2 style='background-color: rgb(228, 234, 163); display: inline; border-radius: 5px;'><strong>무반응</strong></h2>"
				}
				$('#presentAct').html(html);
				
			}else{
				$('#lastAct').text("정보없음");
				$('#presentAct').text("정보없음");
			}
		};
		
		
	</script>

    <script type="text/javascript">
/*         $(document).ready(function() {
            calendarInit();
        });
        /*
                            달력 렌더링 할 때 필요한 정보 목록

                            현재 월(초기값 : 현재 시간)
                            금월 마지막일 날짜와 요일
                            전월 마지막일 날짜와 요일
                        */ */

        
    </script>
</body>

</html>