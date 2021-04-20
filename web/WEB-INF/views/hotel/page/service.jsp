<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotel-service</title>
</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	
	<jsp:include page="/WEB-INF/views/hotel/common/header.jsp"></jsp:include>
	
		<div id="main_content">
		
		<!-- Beauty -->
        <section id="Beauty" class="bg-white">
            <div class="container">
                <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                    <h2>Pet Beauty</h2>
                    <p>
                        기존에 없는 커스터마이징 케어서비스
                        전문가의 상담을 통한 케어서비스를 제공하며 반려동물의 피부와 모발 상태에 따라 피부타입에 적합한 제품으로 준비되는 맞춤형 스파와 모발 관리도 제공합니다.
                    </p>
                </div>
                <div class="row">
                    <div class="col-md-5">
                        <div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s" style="box-shadow: 0 5px 10px rgb(0 0 0 / 30%);">
                            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/beauty.jpg">
                        </div>
                    </div>

                    <div class="col-md-7" style="padding-left: 20px;">
                        <p><span><i class="glyphicon glyphicon-earphone"></i></span> 전화 예약 가능</p>
                        <table class="table table-bordered">
                            <tbody>
                              <tr>
                                <th scope="row">운영시간</th>
                                <td>뷰티 운영이 한시적으로 변경되오니 고객님의 양해 부탁드립니다. <br>화~일요일: 10시 ~ 19시 <br>월요일: 미운영</td>
                                <td rowspan="5" style="padding-top: 100px; width: 150px;">
                                    <a href="${ pageContext.servletContext.contextPath }/ht/info#BeautyPrice" class="gp-btn btn-dark small center cta-btncontainer-two "  style=" margin-bottom: 5px; color: #fff;">이용요금보기</a>
                              </tr>
                              <tr>
                                <th scope="row">이용기준</th>
                                <td>모든 반려견을 허용하는 것을 기본원칙으로 함<br>
                                    (맹견/공격성 강한 견종 및 고양이 제외)<br>
                                    shop 內 개인 리드줄 의무 착용
                                </td>
                              </tr>
                              <tr>
                                <th scope="row">이용안내</th>
                                <td>법적 맹견 분류 견종 /기타 공격성 강한 견종 출입금지<br>
                                    5대접종 및 2년 내 광견병 접종견에 限하여 입장 가능<br>
                                    생후 3개월 이하 입장불가<br>
                                    어떠한 전염병도 없어야 입장 가능
                                </td>
                              </tr>
                            </tbody>
                          </table>
                    </div>
                </div>
            </div>
        </section>
        <!-- /Beauty -->

        <!-- Health -->
        <section id="Health" class="bg-light">
            <div class="container">
                <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                    <h2>Pet Hostipal</h2>
                    <p>
                        기존에 없는 커스터마이징 케어서비스
                        전문가의 상담을 통한 케어서비스를 제공하며 반려동물의 피부와 모발 상태에 따라 피부타입에 적합한 제품으로 준비되는 맞춤형 스파와 모발 관리도 제공합니다.
                    </p>
                </div>
                <div class="row">
                    <div class="col-md-7" style="padding-left: 20px;">
                        <p><span><i class="glyphicon glyphicon-earphone"></i></span> 전화 예약 가능</p>
                        <table class="table table-bordered">
                            <tbody>
                              <tr>
                                <th scope="row">운영시간</th>
                                <td>뷰티 운영이 한시적으로 변경되오니 고객님의 양해 부탁드립니다. <br>화~일요일: 10시 ~ 19시 <br>월요일: 미운영</td>
                                <td rowspan="5" style="padding-top: 130px; width: 150px;">
                                    <a href="${ pageContext.servletContext.contextPath }/ht/info#HealthPrice" class="gp-btn btn-dark small center cta-btncontainer-two "  style=" margin-bottom: 5px; color: #fff;">이용요금보기</a>
                              </tr>
                              <tr>
                                <th scope="row">이용기준</th>
                                <td>모든 반려견을 허용하는 것을 기본원칙으로 함<br>
                                    (맹견/공격성 강한 견종 및 고양이 제외)<br>
                                    shop 內 개인 리드줄 의무 착용
                                </td>
                              </tr>
                              <tr>
                                <th scope="row">이용안내</th>
                                <td>법적 맹견 분류 견종 /기타 공격성 강한 견종 출입금지<br>
                                    5대접종 및 2년 내 광견병 접종견에 限하여 입장 가능<br>
                                    생후 3개월 이하 입장불가<br>
                                    어떠한 전염병도 없어야 입장 가능
                                </td>
                              </tr>
                              <tr>
                                <th scope="row">예약</th>
                                <td>Larry the Bird</td>
                              </tr>
                              <tr>
                                <th scope="row">문의 전화</th>
                                <td>02-1234-1234</td>
                              </tr>
                            </tbody>
                          </table>
                    </div>
                    <div class="col-md-5">
                        <div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s" style="box-shadow: 0 5px 10px rgb(0 0 0 / 30%);">
                            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/doctor04.jpeg">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /Health -->

        <!-- School -->
        <section id="School" class="bg-white">
            <div class="container">
                <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                    <h2>Pet School</h2>
                    <p>
                        소노펫스쿨은 사회성 향상을 위한 클래스를 진행하고 있습니다. 각 아이들의 성향에 따라 진행하는 1:1 클래스로, 맞춤형 교육과 다양한 장소와 환경에서 진행하는 그룹 클래스로 진행합니다.
                    </p>
                </div>
                <div class="row">
                    <div class="col-md-5">
                        <div class="about-box wow fadeIn" data-wow-duration="1000ms" data-wow-delay="0.3s" style="box-shadow: 0 5px 10px rgb(0 0 0 / 30%);">
                            <img src="${ pageContext.servletContext.contextPath }/resources/media/img/school-education01.jpg">
                        </div>
                    </div>

                    <div class="col-md-7" style="padding-left: 20px;">
                        <p><span><i class="glyphicon glyphicon-earphone"></i></span> 전화 예약 가능</p>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>시간</th>
                                    <th>프로그램</th>
                                    <th>안내</th>
                                </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>9:00 ~ 18: 00</td>
                                <td>아카데미(주중)</td>
                                <td rowspan="5" style="padding-top: 50px; width: 150px;">
                                    <a href="${ pageContext.servletContext.contextPath }/ht/info#SchoolPrice" class="gp-btn btn-dark small center cta-btncontainer-two "  style=" margin-bottom: 5px; color: #fff;">이용요금보기</a>
                              </tr>
                              <tr>
                                <td>9:00 ~ 19: 00</td>
                                <td>1:1 클래스(주중)</td>
                              </tr>
                              <tr>
                                <th>20:00 ~ 21: 00</th>
                                <td>그룹클래스 클래스(화, 수, 목)</td>
                              </tr>
                              <tr>
                                <td>11:00/13: 00/15:00</td>
                                <td>그룹클래스 클래스(토, 일)</td>
                              </tr>
                            </tbody>
                          </table>
                          <ul class="info" style="padding: 20px 0;">
							<li>
								<h4><span>01</span> 그룹클래스</h4>
								<p>매너교육, 산책교육, 도그 스포츠 교육을 구성으로 다양하 장소와 환경에서 잘 적응할 수 있도록 진행 합니다.</p>
							</li>
							<li>
								<h4><span>02</span> 1:1 클래스</h4>
								<p>반려견의 성향과 행동에 초점을 맞춘 1:1 퍼스널 트레이닝을 진행 합니다.</p>
							</li>
							<li>
								<h4><span>03</span> 아카데미</h4>
								<p>다양한 환경에서의 개별산책 굥육과 메여교육을 진행하고 플레이타임, 스포트 프레이즈, 터치 등 활동성 있는 프로그램을 진행 합니다.
								</p>
							</li>
						</ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- /School -->
		
		</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>