<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리게시판</title>

<style>
        .style-two {
            padding: 20px 0 50px 0;
            background: #fff;
        }
        .gp-testimonial-two{background:#F0F0EB;}
        .gp-testimonial-two {padding: 15px;}
        .gp-testmonial-content img {max-height: 200px;}
        .tag {background: #FF8C64; color: #fff; padding: 5px; border-radius: 4px;}
        .name {font-size: 16px;}
        .team-details span{display: block;}
    </style>

</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
		<div id="main_content">
		
			<!-- title -->
			<section class="step-title">
            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>갤러리 게시판</h2>
                <h3 class="underline-magical"><span class="underline--magical"> 베스트게시판</span></h3>
            </div>
        	</section>
			<!-- /title -->
			
	        <!-- 갤러리 베스트 -->
	        <section id="testomonial-element" class="bg-white">
	            <div class="container">
	                <div class="style-two">
	                    <div class="gp-testimonial-wrapper-two">
	                        <div class="swiper-container gp-slider wow fadeInUp swiper-container-horizontal"
	                            data-wow-delay="0.8s"
	                            data-swiper-config="{&quot;loop&quot;: true, &quot;speed&quot;: 700, &quot;autoplay&quot;: 4000, &quot;pagination&quot;:&quot;#testimonial-swiper-pagination-two&quot;,&quot;spaceBetween&quot;: 30, &quot;slidesPerView&quot;: 3, &quot;grabCursor&quot;: true, &quot;paginationClickable&quot;: true}"
	                            style="cursor: grab;">
	                            <div class="swiper-wrapper"
	                                style="transform: translate3d(-1626.67px, 0px, 0px); transition-duration: 0ms;">
	                                <div class="swiper-slide swiper-slide-prev" data-swiper-slide-index="3"
	                                    style="width: 376.667px; margin-right: 30px;">
	                                    <div class="gp-testimonial-two">
	                                        <div class="gp-testmonial-content">
	                                            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/party01.jpg" alt="" style="width: 100%;">
	                                        </div>
	                                        <div class="gp-testimonial-author clearfix">
	                                            <div class="team-details">
	                                                <h3 class="name" style="margin-bottom: 10px;">뽀삐 생일파티</h3>
	                                                <a href="service.html" class="tag">event-room</a>
	                                                <span class="position">2021-01-12</span>
	                                                <p>user1</p>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="swiper-slide swiper-slide-active" data-swiper-slide-index="1"
	                                    style="width: 376.667px; margin-right: 30px;">
	                                    <div class="gp-testimonial-two">
	                                        <div class="gp-testmonial-content">
	                                            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio.jpg" alt="" style="width: 100%;">
	                                        </div>
	                                        <div class="gp-testimonial-author clearfix">
	                                            <div class="team-details">
	                                                <h3 class="name" style="margin-bottom: 10px;">딸기 스튜디오</h3>
	                                                <a href="service.html" class="tag" style="background: #7D6B7D;">event-room</a>
	                                                <span class="position">2021-01-12</span>
	                                                <p>user1</p>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="swiper-slide swiper-slide-next" data-swiper-slide-index="2"
	                                    style="width: 376.667px; margin-right: 30px;">
	                                    <div class="gp-testimonial-two">
	                                        <div class="gp-testmonial-content">
	                                            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/puppy05.jpg" alt="" style="width: 100%;">
	                                        </div>
	                                        <div class="gp-testimonial-author clearfix">
	                                            <div class="team-details">
	                                                <h3 class="name" style="margin-bottom: 10px;">광식이 투숙</h3>
	                                                <a href="service.html" class="tag" style="background: #A3A1A8;">room</a>
	                                                <span class="position">2021-01-12</span>
	                                                <p>user1</p>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	
	                                <div class="swiper-slide" data-swiper-slide-index="3"
	                                    style="width: 376.667px; margin-right: 30px;">
	                                    <div class="gp-testimonial-two">
	                                        <div class="gp-testmonial-content">
	                                            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/hospital.jpg" alt="" style="width: 100%;">
	                                        </div>
	                                        <div class="gp-testimonial-author clearfix">
	                                            <div class="team-details">
	                                                <h3 class="name" style="margin-bottom: 10px;">깐깐이 건강검진</h3>
	                                                <a href="service.html" class="tag" style="background: #3EB595;">Health</a>
	                                                <span class="position">2021-01-12</span>
	                                                <p>user1</p>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="swiper-slide" data-swiper-slide-index="4"
	                                    style="width: 376.667px; margin-right: 30px;">
	                                    <div class="gp-testimonial-two">
	                                        <div class="gp-testmonial-content">
	                                            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/school01.jpg" alt="" style="width: 100%;">
	                                        </div>
	                                        <div class="gp-testimonial-author clearfix">
	                                            <div class="team-details">
	                                                <h3 class="name" style="margin-bottom: 10px;">뽀글이 아카데미</h3>
	                                                <a href="service.html" class="tag">room</a>
	                                                <span class="position">2021-01-12</span>
	                                                <p>user1</p>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	
	                                <div class="swiper-slide" data-swiper-slide-index="5"
	                                    style="width: 376.667px; margin-right: 30px;">
	                                    <div class="gp-testimonial-two">
	                                        <div class="gp-testmonial-content">
	                                            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/beauty.jpg" alt="" style="width: 100%;">
	                                        </div>
	                                        <div class="gp-testimonial-author clearfix">
	                                            <div class="team-details">
	                                                <h3 class="name" style="margin-bottom: 10px;">멍댕이 미용</h3>
	                                                <a href="service.html" class="tag">room</a>
	                                                <span class="position">2021-01-12</span>
	                                                <p>user1</p>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
	                                    data-swiper-slide-index="1" style="width: 376.667px; margin-right: 30px;">
	                                    <div class="gp-testimonial-two">
	                                        <div class="gp-testmonial-content">
	                                            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog24.jpg" alt="" style="width: 100%;">
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next"
	                                    data-swiper-slide-index="2" style="width: 376.667px; margin-right: 30px;">
	                                    <div class="gp-testimonial-two">
	                                        <div class="gp-testmonial-content">
	                                            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog24.jpg" alt="" style="width: 100%;">
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	
	                        <!-- Swiper Pagination -->
	                        <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"
	                            id="testimonial-swiper-pagination-two"><span class="swiper-pagination-bullet"></span><span
	                                class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
	                                class="swiper-pagination-bullet"></span><span
	                                class="swiper-pagination-bullet"></span><span
	                                class="swiper-pagination-bullet"></span><span
	                                class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span>
	                        </div>
	
	                    </div>
	                    <!-- /.gp-testimonial-wrapper -->
	                </div>
	            </div>
	        </section>
	        <!-- /갤러리 베스트 -->
	
	        <!-- 갤러리 -->
	        <section id="Gallery" class="bg-light">
				<div class="container">
	                <h3 class="text-center pb"><span class="underline--magical">갤러리</span></h3>
	                <a href="#" class="gp-btn btn-dark small center cta-btncontainer-two" style="margin-bottom: 5px; width: 80px; float: right;">목록</a>
	                <div class="cf"></div>
					<div class="blog-items">
						<div class="row">
							<div class="col-md-4">
								<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
									<a href="#">
										<div class="blog-thumb">
											<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat01.jpg" alt="Blog thumb">
											<div class="blog-overlay"></div>
										</div>
									</a>
									<div class="blog-content">
										<ul class="post-meta">
											<li><a href="#">2021-01-13 09:21:20</a></li>
										</ul>
										<h3><a href="#">호텔 이용 후기</a></h3>
										<p class="font-16">
	                                        개편한 호텔에 우리 자두 4박 5일 지냈습니다.
										</p>
										<a href="reviewDetail.html" class="read-more-btn">Read More</a>
									</div>
								</div>
							</div>
	                        <div class="col-md-4">
								<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
									<a href="#">
										<div class="blog-thumb">
											<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat01.jpg" alt="Blog thumb">
											<div class="blog-overlay"></div>
										</div>
									</a>
									<div class="blog-content">
										<ul class="post-meta">
											<li><a href="#">2021-01-13 09:21:20</a></li>
										</ul>
										<h3><a href="#">쓸개골 수술</a></h3>
										<p>
	                                        안녕하세요. 루시드 동물 메디컬 센터 입니다.​
										</p>
										<a href="#" class="read-more-btn">Read More</a>
									</div>
								</div>
							</div>
	                        <div class="col-md-4">
								<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
									<a href="#">
										<div class="blog-thumb">
											<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat01.jpg" alt="Blog thumb">
											<div class="blog-overlay"></div>
										</div>
									</a>
									<div class="blog-content">
										<ul class="post-meta">
											<li><a href="#">2021-01-13 09:21:20</a></li>
										</ul>
										<h3><a href="#">호텔 이용 후기</a></h3>
										<p class="font-16">
	                                        개편한 호텔에 우리 자두 4박 5일 지냈습니다.
										</p>
										<a href="reviewDetail.html" class="read-more-btn">Read More</a>
									</div>
								</div>
							</div>
	                        <div class="col-md-4">
								<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
									<a href="#">
										<div class="blog-thumb">
											<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat01.jpg" alt="Blog thumb">
											<div class="blog-overlay"></div>
										</div>
									</a>
									<div class="blog-content">
										<ul class="post-meta">
											<li><a href="#">2021-01-13 09:21:20</a></li>
										</ul>
										<h3><a href="#">호텔 이용 후기</a></h3>
										<p class="font-16">
	                                        개편한 호텔에 우리 자두 4박 5일 지냈습니다.
										</p>
										<a href="reviewDetail.html" class="read-more-btn">Read More</a>
									</div>
								</div>
							</div>
	                        <div class="col-md-4">
								<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
									<a href="#">
										<div class="blog-thumb">
											<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat01.jpg" alt="Blog thumb">
											<div class="blog-overlay"></div>
										</div>
									</a>
									<div class="blog-content">
										<ul class="post-meta">
											<li><a href="#">2021-01-13 09:21:20</a></li>
										</ul>
										<h3><a href="#">호텔 이용 후기</a></h3>
										<p class="font-16">
	                                        개편한 호텔에 우리 자두 4박 5일 지냈습니다.
										</p>
										<a href="reviewDetail.html" class="read-more-btn">Read More</a>
									</div>
								</div>
							</div>
	                        <div class="col-md-4">
								<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
									<a href="#">
										<div class="blog-thumb">
											<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat01.jpg" alt="Blog thumb">
											<div class="blog-overlay"></div>
										</div>
									</a>
									<div class="blog-content">
										<ul class="post-meta">
											<li><a href="#">2021-01-13 09:21:20</a></li>
										</ul>
										<h3><a href="#">호텔 이용 후기</a></h3>
										<p class="font-16">
	                                        개편한 호텔에 우리 자두 4박 5일 지냈습니다.
										</p>
										<a href="reviewDetail.html" class="read-more-btn">Read More</a>
									</div>
								</div>
							</div>
						</div>
					</div>
	                <div class="Page navigation example text-center">
						<ul class="pagination">
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Previous">
									<span aria-hidden="true">«</span>
									<span class="sr-only">Previous</span>
								</a>
							</li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Next">
									<span aria-hidden="true">»</span>
									<span class="sr-only">Next</span>
								</a>
							</li>
						</ul>
					</div>
	                <div class="row col-md-12 col-md-offset-2">
						<div class="col-md-4">
							<select class="form-control" id="exampleFormControlSelect1">
								<option>제목+내용</option>
								<option>제목</option>
								<option>내용</option>
								<option>아이디</option>
								<option>태그</option>
							</select>
						</div>
						<div class="col-md-4">
							<form class="form-inline">
								<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
							</form>
						</div>
					</div>
				</div>
			</section>
	        <!-- 갤러리 -->
		
		</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>