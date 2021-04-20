<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${ pageContext.servletContext.contextPath }/member/update" method="post" class="vanilla vanilla-form" novalidate=""
                                data-vf-id="76ae1c44-b904-d78a-f1c8-d8d80edead50">
	<div class="col-sm-12 pl-10">
	    <div class="form-group col-sm-3">
	        <label for="#">이메일</label>
	    </div>
	    <div class="form-group col-sm-3" style="padding-right: 0;">
	        <input type="text" class="form-control" name="email1" >
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
	    	<input type="button" class="gp-btn btn-primary small" value="검색" id="searchZipCode" style="padding: 10px 15px;">
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
	    <div class="form-group col-sm-3">
	        <label for="#">세션데이터</label>
	    </div>
	    <div class="col-sm-7 pl-10">
	        <div class="form-group">
	        	<input type="text" class="form-control" value="${ sessionScope.loginMember.email }">
	        	<input type="text" class="form-control" value="${ sessionScope.loginMember.phone }">
	        	<input type="text" class="form-control" value="${ sessionScope.loginMember.address }">
	        </div>
	    </div>
	</div>
	<div class="text-center mt">
	    <button type="submit" class="gp-btn btn-primary larg">정보수정</button>
	</div>
	<div class="text-center mt">
	    <button type="button" class="gp-btn btn-primary larg" id="withdrawMember">탈퇴하기</button>
	</div>
</form>
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
</script>
<script>
	if(document.getElementById("withdrawMember")){
		const $withdrawMember = document.getElementById("withdrawMember");
		$withdrawMember.onclick = function(){
			location.href = "${ pageContext.servletContext.contextPath }/member/withdraw";
		}
	}
</script>
</body>
</html>