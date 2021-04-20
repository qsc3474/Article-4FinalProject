<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .body {
            position: relative;
            width: 100%;
            height: 100%;
        }

        .errorWrap {
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -180px 0 0 -180px;
        }

        .errorWrap img {
            max-width: 100%;
            max-height: 100%;
        }
        .ht-title {margin-top: 100px;}
        .bt{margin-top: 380px;}
    </style>
</head>
<body>
	<!-- get post 잘못처리 했을떄 -->
	<h1 align="center">요청 권한이 없는 페이지 입니다~</h1>
	<section>
            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>404 ERROR</h2>
                <p>
                    페이지가 존재하지 않거나 사용할 수 없는 페이지 입니다.<br>
                    입력하신 주소가 정확한지 다시 한번 확인해 주세요
                </p>
                <div class="errorWrap">
                    <img src="media/img/errorPage404.png" alt="404">
                </div>
                <div class="bt">
                    <a href="index.html" target="_self" class="gp-btn color-two medium btn-bradius">메인이동</a>
                </div>
        </section>
	
</body>
</html>