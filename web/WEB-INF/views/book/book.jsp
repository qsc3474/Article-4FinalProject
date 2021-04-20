<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개편한 병원- 진료예약</title>
 <!-- Dependency Styles -->
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/font-awesome/css/gp-icons.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/gp-icons/style.css" type="text/css">
    <!-- <link rel="stylesheet" href="dependencies/etlinefont-bower/style.css" type="text/css"> -->
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap-star-rating/css/star-rating.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/swiper/css/swiper.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/wow/animate.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery-ui/css/jquery-ui.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/css/settings.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/magnific-popup/magnific-popup.css" type="text/css">

    <!-- Site Stylesheet -->
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/css/app.css" type="text/css">

    <!-- 추가 -->
    <link rel="apple-touch-icon" type="image/png"
        href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
    <meta name="apple-mobile-web-app-title" content="CodePen">

    <link rel="shortcut icon" type="image/x-icon"
        href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />
    <link rel="mask-icon" type=""
        href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg"
        color="#111" />
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'>

</head>
<body>

<jsp:include page="../common/header.jsp"></jsp:include>

      <section class="step-title">
            <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>병원예약</h2>
            </div>
        </section>
        <!-- title -->

        <section id="booking" class="bk-sec bg-white pt-null">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-11 col-sm-10 col-md-10 col-lg-6 col-xl-5 text-center p-0 mt-3 mb-2">
                        <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                            <form id="msform" action="${pageContext.request.contextPath}/hp/book/insert" method="post">
                                <!-- progressbar -->
                                <ul id="progressbar">
                                    <li class="active" id="account"><strong>동물정보입력</strong></li>
                                    <li id="personal"><strong>진료 선택</strong></li>
                                    <li id="payment"><strong>예약정보</strong></li>
                                    <li id="confirm"><strong>완료</strong></li>
                                </ul>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated"
                                        role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div> <br> <!-- fieldsets -->
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
                                        	 <label class="fieldlabels">이름<span class="text-danger">*</span></label>
                                        	<input type="text" name="petName" id="userPetName" placeholder="이름" onchange="getUserPetName()">
                                            <label class="fieldlabels">분류 (종)<span class="text-danger">*</span></label>
                                            <select name="kind" id="userPetCategory" onchange="getCategorySelect()" >
                                            <option value="0" selected>분류를 선택해주세요.</option>
                                                  <option value="D">Dog</option>
                                                  <option value="C">Cat</option>
                                              </select> 
                                            <label class="fieldlabels">성별 <span class="text-danger">*</span></label> 
                                              <select name="gender" id="userPetGender" onchange="getUserPetGender()">
                                              <option value="0" selected>성별을 선택해주세요.</option>
                                                  <option value="M">남</option>
                                                  <option value="F">여</option>
                                              </select> 
                                               <label class="fieldlabels">나이<span class="text-danger">*</span></label>
												 <select name="age" id="userPetAge" onchange="getUserPetAge()" >
												 <option value="0" selected>나이를 선택해주세요.</option>
                                                  <option value="baby">1년 이하</option>
                                                  <option value="adult">성견/성묘</option>
                                                   <option value="old">노견/노묘</option>
                                              </select>  
                                            <label class="fieldlabels">중성화여부<span class="text-danger">*</span></label>
												 <select name="neut" id="userPetNeut" onchange="getUserPetNeut()">
												 <option value="0" selected>중성화여부를 선택해주세요.</option>	
                                                  <option value="Y">O</option>
                                                  <option value="N">X</option>
                                                 <option value=" ">모름</option>
                                                  
                                              </select> 
                                            <label for="exampleFormControlTextarea1">특이사항</label>
                                              <textarea class="form-control"  name="message" id="userPetMsg" rows="5" onchange="getUserPetMsg()"></textarea>
                                    </div> 
                                    <input type="button" name="next" class="next action-button" value="Next" />
                                </fieldset>
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">진료 시간 선택</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 2 - 4</h2>
                                            </div>
                                        </div> 
                                       			
                                        <label class="fieldlabels">예약 시간<span class="text-danger">*</span></label>
                                      	<input type="date" name ="date" id="roomDate" onchange="getRoomDate()">
                                  		<select name ="time" id="startTime" onchange="getStartTime()">
                                  		<option>시간을 선택해주세요</option>
                                  		<optgroup label="오전"></optgroup>
                                  		<option value="10:00"> 10:00</option>
                                  		<option value="11:00"> 11:00</option>
                                  		<option value="12:00"> 12:00</option>
                                  		
                                  		<optgroup label="오후"></optgroup>
                                  		
                                  		<option value="14:00"> 2:00</option>
                                  		<option value="15:00"> 3:00</option>
                                  		<option value="16:00"> 4:00</option>
 		                                <option value="17:00"> 5:00</option>
                                        <option value="18:00"> 6:00</option>
                                  		</select>
                                              
                                    </div> 
                                    <input type="button" name="previous" class="previous action-button-previous"
                                        value="Previous" />
                                    <input type="button" name="next" class="next action-button" value="Next" />
                                </fieldset>
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">예약내역 확인</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 3 - 4</h2>
                                            </div>
                                        <div class="row" style="margin-bottom: 20px;">
                                            <div class="col-md-12 text-center">
                                                <div class="gp-price-table-one clearfix wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="0.3s">
                                                    <div class="price-table-container">
                                                        <div class="price-inner">
                                                            <span class="currency"></span>
                                                            <span class="price">예약 확인</span>
                                                        </div>
                                                        <h5 class="title">예약내용</h5>
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
															 <th>예약 날짜</th>
															 <td><span id="setRoomDate"></span></td>
														 </tr>
														 <tr>
															 <th>예약 시간(체크인)</th>
															 <td><span id="setStartTime"></span></td>
														 </tr>
																											 														 
													 </table>	
                                                    </div>
                                                </div>
                                            </div>
                                            </div>
                                            <!-- /.col-md-4 -->
                                        </div>    
                                    </div> 
                                    <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                                    <input type="submit" name="complete" class="next action-button" value="예약하기" />
                               
                                </fieldset>
                                
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">Finish:</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 4 - 4</h2>
                                            </div>
                                        </div> <br><br>
                                        <h2 class="purple-text text-center"><strong>SUCCESS !</strong></h2> <br>
                                        <div class="row justify-content-center">
                                            <div class="col-3"> <img src="https://i.imgur.com/GwStPmg.png"
                                                    class="fit-image"> </div>
                                        </div> <br><br>
                                        <div class="row justify-content-center">
                                            <div class="col-7 text-center">
                                                <h5 class="purple-text text-center">You Have Successfully Booked!</h5>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                </form>
                        </div>
                    </div>
                </div>
            </div>
           
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
         	
         		//[02] 예약날짜
         		function getRoomDate() {
          			var selRoomDateVal = document.getElementById("roomDate").value;
	            	document.getElementById("setRoomDate").innerText = selRoomDateVal;	
         		}
         		//[02] 예약시간(체크인)
         		function getStartTime() {
          			var selStartTimeVal = document.getElementById("startTime").value;
         			document.getElementById("setStartTime").innerText = selStartTimeVal;
         		}
         		
       		</script>
           </section>
           
          

            <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
            
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
		 <!-- Dependency Scripts -->
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery-ui/jquery-ui.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/swiper/js/swiper.jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/swiperRunner/js/swiperRunner.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/magnific-popup/js/jquery.magnific-popup.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery.appear.bas2k/jquery.appear.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/jquery.themepunch.revolution.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/jquery.themepunch.tools.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery.parallax-scroll/jquery.parallax-scroll.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/wow/js/wow.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery.spinner/js/jquery.spinner.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/gmap3/gmap3.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap-star-rating/js/star-rating.min.js"></script>

    <!-- Revolution Slider Plugin -->

    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.actions.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.navigation.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.parallax.min.js"></script>

    <!-- Site Scripts -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/js/smooth_scroll.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/js/app.js"></script>



</body>
</html>