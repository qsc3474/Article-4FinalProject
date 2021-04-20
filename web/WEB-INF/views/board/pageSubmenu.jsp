<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!--폰트어썸 웹 아이콘-->
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet" href="/creation/resources/css/common2.css">

<style>
	.active{background-color: #fff !important;}
	.active:hover {background-color: #FFCD00 !important; color:#fff !important;}

</style>
</head>
<body class="bg-white">
	<div class="col-lg-2">
		<aside class="page-submenu">
			<ul>
				<li><a
					href="${ pageContext.servletContext.contextPath }/hp/notice/select/list"
					class="active"> <span>공지사항</span> <i
						class="fas fa-chevron-right"></i>
				</a></li>
				<li><a
					href="${ pageContext.servletContext.contextPath }/hp/faq/select/list"
					class="active"> <span>자주 묻는 질문</span> <i
						class="fas fa-chevron-right"></i>
				</a></li>
				<li><a
					href="${ pageContext.servletContext.contextPath }/hp/info/select/list"
					class="active"> <span>정보게시판</span> <i
						class="fas fa-chevron-right"></i>
				</a></li>
				<li><a
					href="${ pageContext.servletContext.contextPath }/hp/qna/select/list"
					class="active"> <span>Q&amp;A</span> <i
						class="fas fa-chevron-right"></i>
				</a></li>
				<li><a
					href="${ pageContext.servletContext.contextPath }/hp/review/select/list"
					class="active"> <span>사용후기</span> <i
						class="fas fa-chevron-right"></i>
				</a></li>
			</ul>
		</aside>
	</div>
</body>
</html>