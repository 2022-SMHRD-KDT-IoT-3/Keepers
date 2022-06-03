<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Caveat:wght@600&display=swap')
	;
</style>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Keepers</title>
<link rel="icon" type="image/x-icon" href="resources/imgs/logob.png" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css" rel="stylesheet" />
</head>
<body>
	<!-- Background Video-->
	<video class="bg-video" playsinline="playsinline" autoplay="autoplay"
		muted="muted" loop="loop">
		<source src="resources/mp4/old.mp4" type="video/mp4" />
	</video>
	<!-- Masthead-->
	<div class="masthead">
		<div class="masthead-content text-white">
			<div class="container-fluid px-4 px-lg-0">
				<img src="./imgs/logob.png" alt="" width="220px" height="90px">
				<br> <br>
				<p class="mb-5">Keepers는 독거노인 고독사, 사고사 예방을 위한 생활 반응 확인 서비스를 제공하고
					있습니다.</p>
				<!-- * * * * * * * * * * * * * * *-->
				<!-- * * SB Forms Contact Form * *-->
				<!-- * * * * * * * * * * * * * * *-->
				<!-- This form is pre-integrated with SB Forms.-->
				<!-- To make this form functional, sign up at-->
				<!-- https://startbootstrap.com/solution/contact-forms-->
				<!-- to get an API token!-->
				
					<!-- Email address input-->
					<div >
						<div >
							<br>
							<form>
								<div class="mb-3" style="text-align: left;">
									<label for="exampleInputEmail1" class="form-label">아이디</label>
									<input type="text" class="form-control"
										id="exampleInputEmail1" placeholder="아이디를 입력하세요" name="m_id">
								</div>
								<br>
								<div class="mb-3" style="text-align: left;">
									<label for="exampleInputPassword1" class="form-label">비밀번호</label>
									<input type="password" class="form-control"
										id="exampleInputPassword1" placeholder="비밀번호를 입력하세요"
										name="m_pw">
								</div>
								<div style="text-align: center;">
									<a href="join.do">아직 회원이 아니시라면 이곳을 눌러주세요</a>
								</div>
								<br> <br>
								<div style="text-align: center;">
									<button type="button" id="login" class="btn btn-lg btn-primary">로그인</button>
								</div>
							</form>
						</div>
					</div>
					
				
			</div>
		</div>
	</div>
	<!-- Social Icons-->

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$('#login').click(function(){
			$.ajax({
				url : "loginSelect.do",
				type : "post",
				data : {"m_id" : $('input[name=m_id]').val(),
					"m_pw" : $('input[name=m_pw]').val()
					},
				success : function(res){
					if(res == "fail") {
						alert("아이디와 비밀번호를 다시 확인해주세요")
					}else{
						location.replace("/keepers/main.do")
					}
					
				},
				error : function(res){
					
				}
			});
			
		});
	</script>
</body>
</html>
