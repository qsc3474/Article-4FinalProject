<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <!-- Meta Data -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="apple-mobile-web-app-title" content="CodePen">
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon-16x16.png">
    <title>호텔 룸 예약</title>
    <!-- Dependency Styles -->
    <link rel="stylesheet" href="dependencies/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="dependencies/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="dependencies/font-awesome/css/gp-icons.css" type="text/css">
    <link rel="stylesheet" href="dependencies/gp-icons/style.css" type="text/css">
    <!-- <link rel="stylesheet" href="dependencies/etlinefont-bower/style.css" type="text/css"> -->
    <link rel="stylesheet" href="dependencies/bootstrap-star-rating/css/star-rating.min.css" type="text/css">
    <link rel="stylesheet" href="dependencies/swiper/css/swiper.min.css" type="text/css">
    <link rel="stylesheet" href="dependencies/wow/animate.css" type="text/css">
    <link rel="stylesheet" href="dependencies/jquery-ui/css/jquery-ui.css" type="text/css">
    <link rel="stylesheet" href="dependencies/revslider/css/settings.css" type="text/css">
    <link rel="stylesheet" href="dependencies/magnific-popup/magnific-popup.css" type="text/css">
    <!-- Site Stylesheet -->
    <link rel="stylesheet" href="assets/css/app.css" type="text/css">
    <link rel="stylesheet" href="/creation/resources/css/common2.css">
    <!-- 추가 -->
    <link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
    <link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">
    <link rel="mask-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
</head>

<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
<jsp:include page="/WEB-INF/views/hotel/common/header.jsp"></jsp:include>
    <!-- main_content -->
    <div id="main_content">
        <!-- title -->
        <section class="step-title">
            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>룸 예약</h2>
            </div>
        </section>
        <!-- contents-->
        <section id="booking" class="bk-sec bg-white">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-11 col-sm-10 col-md-10 col-lg-6 col-xl-5 text-center p-0 mt-3 mb-2">
                        <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                            <form id="msform" action="${pageContext.request.contextPath}/ht/room/insert" method="post">
                                <!-- progressbar -->
                                <ul id="progressbar">
                                    <li class="active" id="account"><strong>동물정보입력</strong></li>
                                    <li id="personal"><strong>서비스 선택</strong></li>
                                    <li id="payment"><strong>예약정보</strong></li>
                                    <li id="confirm"><strong>완료</strong></li>
                                </ul>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <!-- STEP 01 -->
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">동물정보입력</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 1 - 4</h2>
                                            </div>
                                        </div>
                                        <div class="form-user-input">
                                        	<ul>
                                        		<!-- 이름 -->
                                        		<li>
   		    										<label class="fieldlabels">이름<span class="text-danger">*</span></label>
                                       				<input type="text" name="petName" id="userPetName" placeholder="이름을 입력해주세요." onchange="getUserPetName()">
                                        		</li>
                                        		<!-- 분류 -->
                                        		<li>
                                        			<label class="fieldlabels">분류 (종)<span class="text-danger">*</span></label>
			                                        <select name="kind" id="userPetCategory" onchange="getCategorySelect()">
			                                        	<option value="0" selected>분류를 선택해주세요.</option>
			                                        	<option value="D">Dog</option>
			                                            <option value="C">Cat</option>
			                                        </select> 
                                        		</li>
                                        		<!-- 성별 -->
                                        		<li>
                       		         				<label class="fieldlabels">성별 <span class="text-danger">*</span></label> 
		                                            <select name="gender" id="userPetGender" onchange="getUserPetGender()">
		                                            	<option value="0" selected>성별을 선택해주세요.</option>
		                                                <option value="M">남</option>
		                                                <option value="F">여</option>
	                                                </select> 
                                        		</li>
                                        		<!-- 나이 -->
                                        		<li>
                                        		    <label class="fieldlabels">나이<span class="text-danger">*</span></label>
												    <select name="age" id="userPetAge" onchange="getUserPetAge()">
												    	<option value="0" selected>나이를 선택해주세요.</option>
                                                  	    <option value="baby">1년 이하</option>
                                                        <option value="adult">성견/성묘</option>
                                                        <option value="old">노견/노묘</option>
                                                    </select>
                                        		</li>
                                        		<!-- 중성화여부 -->
                                        		<li>
                                        		    <label class="fieldlabels">중성화여부<span class="text-danger">*</span></label>
											        <select name="neut" id="userPetNeut" onchange="getUserPetNeut()">
														<option value="0" selected>중성화여부를 선택해주세요.</option>											        
	                                                    <option value="Y">O</option>
	                                                    <option value="N">X</option>
	                                                    <option value="">모름</option>                                                  
                                                    </select>
                                        		</li>
                                        		<!-- 특이사항 -->
                                        		<li>
                                        			<label for="exampleFormControlTextarea1">특이사항</label>
                                              		<textarea name="message" id="userPetMsg" class="form-control" rows="5" onchange="getUserPetMsg()"></textarea>
                                        		</li>
                                        	</ul>
                                        </div>
                                    </div>
                                    <!-- 버튼 -->
                                    <input type="button" name="next" class="next action-button" value="Next" />
                                </fieldset>
                                
                                <!-- STEP 02 -->
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">이벤트 선택</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 2 - 4</h2>
                                            </div>
                                        </div> 
                                        <div class="form-user-input">
                                        	<ul>
                                        		<!-- 서비스종류 -->
                                        		<li>
                                       		    	<label class="fieldlabels">서비스 종류<span class="text-danger">*</span></label>
                                       		    	<select name="serviceType" id="serviceType" onchange="getServiceType()">
		                                            	<option value="0" selected>서비스을 선택해주세요.</option>
                                                		<option value="목욕(3KG 이하)">목욕(3KG 이하)</option>
	                                                    <option value="목욕(3~5KG)">목욕(3~5KG)</option>
	                                                    <option value="목욕(5~7KG)">목욕(5~7KG)</option>
	                                                    <option value="목욕(7KG 이상)">목욕(7KG 이상)</option>
	                                                    <option value="미용(3KG이하)">미용(3KG이하)</option>
	                                                    <option value="미용(3~5KG)">미용(3~5KG)</option>
	                                                    <option value="미용(5~7KG)">미용(5~7KG)</option>
	                                                    <option value="미용(7KG 이상)">미용(7KG 이상)</option>
	                                                    <option value="스파(5KG 이하)">스파(5KG 이하)</option>
	                                                    <option value="스파(5KG 이상)">스파(5KG 이상)</option>
	                                                    <option value="배변훈련">배변훈련</option>
	                                                    <option value="픽업서비스">픽업서비스</option>
		                                            </select> 
                                        		</li>
                                        		<!-- 룸 종류 -->
                                        		<li>
                                       		    	<label class="fieldlabels">룸 종류<span class="text-danger">*</span></label>
                                       		    	<select name="roomType" id="roomType" onchange="getRoomType()">
		                                            	<option value="0" selected>룸을 선택해주세요.</option>
                                                		<option value="101">스탠다드</option>
	                                                    <option value="102">스탠다드</option>
	                                                    <option value="103">스탠다드</option>
	                                                    <option value="104">스탠다드</option>
	                                                    <option value="105">스탠다드</option>
	                                                    <option value="106">스탠다드</option>
	                                                    <option value="107">스탠다드</option>
	                                                    <option value="108">스탠다드</option>
	                                                    <option value="109">스탠다드</option>
	                                                    <option value="110">스탠다드</option>
	                                                    <option value="201">디럭스</option>
	                                                    <option value="202">디럭스</option>
	                                                    <option value="203">디럭스</option>
	                                                    <option value="204">디럭스</option>
	                                                    <option value="205">디럭스</option>
	                                                    <option value="206">디럭스</option>
	                                                    <option value="301">프리미엄</option>
	                                                    <option value="302">프리미엄</option>
	                                                    <option value="303">프리미엄</option>

		                                            </select> 
                                        		</li>
                                        		<!-- 투숙PET -->
                                        		<li>
                                        		<label class="fieldlabels">투숙 pet<span class="text-danger">*</span></label>
	                                            	<select name="pets" id="stayPets" onchange="getStayPets()">
	                                                	<option value="0" selected>투숙 Pet을 선택해주세요.</option>
	                                                	<optgroup label=" 강아지">
	                                                  		<option value="dog1">강아지 : 1마리</option>
	                                                  		<option value="dog2">강아지 : 2마리</option>
	                                                  		<option value="dog3">강아지 : 3마리</option>
	                                                	</optgroup>
	                                                	<optgroup label="고양이">
	                                                  		<option value="cat1">고양이 : 1마리</option>
	                                                  		<option value="cat2">고양이 : 2마리</option>
	                                                  		<option value="cat3">고양이 : 3마리</option>
	                                                	</optgroup>
	                                            	</select> 
                                        		</li>
                                        		<!-- 예약날짜 -->
                                        		<li>
                                        		 	<label class="fieldlabels">예약 날짜(체크인)<span class="text-danger">*</span></label>
	                                                <input type="date" name ="startDate" id="startDate" onchange="getStartDate()">
                                                </li>
                                        		<!-- 예약날짜(체크인) -->
                                        		<li>
                                        		 	<label class="fieldlabels">예약 시간<span class="text-danger">*</span></label>
                                        		 	<input type="time" name ="startTime" id="startTime" onchange="getStartTime()">
												</li>                                      		
                                        		<li>
                                        		 	<label class="fieldlabels">예약 날짜(체크아웃)<span class="text-danger">*</span></label>
	                                                <input type="date" name ="endDate" id="endDate" onchange="getEndDate()">
                                                </li>
                                        		<!-- 예약날짜(체크인) -->
                                        		<li>
                                        		 	<label class="fieldlabels">예약 시간<span class="text-danger">*</span></label>
                                        		 	<input type="time" name ="endTime" id="endTime" onchange="getEndTime()">
												</li>                                      		
                                        	</ul>
                                        </div>
                                    </div>
                                    <!-- 버튼 -->
                                    <input type="button" name="previous" class="previous action-button-previous" value="Previous">
                                    <input type="button" name="next" class="next action-button" value="Next">  
                               </fieldset>
                               
                               <!-- STEP 03 -->
                               <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">예약내역 확인</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 3 - 4</h2>
                                            </div>
                                        </div>
                                       	<div class="row">
                                            <div class="col-md-12">
                                                 <div class="price-table-container">
                                                     <table class="table table-bordered reserv-listbox">
														 <tr>
															 <th>이름</th>
															 <td><span id="setPetName"></span></td>
														 </tr>
														 <tr>
															 <th>분류</th>
															 <td><span id="setPetCategory"></span></td>
														 </tr>
														 <tr>
															 <th>성별</th>
															 <td><span id="setPetGender"></span></td>
														 </tr>
														 <tr>
															 <th>나이</th>
															 <td><span id="setPetAge"></span></td>
														 </tr>
														 <tr>
															 <th>중성화 여부</th>
															 <td><span id="setPetNeut"></span></td>
														 </tr>
														 <tr>
															 <th>특이사항</th>
															 <td><span id="setPetMsg"></span></td>
														 </tr>
														 <tr>
															 <th>서비스 종류</th>
															 <td><span id="setserviceType"></span></td>
														 </tr>
														 <tr>
															 <th>룸 종류</th>
															 <td><span id="setroomType"></span></td>
														 </tr>
														 <tr>
															 <th>투숙 인원</th>
															 <td><span id="setStayPets"></span></td>
														 </tr>
														 <tr>
															 <th>예약 날짜(체크인)</th>
															 <td><span id="setStartDate"></span></td>
														 </tr>
														 <tr>
															 <th>예약 시간(체크인)</th>
															 <td><span id="setStartTime"></span></td>
														 </tr>
														 <tr>
															 <th>예약 날짜(체크아웃)</th>
															 <td><span id="setEndDate"></span></td>
														 </tr>
														 <tr>
															 <th>예약 시간(체크아웃)</th>
															 <td><span id="setEndTime"></span></td>
														 </tr>														 														 
													 </table>
                                                 </div>
                                            </div>                                            
                                        </div>    
                                    </div>
                                   	<!-- 버튼 -->
                                    <input type="button" name="previous" class="previous action-button-previous" value="Previous">
                                    <input type="button" name="next" class="next action-button" value="Next">                                      
                                </fieldset>
                                <!-- STEP 04 -->
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">완료</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 4 - 4</h2>
                                            </div>
                                        </div>
                                        <h2 class="purple-text text-center"><strong>이용해 주셔서 감사합니다!</strong></h2> <br>
                                        <div class="row justify-content-center">
                                            <div class="col-3"> 
                                            	<img src="${ pageContext.servletContext.contextPath }/resources/media/img/GwStPmg.png" style="width:150px; height:150px">
                                           	</div>
                                        </div>
                                    </div>
                                     <input type="submit" name="complete" class="next action-button" value="예약하기" />       
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
            <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"> </script>
            <script id="rendered-js">
                $(document).ready(function () {

                    var current_fs, next_fs, previous_fs; //fieldsets
                    var opacity;
                    var current = 1;
                    var steps = $("fieldset").length;

                    setProgressBar(current);

                    $(".next").click(function () {

                        current_fs = $(this).parent();
                        next_fs = $(this).parent().next();

                        //Add Class Active
                        $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

                        //show the next fieldset
                        next_fs.show();
                        //hide the current fieldset with style
                        current_fs.animate({
                            opacity: 0
                        }, {
                            step: function (now) {
                                // for making fielset appear animation
                                opacity = 1 - now;

                                current_fs.css({
                                    'display': 'none',
                                    'position': 'relative'
                                });

                                next_fs.css({
                                    'opacity': opacity
                                });
                            },
                            duration: 500
                        });

                        setProgressBar(++current);
                    });

                    $(".previous").click(function () {

                        current_fs = $(this).parent();
                        previous_fs = $(this).parent().prev();

                        //Remove class active
                        $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

                        //show the previous fieldset
                        previous_fs.show();

                        //hide the current fieldset with style
                        current_fs.animate({
                            opacity: 0
                        }, {
                            step: function (now) {
                                // for making fielset appear animation
                                opacity = 1 - now;

                                current_fs.css({
                                    'display': 'none',
                                    'position': 'relative'
                                });

                                previous_fs.css({
                                    'opacity': opacity
                                });
                            },
                            duration: 500
                        });

                        setProgressBar(--current);
                    });

                    function setProgressBar(curStep) {
                        var percent = parseFloat(100 / steps) * curStep;
                        percent = percent.toFixed();
                        $(".progress-bar").
                        css("width", percent + "%");
                    }

                    $(".submit").click(function () {
                        return false;
                    });

                });
                //# sourceURL=pen.js
            </script>
            <!-- [CHJ.0418] form get value -->
            <script>
         	 //[01] 이름
      		function getUserPetName() {
      			var selPetNameVal = document.getElementById("userPetName").value; //value
            	document.getElementById("setPetName").innerText = selPetNameVal;	
      		}
          
      		//[01] 분류
     		function getCategorySelect() {
         		var selCategoryOpt = document.getElementById("userPetCategory"); //element
            	var selCategoryVal = selCategoryOpt.options[selCategoryOpt.selectedIndex].value; //value
            	var selCategoryTxt = selCategoryOpt.options[selCategoryOpt.selectedIndex].text; //text
            	document.getElementById("setPetCategory").innerText = selCategoryTxt;
     		}
     		//[01] 성별
      		function getUserPetGender() {
      			var selPetGenderOpt = document.getElementById("userPetGender"); //element
            	var selPetGenderVal = selPetGenderOpt.options[selPetGenderOpt.selectedIndex].value; //value
            	var selPetGenderTxt = selPetGenderOpt.options[selPetGenderOpt.selectedIndex].text; //text
            	document.getElementById("setPetGender").innerText = selPetGenderTxt;	
      		}          		
     		//[01] 나이
      		function getUserPetAge() {
      			var selPetAgeOpt = document.getElementById("userPetAge"); //element
            	var selPetAgeVal = selPetAgeOpt.options[selPetAgeOpt.selectedIndex].value; //value
            	var selPetAgeTxt = selPetAgeOpt.options[selPetAgeOpt.selectedIndex].text; //text
            	document.getElementById("setPetAge").innerText = selPetAgeTxt;	
      		}          		
     		//[01] 중성화
      		function getUserPetNeut() {
      			var selPetNeutOpt = document.getElementById("userPetNeut"); //element
            	var selPetNeutVal = selPetNeutOpt.options[selPetNeutOpt.selectedIndex].value; //value
            	var selPetNeutTxt = selPetNeutOpt.options[selPetNeutOpt.selectedIndex].text; //text
            	document.getElementById("setPetNeut").innerText = selPetNeutTxt;	
      		}           		
     		//[01] 특이사항
      		function getUserPetMsg() {
      			var selPetMsgVal = document.getElementById("userPetMsg").value; //value
            	document.getElementById("setPetMsg").innerText = selPetMsgVal;	
      		}       
      		//[02] 서비스 종류
     		function getServiceType() {
      			var selserviceTypeOpt = document.getElementById("serviceType");
            	var selserviceTypeVal = selserviceTypeOpt.options[selserviceTypeOpt.selectedIndex].value;
            	var selserviceTypeTxt = selserviceTypeOpt.options[selserviceTypeOpt.selectedIndex].text;
            	document.getElementById("setserviceType").innerText = selserviceTypeTxt;
     		}
     		//[02] 룸 종류
     		function getRoomType() {
      			var selroomTypeOpt = document.getElementById("roomType");
            	var selroomTypeVal = selroomTypeOpt.options[selroomTypeOpt.selectedIndex].value;
            	var selroomTypeTxt = selroomTypeOpt.options[selroomTypeOpt.selectedIndex].text;
            	document.getElementById("setroomType").innerText = selroomTypeTxt;
     		}
     		//[02] 투숙
     		function getStayPets() {
      			var selStayPetsOpt = document.getElementById("stayPets");
            	var selStayPetsVal = selStayPetsOpt.options[selStayPetsOpt.selectedIndex].value;
            	var selStayPetsTxt = selStayPetsOpt.options[selStayPetsOpt.selectedIndex].text;
            	document.getElementById("setStayPets").innerText = selStayPetsTxt;         			
     		}
     		//[02] 예약날짜(체크인)
     		function getStartDate() {
      			var selstartDateVal = document.getElementById("startDate").value;
            	document.getElementById("setStartDate").innerText = selstartDateVal;	
     		}
     		//[02] 예약시간(체크인)
     		function getStartTime() {
      			var selStartTimeVal = document.getElementById("startTime").value;
     			document.getElementById("setStartTime").innerText = selStartTimeVal;
     		}
     		//[02] 예약날짜(체크아웃)
  			function getEndDate() {
      			var selEndDateVal = document.getElementById("endDate").value;
            	document.getElementById("setEndDate").innerText = selEndDateVal;        			
     		}
     		//[02] 예약시간(체크아웃)
  			function getEndTime() {
      			var selEndTimeVal = document.getElementById("endTime").value;
            	document.getElementById("setEndTime").innerText = selEndTimeVal;        			
     		}
       		</script>
       		<!--// [CHJ.0418] form get value -->
        </section>
    </div>
    <!--// main_content -->

    <!-- Dependency Scripts -->
    <script src="dependencies/jquery/jquery.min.js"></script>
    <script src="dependencies/jquery-ui/jquery-ui.min.js"></script>
    <script src="dependencies/bootstrap/js/bootstrap.min.js"></script>
    <script src="dependencies/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="dependencies/swiper/js/swiper.jquery.min.js"></script>
    <script src="dependencies/swiperRunner/js/swiperRunner.min.js"></script>
    <script src="dependencies/magnific-popup/js/jquery.magnific-popup.min.js"></script>
    <script src="dependencies/jquery.appear.bas2k/jquery.appear.js"></script>
    <script src="dependencies/revslider/js/jquery.themepunch.revolution.min.js"></script>
    <script src="dependencies/revslider/js/jquery.themepunch.tools.min.js"></script>
    <script src="dependencies/jquery.parallax-scroll/jquery.parallax-scroll.js"></script>
    <script src="dependencies/wow/js/wow.min.js"></script>
    <script src="dependencies/jquery.spinner/js/jquery.spinner.min.js"></script>
    <script src="dependencies/gmap3/gmap3.min.js"></script>
    <script src="dependencies/bootstrap-star-rating/js/star-rating.min.js"></script>

    <!-- Revolution Slider Plugin -->

    <script src="dependencies/revslider/js/extensions/revolution.extension.actions.min.js"></script>
    <script src="dependencies/revslider/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script src="dependencies/revslider/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script src="dependencies/revslider/js/extensions/revolution.extension.navigation.min.js"></script>
    <script src="dependencies/revslider/js/extensions/revolution.extension.parallax.min.js"></script>

    <!-- Site Scripts -->
    <script src="assets/js/smooth_scroll.min.js"></script>
    <script src="assets/js/app.js"></script>

</body>

</html>