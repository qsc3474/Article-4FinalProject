<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔메인페이지</title>
<style>
#service-box, #mainSec {
	padding-bottom: 100px;
}

.feature-box-one {
	border: 0;
	background: #fff;
}

.feature-box-one:hover {
	box-shadow: 0 10px 20px rgb(0 0 0/ 7%);
	-ms-transform: translateY(-3px);
	transform: translateY(-3px);
	background: #FFF;
}

.gp-btn.small {
	padding: 3px 25px;
	margin-top: 20px;
}

.blog-post .blog-thumb .date {
	width: 80px;
	height: 80px;
	background: #a0c3d2;
}

.date:hover {
	box-shadow: 0 10px 20px rgb(0 0 0/ 7%);
	-ms-transform: translateY(-3px);
	transform: translateY(-3px);
	background: #FFF;
}

</style>
</head>
<body id="home-version-1"
	class="home-version-1 sticky-header transparent-header menu-two"
	data-style="default">

	<jsp:include page="/WEB-INF/views/hotel/common/header.jsp"></jsp:include>

	<div id="main_content">

		<!-- main banner -->
		<section id="htmain-sec">
			<div class="fullscreen-container" data-source="gallery">
				<div class="dog">
					<div class="dog-body">
						<div class="dog-tail">
							<div class="dog-tail">
								<div class="dog-tail">
									<div class="dog-tail">
										<div class="dog-tail">
											<div class="dog-tail">
												<div class="dog-tail">
													<div class="dog-tail"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="dog-head">
						<div class="dog-ears">
							<div class="dog-ear"></div>
							<div class="dog-ear"></div>
						</div>
						<div class="dog-eyes">
							<div class="dog-eye"></div>
							<div class="dog-eye"></div>
						</div>
						<div class="dog-muzzle"></div>
					</div>
				</div>
			</div>
			<div id="con"></div>
		</section>

		<!-- 패키지 -->
		<section id="event-box" class="service-sec bg-white pt-null">
			<div class="container">
				<div class="section-title ht-title text-center wow fadeIn"
					data-wow-duration="1000ms" data-wow-delay="0.3s">
					<h2>EVENTS &amp; PACKAGE</h2>
					<p>소중한 내 pet의 특별한 날, 개편한세상과 함께 하세요!</p>
				</div>

				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="feature-box-one wow fadeInUp" data-wow-delay="0.2s">
							<p>
								<i><img
									src="${ pageContext.servletContext.contextPath }/resources/media/img/dog11.jpg"
									alt="dog" style="width: 100%; height: 220px;"></i>
							</p>
							<span class="package">Package</span>
							<h3 style="margin-top: 10px;">
								Happy Birthday<br>To My Pet
							</h3>
							<p>반려동물 생일파티 패키지 출시</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="feature-box-one wow fadeInUp" data-wow-delay="0.2s">
							<p>
								<i><img
									src="${ pageContext.servletContext.contextPath }/resources/media/img/dog34.jpg"
									alt="dog" style="width: 100%; height: 220px;"></i>
							</p>
							<span class="package">Package</span>
							<h3 style="margin-top: 10px;">
								Pet Photo <br>Studio
							</h3>
							<p>반려동물 STUDIO 패키지 출시</p>
						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="feature-box-one wow fadeInUp" data-wow-delay="0.2s">
							<p>
								<i><img
									src="${ pageContext.servletContext.contextPath }/resources/media/img/doctor02.jpg"
									alt="dog" style="width: 100%; height: 220px;"></i>
							</p>
							<span class="package">Package</span>
							<h3 style="margin-top: 10px;">
								Healthy <br> Healing Retreat
							</h3>
							<p>우리 소중한 pet의 건강패키지</p>
						</div>
					</div>
				</div>
				<div class="cta-btncontainer-two mt">
					<a href="${ pageContext.servletContext.contextPath }/ht/package"
						class="gp-btn btn-dark large btn-bradius">전체보기</a>
				</div>
			</div>
			<!-- /.container -->
		</section>
		<!-- 패키지 -->

		<!-- 서비스1 -->
		<section id="service-box" class="bg-light pt-null">
			<div class="container">
				<div class="section-title ht-title text-center wow fadeIn"
					data-wow-duration="1000ms" data-wow-delay="0.3s">
					<h2>HOTEL SERVICE</h2>
				</div>
				<div class="row">
					<div class="col-md-3 col-sm-6">
						<div class="feature-box-one wow fadeInUp" data-wow-delay="0.2s">
							<p style="padding-bottom: 10px;">
								<i><img
									src="${ pageContext.servletContext.contextPath }/resources/media/img/beauty02.jpg"
									alt="dog" style="width: 100%; height: auto;"></i>
							</p>
							<span class="package">SERVICE</span>
							<h3 style="margin-top: 10px;">Pet Beauty</h3>
						</div>
					</div>

					<div class="col-md-3 col-sm-6">
						<div class="feature-box-one wow fadeInUp" data-wow-delay="0.2s">
							<p style="padding-bottom: 10px;">
								<i><img
									src="${ pageContext.servletContext.contextPath }/resources/media/img/hospital.jpg"
									alt="dog" style="width: 100%; height: auto;"></i>
							</p>
							<span class="package">SERVICE</span>
							<h3 style="margin-top: 10px;">Pet Hospital</h3>
						</div>
					</div>

					<div class="col-md-3 col-sm-6">
						<div class="feature-box-one wow fadeInUp" data-wow-delay="0.2s">
							<p style="padding-bottom: 10px;">
								<i><img
									src="${ pageContext.servletContext.contextPath }/resources/media/img/school.jpg"
									alt="dog" style="width: 100%; height: auto;"></i>
							</p>
							<span class="package">SERVICE</span>
							<h3 style="margin-top: 10px;">Pet School</h3>
						</div>
					</div>

					<div class="col-md-3 col-sm-6">
						<div class="feature-box-one wow fadeInUp" data-wow-delay="0.2s">
							<p style="padding-bottom: 10px;">
								<i><img
									src="${ pageContext.servletContext.contextPath }/resources/media/img/foamy.jpg"
									alt="dog" style="width: 100%; height: auto;"></i>
							</p>
							<span class="package">SERVICE</span>
							<h3 style="margin-top: 10px;">Pet Foamy</h3>
						</div>
					</div>
				</div>
				<div class="cta-btncontainer-two mt">
					<a href="${ pageContext.servletContext.contextPath }/ht/service" class="gp-btn btn-dark large btn-bradius">전체보기</a>
				</div>
			</div>
			<!-- /.container -->
		</section>
		<!-- 패키지 -->

		<!-- banner -->
		<section id="call-to-action-two">
			<div class="container">
				<div class="cta-text-two">
					<h3>이벤트 보러가기</h3>
					<p>개편한세상 병원은 개편한 호텔과 함께 운영 되고 있습니다.</p>
				</div>
				<div class="cta-btncontainer-two">
					<a href="event.html" target="_self" title=""
						class="gp-btn btn-dark medium btn-bradius">이벤트 보러가기</a>
				</div>
			</div>
		</section>
		<!-- banner -->

		<!-- 병원banner -->
		<section id="about-three"
			data-bg-image="${ pageContext.servletContext.contextPath }/resources/media/background/2.jpg"
			style="background-image: url(&quot;media/background/2.jpg&quot;); padding: 150px 0 150px;"
			class="mt-null ">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="about-details-three">
							<div class="section-title ht-title text-left">
								<h2 style="color: #FDC647;">개편한세상병원</h2>
								<p>고객과 소통하는 동물병원 최고의 수의사들로 운영되는 ‘개편한세상 동물병원’은 건강검진, 예방접종, 기본
									검진뿐만 아니라 수술보다는 재활을 통한 자연 치유를 위한 병원 국내 유일의 펫 보행 분석기와 펫 전용 수중
									트레드밀을 구비하는 등 고차원적인 동물 의료 서비스를 제공합니다.</p>
							</div>
							<a href="${ pageContext.servletContext.contextPath }" target="_self" class="gp-btn color-two medium btn-bradius">병원 보러가기</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="ab-three-thumb">
							<img
								src="${ pageContext.servletContext.contextPath }/resources/media/img/puppy01.jpg"
								alt="thumb" class="wow fadeIn"> <img
								src="${ pageContext.servletContext.contextPath }/resources/media/img/sub-service-hospital.jpg"
								alt="thumb" class="wow fadeIn" data-wow-delay="0.8s">
						</div>

					</div>
				</div>
			</div>
			<!-- /.container -->
		</section>
		<!-- 병원banner -->

		<!-- 공지사항 가기 -->
		<section id="mainSec" class="sec1 bg-white mt-null">
			<div class="container">
				<div class="section-title ht-title text-center wow fadeIn"
					data-wow-duration="1000ms" data-wow-delay="0.3s">
					<h2>게시판</h2>
				</div>
				<div class="blog-items">
					<div class="row row-post ">
						<div class="col-md-6">
							<div class="blog-post wow fadeInRight" data-wow-delay="0.9s">
								<div class="blog-thumb">
									<a href="reservation.html"> <img
										src="${ pageContext.servletContext.contextPath }/resources/media/img/puppy05.jpg"
										alt="Blog thumb">
									</a> <a href="review.html" class="date">후기<br>게시판
									</a>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="blog-post wow fadeInRight" data-wow-delay="0.9s">
								<div class="blog-thumb">
									<a href="reservation.html"> <img
										src="${ pageContext.servletContext.contextPath }/resources/media/img/party01.jpg"
										alt="Blog thumb">
									</a> <a href="gallery-notice.html" class="date">갤러리 게시판</a>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="blog-post wow fadeInRight" data-wow-delay="0.9s">
								<div class="blog-thumb">
									<a href="${ pageContext.servletContext.contextPath }/ht/NTC/notice/list"> <img
										src="${ pageContext.servletContext.contextPath }/resources/media/img/dog.jpeg"
										alt="Blog thumb">
									</a> <a href="${ pageContext.servletContext.contextPath }/ht/NTC/notice/list" class="date">공지<br>사항
									</a>
								</div>

							</div>
						</div>
						<div class="col-md-3">
							<div class="blog-post wow fadeInRight" data-wow-delay="0.9s">

								<div class="blog-thumb">
									<a href="team.html"> <img
										src="${ pageContext.servletContext.contextPath }/resources/media/img/cat11.jpg"
										alt="Blog thumb">
									</a> <a href="pet-info.html" class="date">동물<br>정보
									</a>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="blog-post wow fadeInUp list-hover"
								data-wow-delay="0.5s">
								<div class="blog-thumb inner" style="float: right;">
									<a href="${ pageContext.servletContext.contextPath }/ht/QNA/list"> <img
										src="${ pageContext.servletContext.contextPath }/resources/media/img/cat09.jpg"
										alt="Blog thumb">
									</a> <a href="${ pageContext.servletContext.contextPath }/ht/QNA/list" class="date">Q&amp;A</a>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="blog-post wow fadeInUp list-hover"
								data-wow-delay="0.5s">
								<div class="blog-thumb inner" style="float: right;">
									<a href="${ pageContext.servletContext.contextPath }/ht/FAQ/lis"> <img
										src="${ pageContext.servletContext.contextPath }/resources/media/img/dog09.jpg"
										alt="Blog thumb">
									</a> <a href="${ pageContext.servletContext.contextPath }/ht/FAQ/lis" class="date">FAQ</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 공지사항 가기 -->

		<!-- 오시는길 -->
		<section id="contact-two" class="bg-light contact-sec"
			style="padding: 0;">
			<div class="container-full">
				<div class="row">
					<div class="col-md-3">
						<div class="content mt text-center">
							<h2 class="pb">오시는길</h2>
							<p>
								<span style="color: green; font-weight: bold;">[2호선]</span><span
									style="color: #c61b33; font-weight: bold;">[신분당선]</span> <br>
								강남역 10번 출구 200m 직진
							</p>
							<p>
								<span style="color: #bc9e4a; font-weight: bold;">[9호선]</span> <br>
								신논현역 6번출구 100m 직진 CHICOR빌딩 4F.5F
							</p>
						</div>
					</div>
					<div class="col-md-3">
						<div class="content text-center info">
							<h2 class="pb">이용시간</h2>
							<p>
								<span><img
									src="${ pageContext.servletContext.contextPath }/resources/media/img/check-in.png"
									alt="" style="width: 15%;"></span> 체크인 15:00
							</p>
							<p>
								<span><img
									src="${ pageContext.servletContext.contextPath }/resources/media/img/check-out.png"
									alt="" style="width: 15%;"></span> 체크아웃 11:00
							</p>
							<p>
								<span><img
									src="${ pageContext.servletContext.contextPath }/resources/media/img/24-hours-phone-service.png"
									alt="" style="width: 15%;"></span>
							</p>
						</div>
					</div>
					<div class="col-md-3">
						<div class="map-box" style="width: 100%;">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.2635470377377!2d127.02307125090698!3d37.50170183549705!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca15a0c163d41%3A0xfac759224c6bc427!2z642U7KGw7J2A7Lu07ZOo7YSw7JWE7Lm0642w66-4!5e0!3m2!1sko!2skr!4v1617897326449!5m2!1sko!2skr"
								width="100%" height="400px" style="border: 0;" loading="lazy"></iframe>
						</div>
					</div>
					<div class="col-md-3">
						<div class="content mt text-center">
							<img
								src="${ pageContext.servletContext.contextPath }/resources/media/img/golden-retriever.png"
								alt="logo"
								style="width: 150px; height: 150px; float: left; margin-left: 110px;">
							<p
								style="font-size: 50px; font-weight: bold; padding-top: 10px; line-height: 60px; margin-top: 20px; display: inline-block; margin-left: -120px;">
								편한<br> 세상
							</p>
						</div>
					</div>
				</div>
			</div>
			<!-- /.container -->
		</section>
		<!-- 오시는길 -->

		<!-- sideMenu -->
		<section id="quickMenu" style="padding: 0;">
			<nav class="side-menu">
				<ul>
					<li><a href="${ pageContext.servletContext.contextPath }/ht/room/insert" class="quick">호텔예약</a><span><i class="glyphicon glyphicon-calendar"></i></span></li>
					<li><a href="${ pageContext.servletContext.contextPath }/ht/package" class="quick">호텔패키지</a><span><i class="glyphicon glyphicon-th"></i></span></li>
					<li><a href="${ pageContext.servletContext.contextPath }/ht/service" class="quick">호텔서비스</a><span><i class="glyphicon glyphicon-check"></i></span></li>
					<li><a href="${ pageContext.servletContext.contextPath }/ht/NTC/notice/list" class="quick">공지사항</a><span><i class="glyphicon glyphicon-pencil"></i></span></li>
				</ul>
			</nav>
		</section>
		<!-- quickMenu -->
	</div>
	<script>
		window.onload = function() {
			var con = document.getElementById("con");

			var cW = con.offsetWidth;
			var cH = con.offsetHeight;
			var gravity = 2.55;
			var lifespan1 = 100;
			var lifespan2 = 150;
			var ground = .3 * cH;
			var startX;
			var r = 38;
			var speedX;
			var speedYDown = 3;
			var speedYUp = 15;
			var fontSize = 25;
			if (cW > 500) {
				startX = 0.25 * cW;
				speedX = 0.005 * cW;
			} else {
				startX = 0.15 * cW;
				speedX = 0.007 * cW;
			}

			// Ball object
			var Ball = function(sLetter, index) {
				this.sLetter = sLetter;
				this.node;
				this.x = startX;
				this.y = ground - 50;
				this.index = index;
				this.r = r;
				this.jumpN = 0;
				this.speedY = speedYDown;
				this.speedX = speedX;
				this.opa = 1;
				this.create();
			}

			Ball.prototype = {
				create : function() {
					this.node = document.createElement("div");
					this.node.className = "ball";
					this.node.style.width = this.r + "px";
					this.node.style.height = this.r + "px";
					this.node.style.left = this.x + "px";
					this.node.style.top = this.y + "px";
					this.node.innerHTML = this.sLetter;
					con.appendChild(this.node);
					this.node.style.fontSize = fontSize + "px";
				},
				move : function() {
					this.y += this.speedY;
					this.x += this.speedX;

				},
				display : function() {
					this.node.style.top = this.y / cH * 160 + "%";
					this.node.style.left = this.x / cW * 110 + "%";
				}
			}

			// TextBall object
			var TextBalls = function(sText) {
				this.sText = sText + " ";
				this.n = sText.length + 1;
				this.balls = [];
				this.timeIntv = null;
				this.life = 0;
				this.createBalls();

			}
			TextBalls.prototype = {
				createBalls : function() {
					for (var i = 0; i < this.n; i++) {
						var ball = new Ball(this.sText[i], i);
						this.balls.push(ball);
					}
					this.balls[this.n - 1].node.className = "cover";
					this.balls[this.n - 1].xTarget = cW;
				},

				move : function() {
					var thisObj = this;
					this.timeIntv = setInterval(
							function() {
								thisObj.life++;
								if (thisObj.life < lifespan2) {
									for (var i = 0; i < thisObj.n; i++) {
										var ball = thisObj.balls[i];
										if (ball.y < ground) {
											ball.speedY += gravity;
										} else {
											ball.y = ground;
											if (ball.jumpN < i
													|| i == thisObj.n - 1) {
												ball.jumpN++;
												ball.speedY = -speedYUp;
											} else {
												ball.speedY = 0;
												ball.speedX = 0;
											}
										}

										ball.move();
										ball.display();
									}
									if (thisObj.life > lifespan1) {
										var coverB1 = thisObj.balls[thisObj.n - 1];
										coverB1.opa = coverB1.opa > 0 ? coverB1.opa - 0.025
												: 0;
										coverB1.node.style.opacity = coverB1.opa;
									}
								} else {
									clearInterval(thisObj.timeIntv);
								}

							}, 50);
				}
			}

			var tb = new TextBalls("개편한세상호텔");
			tb.move();

		}
	</script>

	<!-- script -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>