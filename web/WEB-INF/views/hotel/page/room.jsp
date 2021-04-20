<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>room</title>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<style>
    /* body {
          background: rgba(0, 0, 0, 0) radial-gradient(circle, #fff 20%, #999) repeat scroll 0 0;
        } */
    .feature-box-one {padding: 0 !important;}
 </style>

</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	
	<jsp:include page="/WEB-INF/views/hotel/common/header.jsp"></jsp:include>
	
		<div id="main_content">
		
			<!-- title -->
		    <section class="bg-white">
		      <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
		        <h2>ROOM &amp; EVENT ROOM</h2>
		        <p>
		          나의 소중한 반려견의 특별한 날 개편한 세상과 함께 하세요
		        </p>
		      </div>
		    </section>
		    <!-- /title -->
		
		    <!-- macbook -->
		    <section class="pt-null bg-white">
		      <div class="container">
		        <div class="macbook">
		          <div class="screen">
		            <div class="viewport" style="background-image:url('${ pageContext.servletContext.contextPath }/resources/media/img/slider2.png')">
		            </div>
		          </div>
		          <div class="base"></div>
		          <div class="notch"></div>
		        </div>
		      </div>
		
		    </section>
		    <!-- /macbook -->
		
		    <!-- DOG room -->
		    <section id="DogRoom" class="bg-light">
		      <div class="container">
		        <div class="section-title ht-title text-center wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
		          <h2>DOG ROOMS</h2>
		          <p>
		            최고의 힐링 공간, 호텔 &amp; 데이케어
		            최첨단 공조시스템&#40;음압설비&#41;이 적용된 국내 최고의 5성급 호텔 서비스를 제공합니다.
		          </p>
		        </div>
		
		        <div class="row">
		          <div class="col-md-3 col-sm-6">
		            <h3 class="underline-magical text-center pb"><span class="underline--magical"> STANDARD</span></h3>
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.2s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/room06.jpg" alt="" style="width: 100%;">
		            </div>
		            <!-- /.feature-box-one -->
		          </div>
		          <!-- /.col-md-3 -->
		
		          <div class="col-md-3 col-sm-6">
		            <h3 class="underline-magical text-center pb"><span class="underline--magical">VIP</span></h3>
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/room2.jpg" alt="" style="width: 100%;">
		            </div>
		            <!-- /.feature-box-one -->
		          </div>
		          <!-- /.col-md-3 -->
		
		          <div class="col-md-3 col-sm-6">
		            <h3 class="underline-magical text-center pb"><span class="underline--magical"> VVIP</span></h3>
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.6s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/room03.jpg" alt="" style="width: 100%;">
		            </div>
		            <!-- /.feature-box-one -->
		          </div>
		          <!-- /.col-md-3 -->
		
		          <div class="col-md-3 col-sm-6">
		            <h3 class="underline-magical text-center pb"><span class="underline--magical">DIAMOND</span></h3>
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.8s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/diamondRoom.jpg" alt="" style="width: 100%;">
		            </div>
		            <!-- /.feature-box-one -->
		          </div>
		          <!-- /.col-md-3 -->
		        </div>
		        <!-- /.row -->
		      </div>
		      <!-- /.container -->
		    </section>
		    <!-- /DOG room -->
		
		    <!-- CatRoom -->
		    <section id="CatRoom">
		      <div class="container">
		        <div class="section-title ht-title text-center wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
		          <h2>CAT ROOMS</h2>
		          <p>
		            최고의 힐링 공간, 호텔 &amp; 데이케어
		            최첨단 공조시스템	&#40;음압설비&#41;이 적용된 국내 최고의 5성급 호텔 서비스를 제공합니다.
		          </p>
		        </div>
		
		        <div class="row">
		          <div class="col-md-4">
		            <h3 class="underline-magical text-center pb"><span class="underline--magical"> STANDARD</span></h3>
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.2s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/catRoom01.jpg" alt="" style="width: 100%;">
		            </div>
		          </div>
		          <!-- /.col-md-3 -->
		
		          <div class="col-md-4">
		            <h3 class="underline-magical text-center pb"><span class="underline--magical">VIP</span></h3>
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/catRoom02.jpg" alt="" style="width: 100%;">
		            </div>
		          </div>
		        
		
		        <div class="col-md-4">
		          <h3 class="underline-magical text-center pb"><span class="underline--magical">LOUNGE</span></h3>
		          <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/cathotel02.jpg" alt="" style="width: 100%;">
		          </div>
		        </div>
		      </div>
		    </div>
		    </section>
		    <!-- /CatRoom -->
		
		    <!-- EventRoom -->
		    <section id="EventRoom" class="bg-light">
		      <div class="container">
		        <div class="section-title ht-title text-center wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
		          <h2>EVENT ROOMS</h2>
		          <p>
		            최고의 힐링 공간, 호텔 &amp; 데이케어
		            최첨단 공조시스템	&#40;음압설비&#41;이 적용된 국내 최고의 5성급 호텔 서비스를 제공합니다.
		          </p>
		        </div>
		
		        <div class="row">
		          <div class="col-md-3">
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.2s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/partyRoom03.jpg" alt="" style="width: 100%;">
		            </div>
		          </div>
		          <!-- /.col-md-3 -->
		
		          <div class="col-md-3">
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/partyRoom04.jpg" alt="" style="width: 100%;">
		            </div>
		          </div>
		          <div class="col-md-3">
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/party03.jpeg" alt="" style="width: 100%;">
		            </div>
		          </div>
		          <div class="col-md-3">
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/partyRoom05.jpg" alt="" style="width: 100%;">
		            </div>
		          </div>
		      </div>
		    </div>
		    </section>
		    <!-- /EventRoom -->
		
		    <!-- StudioRoom -->
		     <section id="StudioRoom">
		      <div class="container">
		        <div class="section-title ht-title text-center wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
		          <h2>STUDIO</h2>
		          <p>
		            최고의 힐링 공간, 호텔  데이케어 최첨단 공조시스템&#40;음압설비&#41;이 적용된 국내 최고의 5성급 호텔 서비스를 제공합니다.
		          </p>
		        </div>
		
		        <div class="row">
		          <div class="col-md-3 p-null">
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio11.jpg" alt="" style="width: 100%;">
		            </div>
		          </div>
		          <div class="col-md-3 p-null">
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio12.jpg" alt="" style="width: 100%;">
		            </div>
		          </div>
		          <div class="col-md-3 p-null">
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio05.jpg" alt="" style="width: 100%;">
		            </div>
		          </div>
		          <div class="col-md-3 p-null">
		            <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		              <img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio13.jpg" alt="" style="width: 100%;">
		            </div>
		          </div>
		      </div>
		      <div class="row">
		        <div class="col-md-3 p-null">
		          <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio17.jpg" alt="" style="width: 100%;">
		          </div>
		        </div>
		        <div class="col-md-3 p-null">
		          <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio14.jpg" alt="" style="width: 100%;">
		          </div>
		        </div>
		        <div class="col-md-3 p-null">
		          <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio19.jpg" alt="" style="width: 100%;">
		          </div>
		        </div>
		        <div class="col-md-3 p-null">
		          <div class="feature-box-one wow fadeInUp" data-wow-delay="0.4s">
		            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/studio01.jpg" alt="" style="width: 100%;">
		          </div>
		        </div>
		    </div>
		    </div>
		    </section>
		    <!-- /StudioRoom -->
		
		</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>