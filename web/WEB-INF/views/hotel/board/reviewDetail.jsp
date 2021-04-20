<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 추가 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<style>
        .modal-button button {
            outline: none;
			border: 0;
        }

        .close-button {
            transition: all 0.5s ease;
            position: absolute;
            background-color: #000;
            padding: 1.5px 7px;
            left: 0;
            margin-left: -10px;
            margin-top: -9px;
            border-radius: 50%;
            border: 2px solid #fff;
            color: white;
            z-index: 1;
        }

        /* modal */
        #pop-up {
            width: 500px;
        }

        .pop {
            display: none;
            position: fixed;
            top: 20%;
            left: 40%;
            width: 400px;
            height: 300px;
            background: #ffffff;
            background-color: whitesmoke;
            text-align: center;
        }

        .pop h3 {
            text-align: center;
            padding-top: 15px;
            padding-bottom: 15px;
            color: #fff;
            background-color: #FDC647;
        }

        .pop p {
            padding: 20px 65px 20px 65px;
            color: dimgray;
            font-size: 16px;
        }
    </style>

</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
		<div id="main_content">
		
		<!-- 섹션타이틀 -->
		<section class="step-title bg-white">
			<div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
				<h2>후기detail</h2>
			</div>
		</section>
		<!-- 섹션타이틀 -->

		<!-- 이용 후기 -->
		<section class="blog-single bg-white">
			<div class="container">
				<div class="row">
					<h2 class="hide">후기 디테일</h2>
					<p><strong>&#91;호텔후기&#93;</strong> 정말 만족스러웠던 개편한 호텔</p>
					<p>
						<span><i class="glyphicon glyphicon-user"><strong>&nbsp;글쓴이</strong></i></span>
						<span><i class="glyphicon glyphicon glyphicon-time"></i><strong>&nbsp;날짜</strong> :
							2021-04-14(수)02:13</span>
						<span><strong>조회</strong> : 10</span>
					</p>
					<div class="col-md-12" style="margin-bottom: 5px;">
						<div class="col-md-6">
							<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat01.jpg" alt="" style="width: 100%;">
						</div>
						<div class="col-md-6">
							<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat01.jpg" alt="" style="width: 100%;">
						</div>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div id="comments">
						<div class="releted-post">
							<h3 class="related-post-title hide">댓글</h3>
						</div>
						<ul class="commentlist">
							<h5 class="gp-form-heading text-center"> There are 4 comments</h5>
							<li class="comment">
								<div class="clearfix">
									<figure class="avatar-box">
										<img alt="" src="${ pageContext.servletContext.contextPath }/resources/media/img/dog_icon01.png" class="avatar" style="padding-right: 10px;">
									</figure>
									<div class="comment-content">
										<header class="comment-author">
											<div class="author gp-content-title-big">노성준</div>
											<div class="reply modal-button"> 
												<button type="button" class="comment-reply-link btn btn-dark" style="padding: 5px 10px;">
												<i class="fa fa-reply-all"></i>
												<span>댓글작성</span></button>
											</div>
											<div class="entry-meta">
												<i class="fa fa-clock-o"></i> 2021-04-13
											</div>
										</header>
										<div class="ovh">
											<p>
												휴가 때 강아지를 맡길려고 하는데 혹시 따로 DM 보내서 여쭤봐도 될까요?
											</p>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<ul class="children">
									<li class="comment byuser comment-author-melissa-fox odd alt depth-2">
										<div class="clearfix">
											<figure class="avatar-box">
												<img alt="" src="${ pageContext.servletContext.contextPath }/resources/media/img/dog_icon01.png" class="avatar" style="padding-right: 10px;">
											</figure>
											<div class="comment-content">
												<header class="comment-author">
													<div class="author gp-content-title-big">최혁진</div>
													<div class="reply modal-button"> 
														<button type="button" class="comment-reply-link btn btn-dark" style="padding: 5px 10px;">
														<i class="fa fa-reply-all"></i>
														<span>댓글작성</span></button>
													</div>
													<div class="entry-meta">
														<i class="fa fa-clock-o"></i> 2021-04-13
													</div>
												</header>
												<div class="ovh">
													<p>저도 궁금한게 많습니다.</p>
												</div>
												<div class="clear"></div>
											</div>
										</div>
									</li>
								</ul>
							</li>
							<li class="comment">
								<div class="clearfix">
									<figure class="avatar-box">
										<img alt="" src="${ pageContext.servletContext.contextPath }/resources/media/img/dog_icon01.png" class="avatar" style="padding-right: 10px;">
									</figure>
									<div class="comment-content">
										<header class="comment-author">
											<div class="author gp-content-title-big">김성배</div>
											<div class="reply modal-button"> 
												<button type="button" class="comment-reply-link btn btn-dark" style="padding: 5px 10px;">
												<i class="fa fa-reply-all"></i>
												<span>댓글작성</span></button>
											</div>
											<div class="entry-meta"><i class="fa fa-clock-o"></i>2021-04-13</div>
										</header>
										<div class="ovh">
											<p>스파 시설이 있던데...이용 할 만 한가요?</p>
										</div>
										<div class="clear"></div>
										<footer></footer>
									</div>
								</div>
							</li>
							<li class="comment">
								<div class="clearfix">
									<figure class="avatar-box">
										<img alt="" src="${ pageContext.servletContext.contextPath }/resources/media/img/dog_icon01.png" class="avatar" style="padding-right: 10px;">
									</figure>
									<div class="comment-content">
										<header class="comment-author">
											<div class="author gp-content-title-big">전인애</div>
											<div class="reply modal-button"> 
												<button type="button" class="comment-reply-link btn btn-dark" style="padding: 5px 10px;">
												<i class="fa fa-reply-all"></i>
												<span>댓글작성</span></button>
											</div>
											<div class="entry-meta"><i class="fa fa-clock-o"></i>2021-04-13</div>
										</header>
										<div class="ovh">
											<p>개 스파 좋네요 ㅋㅋㅋㅋㅋㅋ</p>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<form action="" style="padding-top: 10px;">
						<div class="form-group">
							<label for="exampleFormControlTextarea1">댓글작성</label>
							<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
						  </div>
						  <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="float: right;">등록</button>
					</form>
				</div>
				<div class="Page navigation example text-center">
					<ul class="pagination">
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
							</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
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
			<!-- /.container -->
		</section>

	    <!-- modal -->
        <div id="pop-up">
            <div class="pop">
                <div class="pop-up-box small-6 large-centered">
                    <a href="#" class="close-button">&#10006;</a>
                    <h3>댓글창</h3>
                    <p>댓글을 수정 하시겠습니까? <br> 확인 클릭 시 메인 페이지로 이동 합니다.</p>
                    <button type="button" class="gp-btn btn-dark">확인</button>
                </div>
            </div>
        </div>

        <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js">
        </script>

        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script id="rendered-js">
            $(document).ready(function () {
                $("button").click(function () {
                    $(".pop").fadeIn(300);
                    positionPopup();
                });

                $(".close-button, .pop").click(function () {
                    $(".pop").fadeOut(300);
                });
            });
            //# sourceURL=pen.js
        </script>
		<!-- modal -->
		
		</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>