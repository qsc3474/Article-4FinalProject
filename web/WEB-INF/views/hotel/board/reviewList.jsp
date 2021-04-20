<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    table {background: #f2f2f2;}
    table th, table td {text-align: center; vertical-align: middle;}
    .blog-post .blog-content { min-height: 250px; padding: 30px 20px;
}
</style>

</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
		<div id="main_content">
		
		<!-- title -->
        <section class="step-title bg-white">
            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>호텔 이용후기</h2>
                <h3 class="text-center pb"><span class="underline--magical">베스트 후기</span></h3>
            </div>
        </section>
        <!-- /title -->

		<!-- Best Review -->
        <section id="Review" class="bg-white">
			<div class="container">
                <div class="cf"></div>
				<div class="blog-items">
					<div class="row">
						<div class="col-md-3">
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
                                        개편한 호텔에 우리 자두 4박 5일 지냈습니다...
									</p>
									<a href="reviewDetail.html" class="read-more-btn">Read More</a>
								</div>
							</div>
						</div>
                        <div class="col-md-3">
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
                        <div class="col-md-3">
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
                        <div class="col-md-3">
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
			        </div>
                </div>
            </div>        
		</section>
        <!-- /Best Review -->

        <!-- Review List -->
        <section class="bg-light">
			<div class="container">
                <h3 class="text-center pb"><span class="underline--magical">후기게시판 목록</span></h3>
                <a href="reviewDetail.html" class="hotel-btn btn-dark center cta-btncontainer-two" 
                                    style="margin-bottom: 5px; width: 80px; float: right; padding: 5px;">목록</a> 
                <div class="cf"></div>
            <div class="row mb" style="padding: 0 12px;">
                <div class="table-container deco inner-bordered center fc01">
                    <table border="1" class="table table-striped">
                        <colgroup>
                            <col style="width: 10%;">
                            <col>
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                            <tr>
								<th>번호</th>
								<th>사진</th>
								<th>개시자</th>
								<th>제목</th>
								<th>게시날짜</th>
								<th>예약</th>
							</tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog11.jpg" alt="" style="width: 80px; height: 80px;"></td>
								<td>댕댕이주인</td>
								<td>호텔 장이 이용 후기</td>
								<td>2010-01-14</td>
                                <td>
                                    <a href="reviewDetail.html" class="hotel-btn btn-dark center cta-btncontainer-two" 
                                    style="width: 120px; margin: 10px auto;">보러가기</a>    
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog11.jpg" alt="" style="width: 80px; height: 80px;"></td>
								<td>댕댕이주인</td>
								<td>호텔 장이 이용 후기</td>
								<td>2010-01-14</td>
                                <td>
                                    <a href="reviewDetail.html" class="hotel-btn btn-dark center cta-btncontainer-two" 
                                    style="width: 120px; margin: 10px auto;">보러가기</a> 
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog11.jpg" alt="" style="width: 80px; height: 80px;"></td>
								<td>댕댕이주인</td>
								<td>호텔 장이 이용 후기</td>
								<td>2010-01-14</td>
                                <td>
                                    <a href="reviewDetail.html" class="hotel-btn btn-dark center cta-btncontainer-two" 
                                    style="width: 120px; margin: 10px auto;">보러가기</a> 
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog11.jpg" alt="" style="width: 80px; height: 80px;"></td>
								<td>댕댕이주인</td>
								<td>호텔 장이 이용 후기</td>
								<td>2010-01-14</td>
                                <td>
                                    <a href="reviewDetaill.html" class="hotel-btn btn-dark center cta-btncontainer-two" 
                                    style="width: 120px; margin: 10px auto;">보러가기</a> 
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog11.jpg" alt="" style="width: 80px; height: 80px;"></td>
								<td>댕댕이주인</td>
								<td>호텔 장이 이용 후기</td>
								<td>2010-01-14</td>
                                <td>
                                    <a href="reviewDetail.html" class="hotel-btn btn-dark center cta-btncontainer-two" 
                                    style="width: 120px; margin: 10px auto;">보러가기</a> 
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog11.jpg" alt="" style="width: 80px; height: 80px;"></td>
								<td>댕댕이주인</td>
								<td>호텔 장이 이용 후기</td>
								<td>2010-01-14</td>
                                <td>
                                    <a href="reviewDetail.html" class="hotel-btn btn-dark center cta-btncontainer-two" 
                                    style="width: 120px; margin: 10px auto;">보러가기</a> 
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog11.jpg" alt="" style="width: 80px; height: 80px;"></td>
								<td>댕댕이주인</td>
								<td>호텔 장이 이용 후기</td>
								<td>2010-01-14</td>
                                <td>
                                    <a href="reviewDetail.html" class="hotel-btn btn-dark center cta-btncontainer-two" 
                                    style="width: 120px; margin: 10px auto;">보러가기</a> 
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog11.jpg" alt="" style="width: 80px; height: 80px;"></td>
								<td>댕댕이주인</td>
								<td>호텔 장이 이용 후기</td>
								<td>2010-01-14</td>
                                <td>
                                    <a href="reviewDetail.html" class="hotel-btn btn-dark center cta-btncontainer-two" 
                                    style="width: 120px; margin: 10px auto;">보러가기</a> 
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog11.jpg" alt="" style="width: 80px; height: 80px;"></td>
								<td>댕댕이주인</td>
								<td>호텔 장이 이용 후기</td>
								<td>2010-01-14</td>
                                <td>
                                    <a href="reviewDetail.html" class="hotel-btn btn-dark center cta-btncontainer-two" 
                                    style="width: 120px; margin: 10px auto;">보러가기</a> 
                                </td>
                            </tr>
                        </tbody>
                    </table>
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
        <!-- /Review List -->
		
		</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>