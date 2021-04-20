<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotel-about</title>
</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	
	<jsp:include page="/WEB-INF/views/hotel/common/header.jsp"></jsp:include>
	
		<div id="main_content">
			
		<!-- about -->
		<section id="about" class="bg-white">
			<div class="container">
				<div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
					<h2>호텔 소개</h2>
				</div>
				<div class="row mb">
					<div class="col-md-6">
						<div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
							<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat08.jpg">
						</div>
					</div>

					<div class="col-md-6 mt">
						<div class="about-details">
							<h3 class="about-title wow fadeInUp" data-wow-delay="0.5s" style="font-size: 35px;">Hotels</h3>
							<p class="wow fadeInUp" data-wow-delay="0.7s" style="font-size: 18px; line-height: 27px;">
								‘반려동물 동반 객실’은 반려동물의 성향과 행동 동선을 배려하여 보호자와 반려동물 모두가 편안하게 머무를 수 있도록 세심하게 설계되었습니다.
								반려동물의 관절부상을 막기 위한 논슬립 플로어, 반려동물과 더욱 가깝게 교감할 수 있는 낮은 높이의 침대와 툇마루, 냄새를 제거하는
								 배기 시스템 등 안전하고 쾌적한 환경을 조성하는 데 가장 중점을 두었습니다.								 
						</div>
					</div>
				</div>
				<div class="row">					
					<div class="col-md-6 mt">
						<div class="about-details">
							<h3 class="about-title wow fadeInUp" data-wow-delay="0.5s" style="font-size: 35px;">Hospital</h3>
							<p class="wow fadeInUp" data-wow-delay="0.7s" style="font-size: 18px; line-height: 27px;">
								‘소노펫 동물병원’ 은 보호자와의 소통을 통해 반려동물의 상태를 꼼꼼히 살피고, 세심한 진료를 바탕으로 사전에 질병을 예방합니다.
반려동물의 오랫동안 건강한 삶을 위한 의료 서비스를 제공하겠습니다.
							</p>
						</div>
					</div>
					<div class="col-md-6 ">
						<div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
							<img src="${ pageContext.servletContext.contextPath }/resources/media/img/puppy05.jpg">
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- /about -->

		<!-- 갤러리 -->
		<section id="portfolio" class="bg-light" style="padding-bottom: 100px;">
			<div class="container">
				<div class="section-title ht-title text-center wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
					<h2>HOTEL GALLERY</h2>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<ul class="gp-isotope-filter greadient">
							<li class="current">
								<a href="#" data-filter="*">all</a>
							</li>
							<li>
								<a href="#" data-filter=".room">객실</a>
							</li>
							<li>
								<a href="#" data-filter=".event">이벤트룸</a>
							</li>
							<li>
								<a href="#" data-filter=".studio">스튜디오</a>
							</li>
							<li>
								<a href="#" data-filter=".service">서비스</a>
							</li>
						</ul>
						<div class="gp-isotope gp-isotope-1 wow fadeInUp" data-wow-delay="0.8s">
							<ul class="gp-portfolio-items grid" style="position: relative; height: 898.5px;">
								<li class="grid-sizer"></li>
								<li class="gp-portfolio-item gredient grid-item room" style="position: absolute; left: 0%; top: 0px;">
									<div class="gp-isotope-grid__img effect-active">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/room06.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item ui room" style="position: absolute; left: 49.9165%; top: 0px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/room2.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item room" style="position: absolute; left: 0%; top: 299px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/room03.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item room" style="position: absolute; left: 49.9165%; top: 299px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/diamondRoom.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item ui room" style="position: absolute; left: 49.9165%; top: 0px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/bathroom.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item room" style="position: absolute; left: 0%; top: 299px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/room07.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item room" style="position: absolute; left: 49.9165%; top: 299px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/room08.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item room" style="position: absolute; left: 49.9165%; top: 299px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/room05.jpg" alt="portfolio thumb">
									</div>
								</li>
								<!-- room -->
								<!-- event-room -->
								<li class="gp-portfolio-item gredient grid-item event" style="position: absolute; left: 0%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/partyRoom03.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item event" style="position: absolute; left: 49.9165%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/partyRoom06.jpeg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item event" style="position: absolute; left: 0%; top: 0px;">
									<div class="gp-isotope-grid__img effect-active">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/partyRoom05.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item event" style="position: absolute; left: 49.9165%; top: 0px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio03.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item event" style="position: absolute; left: 0%; top: 299px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/party01.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item event" style="position: absolute; left: 49.9165%; top: 299px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/partyRoom02.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item event" style="position: absolute; left: 49.9165%; top: 299px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/party02.jpeg" alt="portfolio thumb">
									</div>
								</li>
								
								<!-- studio -->
								<li class="gp-portfolio-item gredient grid-item studio" style="position: absolute; left: 0%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio05.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item studio" style="position: absolute; left: 49.9165%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio11.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item studio" style="position: absolute; left: 0%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio08.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item studio" style="position: absolute; left: 49.9165%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio21.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item studio" style="position: absolute; left: 0%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio06.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item studio" style="position: absolute; left: 0%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio02.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item studio" style="position: absolute; left: 49.9165%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio09.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item studio" style="position: absolute; left: 49.9165%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/phote.jpg" alt="portfolio thumb">
									</div>
								</li>
								<!-- service -->
								<li class="gp-portfolio-item gredient grid-item service" style="position: absolute; left: 0%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/school.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item service" style="position: absolute; left: 49.9165%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/beauty02.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item service" style="position: absolute; left: 0%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat-with-ball.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item service" style="position: absolute; left: 49.9165%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/sub-service-hospital.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item service" style="position: absolute; left: 0%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/petsalong.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item service" style="position: absolute; left: 49.9165%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/beauty02.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item service" style="position: absolute; left: 0%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/pet-beauty.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item service" style="position: absolute; left: 49.9165%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/hospital.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item service" style="position: absolute; left: 49.9165%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/school-education01.jpg" alt="portfolio thumb">
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 갤러리 -->
		
		</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
</body>
</html>