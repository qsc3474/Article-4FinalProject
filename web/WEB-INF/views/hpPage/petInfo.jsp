<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">

	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	<div id="main_content">

			<!-- title -->
		<section class="step-title">
			<div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
				<h2>동물정보상식</h2>
			</div>
		</section>
		<!--/ title -->
		
		<!-- petInfo -->
        <section id="PetTravel" class="pt-null bg-white">
			<div class="container">
				<div class="blog-items">
					<div class="row">
						<div class="col-md-4">
							<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
								<div class="blog-thumb">
									<img src="${ pageContext.servletContext.contextPath }/resources/media/img/travelInfo.jpg" alt="Blog thumb">
									<div class="blog-overlay"></div>
								</div>
								<div class="blog-content">
									<ul class="post-meta">
										<li>2021-01-13 09:21:20</li>
									</ul>
									<h3>반려견과 떠나는 여행</h3>
									<p>
                                        사랑하는 반려동물과 함께 떠나는 여행!<br>
										무엇을 준비해야 할까요?
									</p>
									<a href="${ pageContext.servletContext.contextPath }/hp/petInfoDetail#TravelInfo" class="read-more-btn">Read More</a>
								</div>
							</div>
						</div>
                        <div class="col-md-4">
							<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
								<div class="blog-thumb">
									<img src="${ pageContext.servletContext.contextPath }/resources/media/img/foodInfo.jpg" alt="Blog thumb">
									<div class="blog-overlay"></div>
								</div>
								<div class="blog-content">
									<ul class="post-meta">
										<li>2021-01-13 09:21:20</li>
									</ul>
									<h3>반려동물에게 좋은 음식</h3>
									<p>
                                        사람보다 나이를 빠르게 먹는 반려동물 어떤 음식을 급여하면 좋을까요?
									</p>
									<a href="${ pageContext.servletContext.contextPath }/hp/petInfoDetail#FoodInfo" class="read-more-btn">Read More</a>
								</div>
							</div>
						</div>
                        <div class="col-md-4">
							<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
									<div class="blog-thumb">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat01.jpg" alt="Blog thumb">
										<div class="blog-overlay"></div>
									</div>
								<div class="blog-content">
									<ul class="post-meta">
										<li>2021-01-13 09:21:20</li>
									</ul>
									<h3>고양이 구토의 원인, 헤어볼</h3>
									<p>사람보다 나이를 빠르게 먹는 반려동물 어떤 음식을 급여하면 좋을까요?</p>
									<a href="${ pageContext.servletContext.contextPath }/hp/petInfoDetail#HairBall" class="read-more-btn">Read More</a>
								</div>
							</div>
						</div>
                        <div class="col-md-4">
							<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
									<div class="blog-thumb">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog47.jpg" alt="Blog thumb">
										<div class="blog-overlay"></div>
									</div>
								<div class="blog-content">
									<ul class="post-meta">
										<li>2021-01-13 09:21:20</li>
									</ul>
									<h3>반려동물의 올바른 코 상태</h3>
									<p>
                                        최상의 상태는 무엇일까? 반려동물의 코
									</p>
									<a href="${ pageContext.servletContext.contextPath }/hp/petInfoDetail#NoseInfo" class="read-more-btn">Read More</a>
								</div>
							</div>
						</div>
                        <div class="col-md-4">
							<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
									<div class="blog-thumb">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/dogs02.jpg" alt="Blog thumb">
										<div class="blog-overlay"></div>
									</div>
								<div class="blog-content">
									<ul class="post-meta">
										<li>2021-01-13 09:21:20</li>
									</ul>
									<h3>삼킨 초콜릿의 종류, 양 파악</h3>
									<p>
                                        미리 알아두면 좋은 상식 반려동물에게 초콜릿이란?
									</p>
									<a href="${ pageContext.servletContext.contextPath }/hp/petInfoDetail#ChocoInfo" class="read-more-btn">Read More</a>
								</div>
							</div>
						</div>
                        <div class="col-md-4">
							<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
									<div class="blog-thumb">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/adoption.jpg" alt="Blog thumb">
										<div class="blog-overlay"></div>
									</div>
								<div class="blog-content">
									<ul class="post-meta">
										<li>2021-01-13 09:21:20</li>
									</ul>
									<h3>사지말고 입양하세요</h3>
									<p>
                                        입양하기 전, 한 번 더 생각해주세요.유기견 입양
									</p>
									<a href="${ pageContext.servletContext.contextPath }/hp/petInfoDetail#AdoptionInfo" class="read-more-btn">Read More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- /petInfo -->
			
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>