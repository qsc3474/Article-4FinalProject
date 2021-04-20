<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개편한 세상- 정보입력</title>
</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div id="main_content">
		<!-- title -->
        <section class="step-title">
            <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>회원가입</h2>
                <p>
                    이용약관동의
                </p>
            </div>
        </section>

        <!-- 회원가입 -->
        <section id="sign-up">
            <div class="container box-line">
                    <div class="col-md-8 col-md-offset-2" >
                        <div class="form-container">
                            <form action="${ pageContext.servletContext.contextPath }/member/regist" method="post" class="vanilla vanilla-form" novalidate=""
                                data-vf-id="76ae1c44-b904-d78a-f1c8-d8d80edead50">
                                <div class="row">
                                    <div class="col-sm-12 pr-10">
                                        <div class="form-group col-sm-3">
                                            <label for="#">아이디</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="id" class="form-control" name="id" placeholder="이름"
                                                required="required">
                                        </div>
                                        <div class="col-md-2">
                                            <a href="#" class="gp-btn btn-primary small"
                                                style="padding: 10px 15px;">중복확인</a>
                                        </div>
                                    </div>
                                    <!--/column -->
                                    <div class="col-sm-12 pl-10">
                                        <div class="form-group col-sm-3">
                                            <label for="#">비밀번호</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="password" class="form-control" name="pwd" placeholder="비밀번호">
                                        </div>
                                        <!--/.form-group -->
                                    </div>
                                    <div class="col-sm-12 pl-10">
                                        <div class="form-group col-sm-3">
                                            <label for="#">비밀번호확인</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="password" class="form-control" placeholder="비밀번호확인">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 pr-10">
                                        <div class="form-group col-sm-3">
                                            <label for="#">이름</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="text" class="form-control" name="name" placeholder="이름"
                                                required="required">
                                        </div>

                                    </div>
                                    <div class="col-sm-12 pl-10">
                                    	<div class="form-row">
                                            <div class="form-group col-sm-3">
                                                <label for="#">생년월일</label>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <input type="text" class="form-control" name="birthdayYear" id="yearInput" placeholder="년(4자)">
                                            </div>
                                            <div class="form-group col-md-2">
                                            	<select id="monthInput" name="birthdayMonth" class="form-control">
                                                    <option selected>월</option>
                                                    <option value="01">1</option>
                                                    <option value="02">2</option>
                                                    <option value="03">3</option>
                                                    <option value="04">4</option>
                                                    <option value="05">5</option>
                                                    <option value="06">6</option>
                                                    <option value="07">7</option>
                                                    <option value="08">8</option>
                                                    <option value="09">9</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-2">
                                                <input type="text" class="form-control" id="dayInput" name="birthdayDay" placeholder="일">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 pl-10">
                                        <div class="form-group col-sm-3">
                                            <label for="#">이메일</label>
                                        </div>
                                        <div class="form-group col-sm-3" style="padding-right: 0;">
                                            <input type="text" class="form-control" name="email1" placeholder="이메일">
                                        </div>
                                        <div class="form-group col-sm-1" style="padding-right: 0;">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="inputGroupPrepend2"
                                                    style="padding-left: 10px;">@</span>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <select id="inputState" name="email2" class="form-control">
                                                <option selected value="naver.com">naver.com</option>
                                                <option>gmail.com</option>
                                                <option>gmail.com</option>
                                                <option>gmail.com</option>
                                                <option>gmail.com</option>
                                            </select>
                                        </div>
                                    </div>
                                    <!--/column -->
                                    <div class="col-md-12">
                                        <div class="form-row">
                                            <div class="form-group col-sm-3">
                                                <label for="#">전화번호</label>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <select id="inputState" name="tel1" class="form-control">
                                                    <option selected value="010">010</option>
                                                    <option value="011">011</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-2">
                                                <input type="text" class="form-control" name="tel2" id="inputCity">
                                            </div>
                                            <div class="form-group col-md-2">
                                                <input type="text" class="form-control" name="tel3" id="inputZip">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group col-sm-3">
                                            <label for="#">우편번호</label>
                                        </div>
                                        <div class="col-sm-7 pl-10">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="address1" id="zipCode" readonly>
                                            </div>
                                        </div>
                                        <div class="col-md-2 align-self-center">
                                        	<input type="button" class="gp-btn btn-primary small" value="검색" id="searchZipCode" style="padding: 10px 30px; border:0;">
                                        </div>
                                        <div class="form-group col-sm-3">
                                            <label for="#">주소</label>
                                        </div>
                                        <div class="col-sm-7 pl-10">
                                            <div class="form-group">
                                            	<input type="text" class="form-control" name="address2" id="address1" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group col-sm-3">
                                            <label for="#">상세주소</label>
                                        </div>
                                        <div class="col-sm-7 pl-10">
                                            <div class="form-group">
                                            	<input type="text" class="form-control" name="address3" id="address2">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 text-center">
                                        <label>
                                            <input type="checkbox" name="subject" value="General">
                                            <label> 사실에 근거하여 허위로 작성 하지 않았습니다</label>
                                        </label>
                                    </div>
                                </div>
                                <div class="text-center mt">
				                    <button type="submit" class="gp-btn btn-primary larg" style="border:0">회원가입</button>
				                </div>
                            </form>
                        </div>
                    </div>
                <!-- /.row -->
                <div class="cf"></div>
            </div>
        </section>
        <!-- 회원가입 -->
	</div>
	<!-- 다음 우편번호 api -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		const $goMain = document.getElementById("goMain");
		
		$searchZipCode.onclick = function(){
			
			new daum.Postcode({
				oncomplete : function(data){
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
		
		$goMain.onclick=function(){
			location.href = "${ pageContext.servletContext.contextPath}";
		}
	</script>
</body>
</html>