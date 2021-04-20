<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>패키지</title>

<style>
    .feature-box-two {
      padding: 0;
      width: 100%;
    }

    .feature-box-two img {
      width: 381.656px;
      height: 249px;
      position: relative;
    }

    .feature-box-two h3 {
      position: absolute;
      top: 50%;
      left: 30%;
      font-size: 25px;
      color: #fff;
      letter-spacing: 4PX;
      width: 100%;
    }

    .feature-box-two h3:hover {
      color: #FDC647;
    }

    .underline-magical {
      padding-bottom: 8px;
    }

    li {
      list-style: none;
      padding-bottom: 10px;
    }

    .about-box img {
    width: 100%;
    height: auto;
    border-radius: 0px;
}

  </style>

</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	
	<jsp:include page="/WEB-INF/views/hotel/common/header.jsp"></jsp:include>
	
		<div id="main_content">
		
			<!-- title -->
		    <section class="step-title bg-white mt">
		      <div class="section-title ht-title text-center mb-null" data-wow-duration="1000ms" data-wow-delay="0.3s">
		        <h2>패키지</h2>
		      </div>
		    </section>
		     <!-- title -->
     
			<!-- 패키지 상품 -->
		    <section id="pricing" class="bg-white">
		      <div class="container">
		        <div class="row">
		          <div class="col-md-4">
		            <div class="gp-price-table-one clearfix wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="0.3s">
		              <div class="price-table-container">
		                <div class="price-inner">
		                  <span class="currency">￦</span>
		                  <span class="price">200,000</span>
		                </div>
		                <h5 class="title">생일파티 패키지</h5>
		                <ul class="description">
		                  <li><i class="glyphicon glyphicon-ok"></i>호텔1박</li>
		                  <li>생일데코박스제공</li>
		                  <li>펫 메뉴 1종</li>
		                  <li>생일선물제공</li>
		                </ul>
		                <div class="text-center">
		                  <a href="booking.html" target="_self" title="" class="gp-btn btn-dark medium btn-bradius">예약하기</a>
		                </div>
		              </div>
		            </div>
		          </div>
		          <!-- /.col-md-4 -->
		
		          <div class="col-md-4">
		            <div class="gp-price-table-one clearfix wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="0.3s">
		              <div class="price-table-container">
		                <div class="price-inner">
		                  <span class="currency">￦</span>
		                  <span class="price">300,000</span>
		                </div>
		                <h5 class="title">포토앨범패키지</h5>
		                <ul class="description">
		                  <li>호텔1박</li>
		                  <li>각종소품및의상대여</li>
		                  <li>앨범제공</li>
		                  <li>펫간식제공</li>
		                </ul>
		                <div class="text-center">
		                  <a href="booking.html" target="_self" title="" class="gp-btn btn-dark medium btn-bradius">예약하기</a>
		                </div>
		              </div>
		            </div>
		          </div>
		          <!-- /.col-md-4 -->
		
		          <div class="col-md-4">
		            <div class="gp-price-table-one clearfix wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="0.3s">
		              <div class="price-table-container">
		                <div class="price-inner">
		                  <span class="currency">￦</span>
		                  <span class="price">500,000</span>
		                </div>
		                <h5 class="title">건강검긴패키지</h5>
		                <ul class="description">
		                  <li>호텔1박</li>
		                  <li>동물병원 종합검진</li>
		                  <li>페어링 세트메뉴</li>
		                  <li>탄산스파</li>
		                </ul>
		                <div class="text-center">
		                  <a href="booking.html" target="_self" title="" class="gp-btn btn-dark medium btn-bradius">예약하기</a>
		                </div>
		              </div>
		            </div>
		          </div>
		          <!-- /.col-md-4 -->
		        </div>
		        <!-- /.row -->
		      </div>
		      <!-- /.container -->
		    </section>
		    <!-- /패키지 상품 -->
		
		    <!-- Birthday 패키지 -->
		    <section id="Birthday" class="bg-light">
		      <div class="container">
		        <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
		          <h2>Happy Birthday To My Pet</h2>
		          <p>가장 특별한 내 아이의 생일, 완벽한 파티 패키지로 축하해주세요. <br>신선하고 좋은 재료로 만든 수제 펫 생일 케이크와 예쁜 생일 선물,
		            럭셔리한 소노펫 객실을 프라이빗한 파티룸으로 꾸밀 수 있는 <br> 데코용품까지 모두 담긴 올인원 생일 파티 박스와 함께 Thinking Dog 펫 식사,
		            즐거운 놀이시간을 보낼 수 있는 플레이그라운드 입장 혜택이 포함되어 있습니다.</p>
		        </div>
		        <div class="row mb">
		          <div class="col-md-6">
		            <div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog14.jpg">
		            </div>
		          </div>
		          <div class="col-md-6">
		            <div class="about-details">
		              <ul class="info">
		                <li>
		                  <h4><span>01</span>개편한세상 객실 1박
		                  </h4>
		                </li>
		                <li>
		                  <h4><span>02</span>생일파티 토탈 데코레이션 박스</h4>
		                  <p>– 달미펫 수제 펫 롤 케이크 <br>
		                    – 달미펫 5종 펫 디저트 세트<br>
		                    – 펫 고깔 모자 	&amp; 보타이<br>
		                    – 토탈 데코레이션 용품 (가랜드, 풍선, 토퍼, 별 장식 등)<br>
		                    – 펫 용품 수납이 가능한 최고급 파티 박스<br>
		                    – 생일 선물 (소냐르 인형 &amp; 소냐르 스토리북)</p>
		                </li>
		                <li>
		                  <h4><span>03</span>Thinking Dog 펫 메뉴 1종
		                  </h4>
		                </li>
		              </ul>
		            </div>
		          </div>
		        </div>
		      </div>
		    </section>
		    <!-- /Birthday 패키지 -->
		    
		    <!-- Studio 패키지 -->
		    <section id="Studio" class="bg-white">
		      <div class="container">
		        <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
		          <h2>Pet Photo Studio</h2>
		          <p>가장 특별한 내 아이의 생일, 완벽한 파티 패키지로 축하해주세요. 신선하고 좋은 재료로 만든 수제 펫 생일 케이크와 예쁜 생일 선물,<br>
		            럭셔리한 소노펫 객실을 프라이빗한 파티룸으로 꾸밀 수 있는 데코용품까지 모두 담긴 올인원 생일 파티 박스와 함께 Thinking Dog 펫 식사,<br> 
		            즐거운 놀이시간을 보낼 수 있는 플레이그라운드 입장 혜택이 포함되어 있습니다.</p>
		        </div>
		        <div class="row mb">
		          <div class="col-md-4">
		            <div class="about-details">
		              <ul class="info">
		                <li>
		                  <h4><span>01</span>개편한세상 객실 1박
		                  </h4>
		                </li>
		                <li>
		                  <h4><span>02</span>각종소품및의상대여</h4>
		                </li>
		                <li>
		                  <h4><span>03</span>앨범제공
		                  </h4>
		                </li>
		                <li>
		                  <h4><span>03</span>펫간식제공
		                  </h4>
		                </li>
		              </ul>
		            </div>
		          </div>
		          <div class="col-md-4">
		            <div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/phote.jpg">
		            </div>
		          </div>
		          <div class="col-md-4">
		            <div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio21.jpg">
		            </div>
		          </div>
		        </div>
		      </div>
		    </section>
		    <!-- Studio 패키지 -->
		
		    <!-- Hospital 패키지 -->
		    <section id="Hospital" class="bg-light">
		      <div class="container">
		        <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
		          <h2>Healthy </h2>
		          <p>아파도 말을 할 수 없는 반려동물을 위한 필수 케어, 정기검진! <br> 데코용품까지 모두 담긴 올인원 생일 파티 박스와 함께 Thinking Dog 펫 식사,<br>
		            반려동물 동반 객실에서 함께 휴식하며 힐링 할 수 있는 소노펫 올인원 건강 관리 패키지를 만나보세요..</p>
		        </div>
		        <div class="row mb">
		          <div class="col-md-4">
		            <div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/dog05.jpg">
		            </div>
		          </div>
		          <div class="col-md-8">
		            <div class="about-details">
		              <ul class="info">
		                <li>
		                  <h4><span>01</span>개편한세상 객실 1박</h4>
		                </li>
		                <li>
		                  <h4><span>02</span>동물병원 종합 검진 A 코스</h4>
		                  <p>
		                    – 약 1시간 소요<br>
		                    – 검진 코스 구성: 혈청검사 8종, 혈구검사, 혈액형 검사, 복부 엑스레이, 흉부 엑스레이, 복부 초음파, 혈압 측정검사<br>
		                  </p>
		                </li>
		                <li>
		                  <h4><span>03</span>Dog 페어링 세트 메뉴 (A/B 중 선택)</h4>
		                  <p>
		                    – 페어링 메뉴 A : 실란트로 치킨 클럽 샌드위치 + (펫)건강식 야채를 곁들인 닭가슴살 샌드위치<br>
		                    – 페어링 메뉴B :홈메이드 파스트라미를 곁들인 연어샌드위치 +(펫)모듬 야채 연어 레이어드
		                  </p>
		                </li>
		              </ul>
		            </div>
		          </div>
		        </div>
		      </div>
		    </section>
		    <!-- Hospital 패키지 -->
				
		</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>