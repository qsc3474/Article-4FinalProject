<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개편한 세상-치과진료 정보</title>
</head>
<body>

<jsp:include page="../common/header.jsp"></jsp:include>

    <!-- about -->
      <section id="about" class="bg-light">
         <div class="container">
            <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
               <h2>치과</h2>
               <p>
                  치아는 뼈의 건강을 나타내고 잇몸은 체내건강을 나타낸다는 말이 있듯이 구강건강상태는 전신건강과 밀접한 관련을 가지고 있습니다. <br>
                        치석이 많고 잇몸에 염증이 있다면 전신건강이 나쁘다는 반증입니다. 그만큼 치아 건강은 중요합니다.
               </p>
            </div>
            <div class="row">
               <div class="col-md-6">
                  <div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s">
                     <img src="${ pageContext.servletContext.contextPath }/resources/media/img/puppy-with-doctor2.jpg">
                  </div>
               </div>

               <div class="col-md-6">
                  <div class="about-details">
                     <h3 class="about-title wow fadeInUp" data-wow-delay="0.5s">스케일링</h3>
                     <p class="wow fadeInUp" data-wow-delay="0.7s">
                        외과 재활 수의사, ISFM(국제고양이의학협회)수의사 등 업계 최고들이 모였습니다. 반려동물 예방접종, 건강검진 및 내/외과적인 치료를 하고 있으며,
                        수술보다는 재활을 통한 치료를 지향하고, 펫 보행 분석기와 펫 전용 수중 트레드밀 등 고차원적인 의료 서비스를 제공합니다.
                     </p>

                     <p class="wow fadeInUp" data-wow-delay="0.9s">
                        반려동물에게 치주염은 만성염증을 야기하여 인지장애, 심장판막질환, 각종 만성질환을 비롯한 전신건강에 치명적 문제를 야기합니다.
                                이같이 치아관리는 반려동물의 건강을 위해 매우 중요하지만 치아를 집에서 잘 관리하신다는 보호자들을 만나기는 어렵습니다.
                     </p>

                     <ul class="about-feature wow fadeInUp" data-wow-delay="1.1s">
                        <li>스케일링</li>
                        <li>마취</li>
                        <li>치주 조직 재생치료</li>
                        <li>치주 조직 재생치료</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- /about -->

        <!-- 진료과목페이지 -->
        <section id="feature-two">
         <div class="container">
            <div class="row">
               <div class="col-md-8">
                  <div class="about-feature-wrap wow fadeInLeft">
                     <div class="row">
                        <div class="col-md-6">
                           <div class="feature-box-six" data-wow-delay="0.5s">
                              <div class="content">
                                 <h3 class="h3-title">스케일링</h3>
                                 <p>
                                    반려동물에서 가장 많이 발생하는 치주염,잇몸 속 치석까지 제거하는 스케일링이 필요합니다. 
                                                스케일링은 치석 제거가 목적이지만 더 중요한 것은 치주염 예방입니다. 
                                                치주염은 치아뿌리의 염증을 의미하는데 고약한 입 냄새를 발생시키는 주범입니다.
                                 </p>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="feature-box-six" data-wow-delay="0.6s">
                              <div class="content">
                                 <h3 class="h3-title">마취</h3>
                                 <p>
                                    반려동물에서 가장 많이 발생하는 치주염,잇몸 속 치석까지 제거하는 스케일링이 필요합니다. 
                                                스케일링은 치석 제거가 목적이지만 더 중요한 것은 치주염 예방입니다. 
                                                치주염은 치아뿌리의 염증을 의미하는데 고약한 입 냄새를 발생시키는 주범입니다.
                                 </p>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 mt">
                           <div class="feature-box-six" data-wow-delay="0.7s">
                              <div class="content">
                                 <h3 class="h3-title">치주 조직 재생치료</h3>
                                 <p>
                                    반려동물에서 가장 많이 발생하는 치주염,잇몸 속 치석까지 제거하는 스케일링이 필요합니다. 
                                                스케일링은 치석 제거가 목적이지만 더 중요한 것은 치주염 예방입니다. 
                                                치주염은 치아뿌리의 염증을 의미하는데 고약한 입 냄새를 발생시키는 주범입니다.
                                 </p>
                              </div>
                           </div>
                        </div>

                        <div class="col-md-6 mt">
                           <div class="feature-box-six" data-wow-delay="0.7s">
                              <div class="content">
                                 <h3 class="h3-title">치주 조직 재생치료</h3>
                                 <p>
                                    반려동물에서 가장 많이 발생하는 치주염,잇몸 속 치석까지 제거하는 스케일링이 필요합니다. 
                                                스케일링은 치석 제거가 목적이지만 더 중요한 것은 치주염 예방입니다. 
                                                치주염은 치아뿌리의 염증을 의미하는데 고약한 입 냄새를 발생시키는 주범입니다.
                                 </p>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- /.row -->
                  </div>
                  <!-- /.about-feature-wrap -->
               </div>
               <!-- /.col-md-8 -->
                    <div class="col-md-4">
                  <div class="about-box text-right">
                     <img src="${ pageContext.servletContext.contextPath }/resources/media/img/puppy-with-doctor01.jpg">
                  </div>
               </div>
            </div>
            <!-- /.row -->
         </div>
         <!-- /.container -->
      </section>

        <section id="feature-two " class="bg-light">
         <div class="container">
                <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
               <h2>치과 치료전 후</h2>
            </div>
            <div class="row">
               <div class="col-md-6 col-sm-6">
                        <h3>치료 전</h3>
                  <div class="feature-box-one box-img">
                     <div class="img-box">
                        <img src="${ pageContext.servletContext.contextPath }/resources/media/img/before.jpg" alt="dog">
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-sm-6">
                        <h3>치료 후</h3>
                  <div class="feature-box-one box-img">
                     <div class="img-box">
                        <img src="${ pageContext.servletContext.contextPath }/resources/media/img/after.jpg" alt="dog">
                     </div>
                  </div>
               </div>
            </div>
            <!-- /.row -->
         </div>
         <!-- /.container -->
      </section>
</body>
</html>