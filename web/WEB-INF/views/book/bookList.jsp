<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp" />


	<section class="title-sec">
		<div class="row">
			<h2
				class="section-title section-title-upper section-title-line text-center">
				예약확인</h2>
		</div>
	</section>
	<section class="notice-sec">
		<div class="container">
			<div class="col-lg-10">
				<div id="page-wrapper">
					<div id="page-inner">
						<div class="row">
							<div class="col-lg-12">
								
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">

								<div class="panel panel-default panel-wrap">
                            <form id="msform" action="${pageContext.request.contextPath}/hp/book/list" method="post">
									<table class="table table-hover table-bordered"
										id="dataTables-example"
										aria-describedby="dataTables-example_info">
										<thead>
											<tr role="row">
												<th class="sorting_asc" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Rendering engine: activate to sort column ascending"
													style="width: 50px;">예약번호</th>
												<th class="sorting" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending"
													style="width: 100px;">시간</th>
												<th class="sorting" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 100px;">예약자</th>
												<th class="sorting" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column ascending"
													style="width: 100px;">예약 동물 이름</th>
												<th class="sorting" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-label="CSS grade: activate to sort column ascending"
													style="width: 10px;">상태</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${ requestScope.bookList }" var="book">
												<tr>
													<td><c:out value="${book.no }"/></td>
													<td><c:out value="${book.time }"/></td>
													<td><c:out value="${sessionScope.loginMember.name }"/></td>
													<td><c:out value="${book.petName }"/></td>
													<td><c:out value="${book.status }"/></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									</form>
	<script type="text/javascript">
		if (document.getElementsByTagName("td")) {
			const $tds = document
					.getElementsByTagName("td");
			for (var i = 0; i < $tds.length; i++) {
	
				$tds[i].onmouseenter = function() {
					this.parentNode.style.cursor = "pointer";
				}
	
				$tds[i].onmouseout = function() {
				}
	
				$tds[i].onclick = function() {
					const no = this.parentNode.children[0].innerText;
					location.href = "${ pageContext.servletContext.contextPath }/hp/book/detail?no="
							+ no;
				}
			}
		}
		
	
		</script>
</body>
</html>