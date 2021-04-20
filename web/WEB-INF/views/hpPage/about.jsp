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
			
			<!-- 병원소개 -->
		<section id="about" class="bg-white">
			<div class="container">
				<div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
					<h2>병원 소개</h2>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratitwo aspernatur voluptate <br>pariatur, fugiat animi, inventore atque sed, nam provident impedit quod
					</p>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
							<img src="${ pageContext.servletContext.contextPath }/resources/media/img/doctor02.jpg">
						</div>
					</div>

					<div class="col-md-6">
						<div class="about-details">
							<h3 class="about-title wow fadeInUp" data-wow-delay="0.5s">PET Hospital</h3>
							<p class="wow fadeInUp" data-wow-delay="0.7s">
								외과 재활 수의사, ISFM(국제고양이의학협회)수의사 등 업계 최고들이 모였습니다. 반려동물 예방접종, 건강검진 및 내/외과적인 치료를 하고 있으며,
								수술보다는 재활을 통한 치료를 지향하고, 펫 보행 분석기와 펫 전용 수중 트레드밀 등 고차원적인 의료 서비스를 제공합니다.
							</p>

							<p class="wow fadeInUp" data-wow-delay="0.9s">
								보호자와의 소통을 통해 반려동물의 상태를 꼼꼼히 살피고, <br>
								세심한 진료를 바탕으로 사전에 질병을 예방합니다.
								반려동물의 오랫동안 건강한 삶을 위한 의료 서비스를 제공하겠습니다.
							</p>

							<ul class="about-feature wow fadeInUp" data-wow-delay="1.1s">
								<li>최고의 시설</li>
								<li>최고의 의료진</li>
								<li>최고의 서비스</li>
								<li>최고의 편안함</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- /병원소개 -->

		<!-- 의료진소개 -->
		<section id="Introduce" class="bg-light">
			<div class="style-one">
				<div class="container">
					<div class="section-title text-center wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
						<h2>의료진 소개</h2>
					</div>
					<div class="row">
						<div class="col-md-3">
							<div class="team-member wow fadeInRight" data-wow-delay="0.5s">
								<div class="member-thumb">
									<img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog15.jpg" alt="profile Pic">
								</div>
								<div class="team-details">
									<h4 class="name">전인애</h4>
									<span class="position">내과전문의</span>

									<p>
										개편한세상 동물병원 내과 과장
									</p>
								</div>
							</div>
							<!-- /.team-member -->
						</div>
						<div class="col-md-3">
							<div class="team-member wow fadeInRight" data-wow-delay="0.5s">
								<div class="member-thumb">
									<img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog15.jpg" alt="profile Pic">
								</div>
								<div class="team-details">
									<h4 class="name">전인애</h4>
									<span class="position">내과전문의</span>

									<p>
										개편한세상 동물병원 내과 과장
									</p>
								</div>
							</div>
							<!-- /.team-member -->
						</div>
						<div class="col-md-3">
							<div class="team-member wow fadeInRight" data-wow-delay="0.5s">
								<div class="member-thumb">
									<img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog15.jpg" alt="profile Pic">
								</div>
								<div class="team-details">
									<h4 class="name">전인애</h4>
									<span class="position">내과전문의</span>

									<p>
										개편한세상 동물병원 내과 과장
									</p>
								</div>
							</div>
							<!-- /.team-member -->
						</div>
						<div class="col-md-3">
							<div class="team-member wow fadeInRight" data-wow-delay="0.5s">
								<div class="member-thumb">
									<img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog15.jpg" alt="profile Pic">
								</div>
								<div class="team-details">
									<h4 class="name">전인애</h4>
									<span class="position">내과전문의</span>

									<p>
										개편한세상 동물병원 내과 과장
									</p>
								</div>
							</div>
							<!-- /.team-member -->
						</div>

					</div>
					<!-- /.row -->
				</div>
				<!-- /.container -->
			</div>
			<!-- /.style-one -->

		</section>
		<!-- /의료진소개 -->

		<!-- 병원시설 -->
		<section id=Facility class="bg-white">
			<div class="container">
				<div class="section-title text-center wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
					<h2>병원시설</h2>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<ul class="gp-isotope-filter greadient">
							<li class="current">
								<a href="#" data-filter="*">all</a>
							</li>
							<li>
								<a href="#" data-filter=".design">입원실</a>
							</li>
							<li>
								<a href="#" data-filter=".branding">재할치료실</a>
							</li>
							<li>
								<a href="#" data-filter=".ui">처치실</a>
							</li>
							<li>
								<a href="#" data-filter=".logo">MRI</a>
							</li>
						</ul>
						<div class="gp-isotope gp-isotope-1 wow fadeInUp" data-wow-delay="0.8s">
							<ul class="gp-portfolio-items grid" style="position: relative; height: 898.5px;">
								<li class="grid-sizer"></li>
								<li class="gp-portfolio-item gredient grid-item ui logo branding" style="position: absolute; left: 0%; top: 0px;">
									<div class="gp-isotope-grid__img effect-active">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/puppy01.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item ui design" style="position: absolute; left: 49.9165%; top: 0px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/puppy02.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item logo" style="position: absolute; left: 0%; top: 299px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog15.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item design ui" style="position: absolute; left: 49.9165%; top: 299px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat06.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item design ui" style="position: absolute; left: 0%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/puppy02.jpg" alt="portfolio thumb">
									</div>
								</li>
								<li class="gp-portfolio-item gredient grid-item design" style="position: absolute; left: 49.9165%; top: 599px;">
									<div class="gp-isotope-grid__img">
										<img src="${ pageContext.servletContext.contextPath }/resources/media/img/puppy02.jpg" alt="portfolio thumb">
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 병원시설 -->
	
		<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body >
</html>