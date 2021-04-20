<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>개편한 세상- 로그인</title>
</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
	<section class="login-sec">
		<div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
			<h2>로그인</h2>
			<p>
				로그인 후 사용 하실 수 있습니다.
			</p>
		</div>
		<div class="login-box">
			<form id="loginForm" action="${ pageContext.servletContext.contextPath }/member/login"method="post">
				<div class="form-group">
					<label for="exampleInputName1">아이디</label>
					<input type="text" class="form-control" id="memberId" name="memberId" placeholder="아이디입력">
				</div>
				<!-- /.form-group -->
				<div class="form-group">
					<label for="exampleInputEmail1">비밀번호</label>
					<input type="password" class="form-control" id="memberPwd" name="memberPwd" placeholder="영문숫자특수문자포함">
				</div>
				<!-- /.form-group -->
				<div class="form-group">
					<div class="checkbox">
						<label>
							<input type="checkbox">
							<span></span>
							<span class="wrapped-label">아이디 저장</span>
						</label>
						<a href="${ pageContext.servletContext.contextPath }/member/idPwdFind"><span class="pwd_find">&nbsp; 비밀번호찾기</span></a>
						<a href="${ pageContext.servletContext.contextPath }/member/idPwdFind"><span class="pwd_find">아이디찾기&nbsp; | </span></a>
					</div>

				</div>
				<!-- /.form-group -->
				<input type="submit" class="gp-btn btn-primary larg br-null b-null" value="로그인" id="login">
				<a href="sing-up.html" class="gp-btn btn-border larg br-null">회원가입</a>
			</form>
		</div>
	</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>