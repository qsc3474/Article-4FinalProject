<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Info</title>
<style>
        table th,
        table td {
            text-align: center;
        }
        #healthPrice li{list-style: none; text-align: left;}
        .cta-btncontainer-two {margin: 30px auto 0; width: 150px;}
    </style>
</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	
	<jsp:include page="/WEB-INF/views/hotel/common/header.jsp"></jsp:include>
	
		<div id="main_content">
		
			<!-- title -->
        <section class="step-title bg-white">
            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>이용안내</h2>
            </div>
        </section>
        <!-- /title -->

        <!-- 이용안내 -->
        <section class="bg-white">
            <div class="container">
                <!-- 입실안내 -->
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">입실안내</span></h3>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                            <thead class="thead-light">
                                <tr>
                                    <th>구분</th>
                                    <th>입실시간</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>성수기, 주말, 연휴 </td>
                                    <td>15 : 00 ~ 22 : 00
                                    </td>
                                </tr>
                                <tr>
                                    <td>비수기, 주중</td>
                                    <td>14 : 00 ~ 22 : 00
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /입실안내 -->

                <!-- 퇴실안내 -->
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">퇴실안내</span></h3>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                            <thead class="thead-light">
                                <tr>
                                    <th>구분</th>
                                    <th>입실시간</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>성수기, 주말, 연휴</td>
                                    <td>11 : 00</td>
                                </tr>
                                <tr>
                                    <td>비수기, 주중</td>
                                    <td>12 : 00</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /퇴실안내 -->
            </div>
        </section>
        <!-- /이용안내 -->

        <section class="bg-light">
            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>횐불 취소 정책</h2>
            </div>
            <div class="container">
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">반려견 객실요금</span></h3>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                            <colgroup>
                                <col width="10%">
                                <col width="45%">
                                <col width="45%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>성수기</th>
                                    <th>비수기</th>
                                </tr>						
                            </thead>
                            <tbody>
                                <tr>
                                    <th>기간</th>
                                    <td>
                                        <span class="bTxt">Ⅰ. 5월, 7월, 8월, 9월, 10월, 12월</span>
                                    </td>
                                    <td>
                                        <span class="bTxt">Ⅰ. 1월, 2월, 3월, 4월, 6월, 11월 (일요일 ~ 금요일에 해당)</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th rowspan="2">위약금 규정</th>
                                    <td>
                                        <span class="bTxt2">사용 예정일(체크인 날짜) <strong>3일 전 15시 이후</strong> 예약취소 시<br> - 하루 숙박 총 요금의 <strong>50%</strong> 부과</span><br><br>	
                                        <span class="bTxt2">사용 예정일(체크인 날짜) <strong>1일 전 15시 이후</strong> 예약취소 시<br> - 하루 숙박 총 요금의 <strong>90%</strong> 부과</span><br>
                                        (당일 숙박을 위한 당일예약 후, 예약 취소의 경우도 위약금 규정이 동일하게 적용됩니다.)
                                    </td>
                                    <td>
                                        <span class="bTxt2">사용 예정일(체크인 날짜) <strong>1일 전 15시 이후</strong> 예약취소 시<br> - 하루 숙박 총 요금의 <strong>10%</strong> 부과	<br></span><br>
                                        <span class="bTxt2">사용 예정일(체크인 날짜) <strong>당일 15시 이후</strong> 예약취소 및 미입실(No Show)시<br> - 하루 숙박 총 요금의 <strong>20%</strong> 부과</span><br>
                                        (당일 숙박을 위한 당일예약 후, 예약 취소의 경우도 위약금 규정이 동일하게 적용됩니다)
                                    </td>
                                </tr>					
                            </tbody>
                        </table>
                     </div>
                </div>
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">반려견 객실요금</span></h3>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                            <colgroup>
                                <col width="50%">
                                <col width="50%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>카드취소</th>
                                    <th>입금 환불</th>
                                </tr>						
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        - 카드 취소 접수 후 영업일 기준 약 7일 소요
                                    </td>
                                    <td>
                                        - 입금 해 주셨던 통장 사본 수령 후 접수 (입금자명 확인 후 진행 됩니다)<br>
                                        - 접수 후 영업일 기준 약 7일 소요 
                                    </td>
                                </tr>												
                            </tbody>
                        </table>
                     </div>
                     <dl class="infoTxt3">
						<dt>* 유의사항</dt>
						<dd style="padding-left:10px;">1. 예약취소 및 미입실(No Show)에 관한 위약금 규정에 관하여 공정거래위 산하 소비자 보호원 기준에 따라 아래와 같이 위약금 부과 처리에 관해 안내 하오니, 이용에 유의 하시기 바랍니다.</dd>
						<dd style="padding-left:10px;">2. 예약 당일 취소 및 NO SHOW의 경우 위약금 규정에 따라 해당 금액 제외한 나머지 금액만 환불됩니다.</dd>
						<dd style="padding-left:10px;">3. 상기 일자는 당사, 카드사 상황 또는 금액에 따라 지연될 수 있습니다.</dd>
					</dl>
                </div>
            </div>
        </section>

        <!-- 이용금액 안내 -->
        <section id="RoomPrice" class="bg-white">
            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>이용금액 안내</h2>
            </div>
            <div class="container">
                <!-- 반려견 요금 -->
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">반려견 객실요금</span></h3>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>룸</th>
                                    <th>무게</th>
                                    <th>크기</th>
                                    <th>가격</th>
                                    <th>객실</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>일반실</td>
                                    <td>소형견 5kg미만</td>
                                    <td>2㎡</td>
                                    <td>35,000원</td>
                                    <td rowspan="4">
                                        <a href="${ pageContext.servletContext.contextPath }/ht/room#DogRoom" class="gp-btn btn-dark center" style="margin-top:40px;">자세히 보러가기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>준VIP</td>
                                    <td>4kg ~ 8kg</td>
                                    <td>2.3㎡</td>
                                    <td>50,000원</td>
                                </tr>
                                <tr>
                                    <td>VIP</td>
                                    <td>8kg ~ 12kg</td>
                                    <td>2.7㎡</td>
                                    <td>70.000원</td>
                                </tr>
                                <tr>
                                    <td>VVIP</td>
                                    <td>8kg ~ 12kg</td>
                                    <td>3.2㎡</td>
                                    <td>90,000원</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /반려견 요금 -->

                <!-- 반려묘 요금 -->
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">반려묘 객실요금</span></h3>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                            <colgroup>
                                <col>
                                <col>
                                <col style="width: 20%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>룸</th>
                                    <th>가격</th>
                                    <th>객실</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>일반실</td>
                                    <td>35,000원</td>
                                    <td rowspan="3">
                                        <a href="${ pageContext.servletContext.contextPath }/ht/room#CatRoom" class="gp-btn btn-dark center" style="margin-top:25px;">자세히 보러가기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2인실</td>
                                    <td>50,000원</td>
                                </tr>
                                <tr>
                                    <td>3~4인실</td>
                                    <td>70.000원</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /반려묘 요금 -->

                <!-- 이벤트룸 요금 -->
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">이벤트룸 요금</span></h3>
                    <p>스튜디오 사용 시 각종 소품과 카메라를 대여해 드립니다.</p>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                            <colgroup>
                                <col>
                                <col>
                                <col>
                                <col style="width: 20%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>룸</th>
                                    <th>시간</th>
                                    <th>가격</th>
                                    <th>객실</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td rowspan="3">파티룸</td>
                                    <td>3시간</td>
                                    <td>90,000원</td>
                                    <td rowspan="6">
                                        <a href="${ pageContext.servletContext.contextPath }/ht/room#EventRoom" class="gp-btn btn-dark center" style="margin-top: 70px;">자세히 보러가기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4시간</td>
                                    <td>110,000원</td>
                                </tr>
                                <tr>
                                    <td>5시간</td>
                                    <td>130,000원</td>
                                </tr>
                                <tr>
                                    <td rowspan="3">스튜디오</td>
                                    <td>1시간</td>
                                    <td>50,000원</td>
                                </tr>
                                <tr>
                                    <td>2시간</td>
                                    <td>100,000원</td>
                                </tr>
                                <tr>
                                    <td>3시간</td>
                                    <td>100,000원</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /이벤트 요금 -->

                <!-- 패키지 요금 -->
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">패키지 요금</span></h3>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                            <colgroup>
                                <col>
                                <col>
                                <col>
                                <col style="width: 20%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>패키지상품</th>
                                    <th>가격</th>
                                    <th>객실</th>
                                    <th>객실</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>패키지1</td>
                                    <td>3시간</td>
                                    <td>90,000원</td>
                                    <td rowspan="3">
                                        <a href="package.html" class="gp-btn btn-dark center" style="margin-top:30px;">자세히 보러가기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>패키지2</td>
                                    <td>3시간</td>
                                    <td>90,000원</td>
                                </tr>
                                <tr>
                                    <td>패키지3</td>
                                    <td>3시간</td>
                                    <td>90,000원</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /패키지 요금 -->
            </div>
        </section>

        <!-- 서비스이용금액 #beautyPrice-->
        <section id="BeautyPrice"  class="bg-light">
            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>서비스 미용</h2>
            </div>
            <div class="container">
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">소형견 미용요금</span></h3>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                        <thead>
                          <tr>
                            <th>무게</th>
                            <th>목욕</th>
                            <th>부분+목욕</th>
                            <th>전체</th>
                            <th>스포팅</th>
                            <th>가위컷</th>
                            <th>안내</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>5kg 미만</td>
                            <td>25,000원</td>
                            <td>30,000원</td>
                            <td>35,000원</td>
                            <td>55,000원</td>
                            <td>70,000원</td>
                            <td rowspan="4">
                                <a href="${ pageContext.servletContext.contextPath }/ht/service#Beauty" class="gp-btn btn-dark center" style="margin-top:40px;">자세히 보러가기</a>
                            </td>
                          </tr>
                          <tr>
                            <th>5kg ~ 8kg</th>
                            <td>30,000원</td>
                            <td>35,000원</td>
                            <td>40,000원</td>
                            <td>60.000원</td>
                            <td>80.000원</td>
                          </tr>
                          <tr>
                            <th>8kg ~ 11kg</th>
                            <td>35,000원</td>
                            <td>40,000원</td>
                            <td>45,000원</td>
                            <td>65,000원</td>
                            <td>90,000원</td>
                          </tr>
                          <tr>
                            <th>11kg ~ 14kg</th>
                            <td>40,000원</td>
                            <td>45,000원</td>
                            <td>50,000원</td>
                            <td>70,000원</td>
                            <td>100,000원</td>
                          </tr>
                        </tbody>
                      </table>
                      </div>
                </div>
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">중형견 미용요금</span></h3>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>무게</th>
                                    <th>목욕</th>
                                    <th>부분+목욕</th>
                                    <th>전체</th>
                                    <th>스포팅</th>
                                    <th>가위컷</th>
                                    <th>안내</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>5kg 미만</td>
                                    <td>15,000원</td>
                                    <td>20,000원</td>
                                    <td>30,000원</td>
                                    <td>50,000원</td>
                                    <td>60,000원</td>
                                    <td rowspan="4">
                                        <a href="${ pageContext.servletContext.contextPath }/ht/service#Beauty" class="gp-btn btn-dark center" style="margin-top:40px;">자세히 보러가기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <th>3kg ~ 5kg</th>
                                    <td>20,000원</td>
                                    <td>25,000원</td>
                                    <td>35,000원</td>
                                    <td>55,000원</td>
                                    <td>70,000원</td>
                                </tr>
                                <tr>
                                    <th>5kg ~ 7kg</th>
                                    <td>25,000원</td>
                                    <td>30,000원</td>
                                    <td>40,000원</td>
                                    <td>60.000원</td>
                                    <td>80.000원</td>
                                </tr>
                                <tr>
                                    <th>8kg ~ 12kg</th>
                                    <td>30,000원</td>
                                    <td>35,000원</td>
                                    <td>45,000원</td>
                                    <td>65,000원</td>
                                    <td>90,000원</td>
                                </tr>
                            </tbody>
                        </table>
                      </div>
                </div>
            </div>
        </section>
         <!-- 서비스이용금액 #beautyPrice-->

        <!-- 서비스이용금액 #beautyPrice-->
        <section id="HealthPrice"  class="bg-white">
            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>서비스 건강검진</h2>
            </div>
            <div class="container">
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">[상품1] 반려견, 번려묘 건강검진</span></h3>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                        <colgroup>
                            <col>
                            <col style="width: 40%;">
                            <col style="width: 15%;">
                            <col>
                        </colgroup>
                        <thead>
                          <tr>
                            <th>선택</th>
                            <th>내용</th>
                            <th>금액</th>
                            <th>안내</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>[선택1-1]기본형액검사 건강체트</td>
                            <td>
                                <ul>
                                    <li>기본검진+종합혈액검사 13종 + CRP + 전해질 검사</li>
                                    <li>나이로 인한 추가 금액 미 발생</li>
                                    <li>5kg 이하의 강아지, 고양이 기준</li>
                                </ul>
                            </td>
                            <td>99,000원</td>
                            <td rowspan="4">
                                <a href="${ pageContext.servletContext.contextPath }/ht/service#Health" class="gp-btn btn-dark center"
                                    style=" margin-top: 90px;">자세히 보러가기</a>
                            </td>
                          </tr>
                          <tr>
                            <td>[선택1-2]8세미만 Standard건강검진</td>
                            <td>
                                <ul>
                                    <li>기본검진+종합혈액검사 13종 + 복부방사선 + 복부초음파</li>
                                    <li>5kg 이하의 강아지, 고양이 기준</li>
                                </ul>
                            </td>
                            <td>129,000원</td>
                          </tr>
                          <tr>
                            <td>[선택1-3]8세미만 Standard건강검진</td>  
                            <td>
                                <ul>
                                    <li>기본검진+종합혈액검사 13종 + 복부방사선 + 복부초음파</li>
                                    <li>5kg 이하의 강아지, 고양이 기준</li>
                                </ul>
                            </td>
                            <td>129,000원</td>
                          </tr>
                          <tr>
                        </tbody>
                      </table>
                      </div>
                </div>
            </div>
        </section>
         <!-- 서비스이용금액 #beautyPrice-->

         <!-- 서비스이용금액 #beautyPrice-->
        <section id="SchoolPrice"  class="bg-light">
            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>School 프로그램 이용 금액</h2>
            </div>
            <div class="container">
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">소형견 or 고양이(8kg 이하)</span></h3>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                            <colgroup>
                                <col>
                                <col>
                                <col>
                                <col style="width: 20%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>기간</th>
                                    <th>금액</th>
                                    <th>안내</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td rowspan="2">아카데미(주중)</td>
                                    <td>3개월</td>
                                    <td>2,100,000원</td>
                                    <td rowspan="8">
                                        <a href="${ pageContext.servletContext.contextPath }/ht/service#School" class="gp-btn btn-dark center"
                                            style="margin-top: 100px;">자세히 보러가기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>6개월</td>
                                    <td>4,000,000원</td>
                                </tr>
                                <tr>
                                    <td rowspan="2">1:1(주중)</td>
                                    <td>3개월</td>
                                    <td>3,600,000원</td>
                                </tr>
                                <tr>
                                    <td>6개월</td>
                                    <td>7,200,000원</td>
                                </tr>
                                <tr>
                                    <td rowspan="2">그룹글래스(월, 수, 금)</td>
                                    <td>1개월</td>
                                    <td>1,600,000원</td>
                                </tr>
                                <tr>
                                    <td>3개월</td>
                                    <td>4,500,000원</td>
                                </tr>
                                <tr>
                                    <td rowspan="2">그룹글래스(토,일)</td>
                                    <td>1개월</td>
                                    <td>800,000원</td>
                                </tr>
                                <tr>
                                    <td>3개월</td>
                                    <td>2,200,000원</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row mb">
                    <h3 class="text-center pb"><span class="underline--magical">중형견(9~18kg 이하)</span></h3>
                    <div class="table-container deco inner-bordered center fc01">
                        <table border="1" class="table table-striped">
                            <colgroup>
                                <col>
                                <col>
                                <col>
                                <col style="width: 20%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>기간</th>
                                    <th>금액</th>
                                    <th>안내</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td rowspan="2">아카데미(주중)</td>
                                    <td>3개월</td>
                                    <td>2,600,000원</td>
                                    <td rowspan="8">
                                        <a href="${ pageContext.servletContext.contextPath }/ht/service#School" class="gp-btn btn-dark center" style="margin-top:120px;">자세히 보러가기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>6개월</td>
                                    <td>4,600,000원</td>
                                </tr>
                                <tr>
                                    <td rowspan="2">1:1(주중)</td>
                                    <td>3개월</td>
                                    <td>4,200,000원</td>
                                </tr>
                                <tr>
                                    <td>6개월</td>
                                    <td>7,900,000원</td>
                                </tr>
                                <tr>
                                    <td rowspan="2">그룹글래스(월, 수, 금)</td>
                                    <td>1개월</td>
                                    <td>2,200,000원</td>
                                </tr>
                                <tr>
                                    <td>3개월</td>
                                    <td>5,100,000원</td>
                                </tr>
                                <tr>
                                    <td rowspan="2">그룹글래스(토,일)</td>
                                    <td>1개월</td>
                                    <td>1,400,000원</td>
                                </tr>
                                <tr>
                                    <td>3개월</td>
                                    <td>2,800,000원</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
         <!-- 서비스이용금액 #beautyPrice-->
		</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>