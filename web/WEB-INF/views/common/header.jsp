<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index</title>

<link rel="apple-touch-icon" sizes="180x180" href="${ pageContext.servletContext.contextPath }/resources/assets/img/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="16x16" href="${ pageContext.servletContext.contextPath }/resources/assets/img/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="32x32" href="${ pageContext.servletContext.contextPath }/resources/assets/img/favicon-32x32.png">

<link rel="apple-touch-icon" sizes="180x180"
	href="${ pageContext.servletContext.contextPath }/resources/assets/img/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="${ pageContext.servletContext.contextPath }/resources/assets/img/favicon.png">
<!-- Dependency Styles -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/font-awesome/css/gp-icons.css" type="text/css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/gp-icons/style.css" type="text/css">
<!-- <link rel="stylesheet" href="dependencies/etlinefont-bower/style.css" type="text/css"> -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap-star-rating/css/star-rating.min.css" type="text/css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/swiper/css/swiper.min.css" type="text/css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/wow/animate.css" type="text/css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery-ui/css/jquery-ui.css" type="text/css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/css/settings.css" type="text/css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/magnific-popup/magnific-popup.css" type="text/css">
<!-- Site Stylesheet -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/css/app.css" type="text/css">
<script src="/creation/resources/js/event.js"></script>
</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">

	<!-- header -->
	<header id="discohead" class="dt-header fixed">
		<div class="menu-wrap">
			<a id="logo" href="${ pageContext.servletContext.contextPath }">
				<img
				src="${ pageContext.servletContext.contextPath }/resources/media/img/logo.png"
				alt="discovery" class="logo-contrast"> <img
				src="${ pageContext.servletContext.contextPath }/resources/media/img/logo.png"
				alt="discovery" class="logo-normal">
			</a>
			<div id="discovery-main-menu" class="discovery-main-menu">
				<ul id="menu-home" class="menu">
					<li class="menu-item-has-children"><a href="about.html">병원소개</a>
						<ul class="sub-menu">
							<li><a href="${ pageContext.servletContext.contextPath }/hp/about" >병원소개</a></li>
							<li><a href="${ pageContext.servletContext.contextPath }/hp/about#Introduce">의료진소개</a></li>
							<li><a href="${ pageContext.servletContext.contextPath }/hp/about#Facility">시설소개</a></li>
						</ul></li>
					<li class="menu-item-has-children"><a href="mg.html">진료과목</a>
						<ul class="sub-menu">
							<li><a href="${ pageContext.servletContext.contextPath }/hp/mg">내과</a></li>
							<li><a href="${ pageContext.servletContext.contextPath }/hp/gs">외과</a></li>
							<li><a href="${ pageContext.servletContext.contextPath }/hp/ey">안과</a></li>
							<li><a href="${ pageContext.servletContext.contextPath }/hp/dental">치과</a></li>
						</ul></li>
					<li><a href="${ pageContext.servletContext.contextPath }/hp/info/price">진료가격</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/hp/book/insert">예약하기</a></li>
					<li class="menu-item-has-children"><a href="notice.html">커뮤니티</a>
						<ul class="sub-menu">
							<li><a
								href="${ pageContext.servletContext.contextPath }/hp/notice/select/list">공지사항</a></li>
							<li><a href="notice.html">병원소식</a></li>
							<li><a
								href="${ pageContext.servletContext.contextPath }/hp/faq/select/list">블로그</a></li>
							<li><a
								href="${ pageContext.servletContext.contextPath }/ht/NTC/notice/list">오시는길</a></li>
						</ul></li>
				</ul>
				<c:if test="${ empty sessionScope.loginMember }">
					<div class="secondary-navigation pull-right">
						<ul>
							<li><a
								href="${ pageContext.servletContext.contextPath }/member/regist">회원가입</a>
							</li>
							<li><a
								href="${ pageContext.servletContext.contextPath }/member/login">로그인</a></li>
						</ul>
					</div>
				</c:if>
				<c:if test="${ sessionScope.loginMember.kind eq 'C' }">
					<ul>
						<li><c:out value="${ sessionScope.loginMember.name }" />님의
							방문을 환영합니다.</li>
						<li><a
							href="${ pageContext.servletContext.contextPath }/member/logout">로그아웃</a></li>
						<li><a
							href="${ pageContext.servletContext.contextPath }/member/update">마이페이지</a></li>
							<li><a
							href="${ pageContext.servletContext.contextPath }/hp/book/list">예약확인</a></li>
					</ul>
				</c:if>
				<c:if test="${ sessionScope.loginMember.kind eq 'M' }">
					<ul>
						<li><c:out value="${ sessionScope.loginMember.name }" />님의
							방문을 환영합니다.</li>
						<li><a
							href="${ pageContext.servletContext.contextPath }/member/logout">로그아웃</a></li>
						<li><a
							href="${ pageContext.servletContext.contextPath }/admin/book/List">관리자</a></li>
						<li><a
							href="${ pageContext.servletContext.contextPath }/member/update">마이페이지</a></li>
					</ul>
				</c:if>
			</div>
		</div>
	</header>
	<!-- header -->


	<!-- Dependency Scripts -->
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery/jquery.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery-ui/jquery-ui.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/imagesloaded/imagesloaded.pkgd.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/swiper/js/swiper.jquery.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/swiperRunner/js/swiperRunner.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/magnific-popup/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery.appear.bas2k/jquery.appear.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/jquery.themepunch.revolution.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery.parallax-scroll/jquery.parallax-scroll.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/wow/js/wow.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery.spinner/js/jquery.spinner.min.js"></script>
	<!--<script src="${ pageContext.servletContext.contextPath }/resources/dependencies/gmap3/gmap3.min.js"></script> -->
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap-star-rating/js/star-rating.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/isotope/isotope.pkgd.min.js"></script>

	<!-- Revolution Slider Plugin -->

	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.actions.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.navigation.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.parallax.min.js"></script>
	<!-- Site Scripts -->
	<script
		src="${ pageContext.servletContext.contextPath }/resources/assets/js/smooth_scroll.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/assets/js/app.js"></script>

</body>

</html>