<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개편한 세상- 마이페이지/정보수정</title>
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
</head>
<body>

<jsp:include page="../common/header.jsp"/>

         <form id="form" action="" method="post" class="vanilla vanilla-form" 
                                data-vf-id="76ae1c44-b904-d78a-f1c8-d8d80edead50">
        <section class="singUp-sec">
            <div class="container box-line">
                <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                    <h2>마이페이지</h2>
                </div>
                <div class="row ">
                    <div class="col-md-9 col-md-offset-2">
                        <div class="form-container">
                           
                                <div class="row">
                                    <div class="col-sm-12 pr-10">
                                        <div class="form-group col-sm-2">
                                            <label for="#">아이디</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="text" class="form-control" name="id" readonly value="${sessionScope.loginMember.id }">
                                        </div>
                                    </div>
                                    <!--/column -->
                                    <div class="col-sm-12 pl-10">
                                        <div class="form-group col-sm-2">
                                            <label for="#">비밀번호</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="password" class="form-control" placeholder="비밀번호" name="memberPwd">
                                        </div>
                                        <!--/.form-group -->
                                    </div>
                                    <div class="col-sm-12 pl-10">
                                        <div class="form-group col-sm-2">
                                            <label for="#">비밀번호확인</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="password" class="form-control" placeholder="비밀번호확인">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 pr-10">
                                        <div class="form-group col-sm-2">
                                            <label for="#">이름</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="text" class="form-control" name="name" readonly value="${sessionScope.loginMember.name }">
                                        </div>

                                    </div>
                                    <div class="col-sm-12 pl-10">
                                        <div class="form-group col-sm-2">
                                            <label for="#">이메일</label>
                                        </div>
                                        <div class="form-group col-sm-3" style="padding-right: 0;">
                                            <input type="text" class="form-control" name="email" value="${sessionScope.loginMember.email }">
                                        </div>
                                        <div class="form-group col-sm-1" style="padding-right: 0;">
                                            <div class="input-group-prepend">
                                               
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                          
                                        </div>
                                        
                                    </div>
                                    <!--/column -->
                                    <div class="col-md-12">
                                        <div class="form-row">
                                            <div class="form-group col-sm-2">
                                                <label for="#">전화번호</label>
                                            </div>
                                            <c:set var="TextValue" value="${sessionScope.loginMember.phone }"/>
                                           

                                            <div class="form-group col-md-3">
                                                <select id="inputState" class="form-control" name="tel1">
                                                    <option selected>010</option>
                                                    <option>011</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-2">
                                                <input type="text" class="form-control" name="tel2" value="${fn:substring(TextValue,2,6) }">
                                            </div>
                                            <div class="form-group col-md-2">
                                                <input type="text" class="form-control" name="tel3" value="${fn:substring(TextValue,6,11) }">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group col-sm-2">
                                            <label for="#">주소</label>
                                        </div>
                                        
                                        
                                        <div class="col-md-7" style="float: right; margin-right: 220px;">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="address1" id="zipCode"  readonly>
                                            </div>
                                        </div>
                                          <div class="col-md-7" style="float: right; margin-right: 220px;">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="address2" placeholder="상세주소" id="address1" readonly>
                                            </div>
                                        </div>
                                          <div class="col-md-7" style="float: right; margin-right: 220px;">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="address3" placeholder="상세주소" id="address2" >
                                            </div>
                                        </div>
                                        <br>
                                        <div class="col-sm-7 pl-10">
                                            <div class="form-group">
                                            </div>
                                        </div>
                                        <div class="col-md-2 align-self-center">
                                            <input type="button"  class="gp-btn btn-dark small" style=" margin-bottom: 5px; color: #fff;" value="검색" id="searchZipCode">
                                        </div>
                                        
                                        <div class="col-sm-7" style="float: right; margin-right: 220px;">
                                            <div class="form-group">
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                           
                        </div>
                    </div>
                </div>
                <!-- /.row -->
                <div class="text-center" style="margin-right: -50px;">
                    <input type="button" class="gp-btn btn-dark small" style=" margin-bottom: 5px; color: #fff;"value="수정" onclick="postRequest('updateMember')">
                    <input type="button"  class="gp-btn btn-dark small" style=" margin-bottom: 5px; color: #fff; background: #FDC647;" value="탈퇴" onclick="postRequest('deleteMember')">
                
                </div>
            </div>
        </section>
        </form>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		
		$searchZipCode.onclick = function(){
			
			new daum.Postcode({
				oncomplete : function(data){
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
	
	</script>
	<script>
		function postRequest(intent){
			var $form = document.getElementById("form");
			var passwordValue = document.getElementsByName("memberPwd")[0].value;
			
			// "", null, undefined, 0, NaN에 해당되면 false
			if(!passwordValue || passwordValue === "") {	// 사용자가 비번을 입력하지 않았을 때
				alert("비밀번호는 반드시 입력해야 합니다.");
				document.getElemetsByName("memberPwd")[0].focus();
			}
			
			requestPath = "<%=request.getContextPath()%>";
			
			switch(intent){
				case "updateMember" : requestPath += "/member/update"; break;
				case "deleteMember" : requestPath += "/member/delete"; break;
			}
			
			$form.action = requestPath;
			$form.submit();
		}
	</script>
</body>
</html>