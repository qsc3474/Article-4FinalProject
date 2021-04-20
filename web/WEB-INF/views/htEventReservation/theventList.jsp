<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>개편한 호텔 - 이벤트룸 예약확인</title>
    <!-- 기기(디바이스)별 크기를 인식 하고 1.0으로 확대 및 축소 없이해서 보여줌 -->
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    
    <link  rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap">
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
     <!--폰트어썸 웹 아이콘-->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <!-- 커스텀 스타일시트 -->
    <script src="/creation/resources/js/event.js"></script>
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="/creation/resources/js/event.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/hotel/common/header.jsp"/>
 <section class="title-sec">
    <div class="row">
        <h2 class="section-title section-title-upper section-title-line text-center">
            이벤트룸 예약확인
        </h2>
    </div>
 </section>
<section id="user-info">
            <div class="container">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title hide">회원 정보</h3>
                            <div class="card-options">
                                <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                <a href="#" class="card-options-fullscreen" data-toggle="card-fullscreen"><i class="fe fe-maximize"></i></a>
                                <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                <div class="item-action dropdown ml-2">
                                    <a href="javascript:void(0)" data-toggle="dropdown"><i class="fe fe-more-vertical"></i></a>
                                    <div class="dropdown-menu dropdown-menu-right vivify popIn">
                                        <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fe fe-tag"></i> Action </a>
                                        <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fe fe-edit-2"></i> Another action </a>
                                        <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fe fe-message-square"></i> Something else here</a>
                                        <div class="dropdown-divider"></div>
                                        <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fe fe-link"></i> Separated link</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive table_e2">
                                <table class="table table-hover table-vcenter text-nowrap mb-0">
                                    <thead>
                                        <tr>
                                            <th>
                                                <label class="custom-control custom-checkbox mb-0">
                                                    <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                    <span class="custom-control-label">&nbsp;</span>
                                                </label>
                                            </th>
                                            <th>No.</th>                                    
                                            <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;서비스</th>
                                            <th>&nbsp;&nbsp;&nbsp;&nbsp;룸</th>
                                            <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;체크인</th>                                    
                                            <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;체크아웃</th>                                    
                                            <th>수정/취소</th>                                    
                                   
                                        </tr>
                                    </thead>
                                    <tbody>
                                     <c:forEach items="${ requestScope.eventList }" var="htevent">
                                        <tr>
                                            <td class="width45">
                                                <label class="custom-control custom-checkbox mb-0">
                                                    <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                    <span class="custom-control-label">&nbsp;</span>
                                                </label>
                                            </td>
                                            <td>
                                               <c:out value="${ thevent.eventNo }"/>
                                            </td>
                                            <td>
                                                <c:out value="${ htevent.eventType }"/>
                                            </td>
                                            <td>
                                                <c:out value="${ htevent.petName }"/>
                                            </td>
                                            <td>
                                                <c:out value="${ htevent.time }"/>
                                            </td>
                                            <td>
                                                <c:out value="${ htevent.timeOut }"/>
                                            </td>                                   
                                            <td>                                            
                                                <button type="button" class="btn btn-primary btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
                                                <button type="button" class="btn btn-danger btn-sm" title="Delete"><i class="fa fa-trash-o"></i></button>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
 <script>
const link = "${ pageContext.servletContext.contextPath }/ht/room/list";

		if(document.getElementsByTagName("td")) {
			const $tds = document.getElementsByTagName("td");
			for(var i = 0 ; i < $tds.length ; i++) {
				$tds[i].onclick = function() {
					const no = this.parentNode.children[0].innerText;
					/* location.href = "${ pageContext.servletContext.contextPath }/ht/NTC/notice/detail?no=" + no; */   
				}
			}
		}
</script>


</body>
</html>



