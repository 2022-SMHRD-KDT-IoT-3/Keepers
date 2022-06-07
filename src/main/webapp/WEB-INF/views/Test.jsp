<%@page import="java.util.List"%>
<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- jStl  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<META HTTP-EQUIV="refresh" CONTENT="5">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>

	<div class="container">
		<br> <br> <br>
		<h2 class="text-center">Keepers 시연 페이지</h2>
		<hr>
		<br>
		<div style="text-align: center;">
			<button type="button" class="btn btn-success btn-lg"
				style="margin-right: 10px;">새로 고침</button>
			<button type="button" id="push" class="btn btn-success btn-lg">Push 알림</button>
		</div>
		<br> <br>
		<div class="panel panel-default">

			<div class="panel-body">
				<table class="table table-hover table-bordered text-center">
					<tr class="success">
						<td>번호</td>
						<td>무게센서 데이터</td>
						<td>센서 입력시간</td>

					</tr>


					<c:forEach var="vo" items="${list}" varStatus="i">
						<tr>
							<td>${i.count}</td>
							<td>${vo.v_weight}</td>
							<td>${vo.v_signdate}</td>
						</tr>
					</c:forEach>
				</table>

			</div>
			<div class="panel-body">Keepers 감사합니다.</div>
		</div>

	</div>

	<script type="text/javascript">
		$('.button').click(function() {
			location.reload();
		});
		
		$('#push').click(function(){
			$.ajax({
				url : "fcm.do",
				type : "post",
				success : function(res){
					console.log("알림보내기 성공")
				},
				error : function(e){
					console.log("알림보내기 실패")
				}
			})
		})
	</script>

</body>
</html>