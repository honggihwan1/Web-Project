<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ page import="user.UserDAO" %> <!-- userdao의 클래스 가져옴 -->

<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->

<% request.setCharacterEncoding("UTF-8"); %>



<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->

<jsp:useBean id="user" class="user.User" scope="page" />

<jsp:setProperty name="user" property="userID" />

<jsp:setProperty name="user" property="userPassword" /> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width" , initial-scale="1">
<!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->
<link rel="stylesheet" href="css/bootstrap.css">
<title>어벤져스 로그인</title>
</head>
<body>
	<%
		String userID = null;
	
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		if(userID !=  null){

			PrintWriter script = response.getWriter();

			script.println("<script>");
			
			script.println("alert('로그인이 되어 있습니다.')");

			script.println("location.href = './product/index.html'");

			script.println("</script>");

		}
		%>
	<nav class="navbar navbar-default">
		<!-- 네비게이션 -->
		<div class="navbar-header">
			<!-- 네비게이션 상단 부분 -->
			<!-- 네비게이션 상단 박스 영역 -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<!-- 이 삼줄 버튼은 화면이 좁아지면 우측에 나타난다 -->
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- 상단 바에 제목이 나타나고 클릭하면 main 페이지로 이동한다 -->
			<a class="navbar-brand" href="./product/index.html">Man Cline</a>
		</div>
		<!-- 게시판 제목 이름 옆에 나타나는 메뉴 영역 -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="join.jsp">회원가입</a></li>
				
			</ul>
			<!-- 헤더 우측에 나타나는 드랍다운 영역 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a> <!-- 드랍다운 아이템 영역 -->
					<ul class="dropdown-menu">
						<li class="active"><a href="http://localhost:8080/login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>
	<!-- 로그인 양식 -->
	<div class="container">
		<!-- 하나의 영역 생성 -->
		<div class="col-lg-4">
			<!-- 영역 크기 -->
			<!-- 점보트론은 특정 컨텐츠, 정보를 두드러지게 하기 위한 큰 박스 -->
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align: center;">로그인 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디"
							name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="userPassword" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control"
						value="로그인">
				</form>
			</div>
		</div>
	</div>
 
</script>

	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>