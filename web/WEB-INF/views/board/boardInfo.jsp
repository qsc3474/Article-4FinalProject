<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>개편한 병원-정보게시판</title>
<!-- 기기(디바이스)별 크기를 인식 하고 1.0으로 확대 및 축소 없이해서 보여줌 -->
<title>Document</title>
<link rel="preconnect" href="https://fonts.gstatic.com">

<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!--폰트어썸 웹 아이콘-->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
<!-- 커스텀 스타일시트 -->
<script src="/creation/resources/js/event.js"></script>
<link rel="stylesheet" href="/creation/resources/css/common2.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="/creation/resources/js/event.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />


	<section class="title-sec">
		<div class="row">
			<h2
				class="section-title section-title-upper section-title-line text-center">
				정보게시판</h2>
		</div>
	</section>
	<section id="reviewdetail" class="notice-sec">
		<div class="container">
			<jsp:include page="/WEB-INF/views/board/pageSubmenu.jsp"></jsp:include>
			<div class="col-lg-10">
				<div id="page-wrapper">
					<div id="page-inner">
						<div class="row">
							<div class="col-lg-12">
								<h1 class="page-header app-title">개편한 세상의 새로운 소식들과 유용한 정보들을
									한곳에서 확인하세요.</h1>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default panel-wrap">
									<table class="table table-hover table-bordered"
										id="dataTables-example"
										aria-describedby="dataTables-example_info">
										<thead>
											<tr role="row">
												<th class="sorting_asc" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Rendering engine: activate to sort column ascending"
													style="width: 50px;">No.</th>
												<th class="sorting" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending"
													style="width: 335px;">제목</th>
												<th class="sorting" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 50px;">작성자</th>
												<th class="sorting" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column ascending"
													style="width: 50px;">작성일</th>
												<th class="sorting" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-label="CSS grade: activate to sort column ascending"
													style="width: 10px;">조회</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${ requestScope.boardList }" var="info">
												<tr>
													<td><c:out value="${ info.no }" /></td>
													<td><c:out value="${ info.title }" />
														<c:if test="${ info.cmtCount ne 0 }">
															<c:out value="(${ ntc.cmtCount })" />
														</c:if></td>
													<td><c:out value="${ info.writer.name }" /></td>
													<td><c:out value="${ info.drawupDate }" /></td>
													<td><c:out value="${ info.watched }" /></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- table-area end -->
								<%-- 페이지 처리 --%>
								<div class="pageingArea" align="center">
									<button id="searchStartPage"><<</button>

									<c:if test="${requestScope.pageInfo.pageNo == 1 }">
										<button disabled><</button>
									</c:if>
									<c:if test="${requestScope.pageInfo.pageNo > 1 }">
										<button id="searchPrevPage"><</button>

									</c:if>

									<c:forEach var="p" begin="${requestScope.pageInfo.startPage }"
										end="${requestScope.pageInfo.endPage }" step="1">
										<c:if test="${requestScope.pageInfo.pageNo eq p }">
											<button disabled>
												<c:out value="${p }" />
											</button>
										</c:if>
										<c:if test="${requestScope.pageInfo.pageNo ne p }">

											<button onclick="pageButtonAction(this.innerText);">
												<c:out value="${p }" />
											</button>
										</c:if>

									</c:forEach>

									<c:if
										test="${requestScope.pageInfo.pageNo == requestScope.pageInfo.maxPage }">
										<button disabled>></button>
									</c:if>
									<c:if
										test="${requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
										<button id="searchNextPage">></button>

									</c:if>

									<button id="searchMaxPage">>></button>

								</div>
								<br> <br>


								<form id="searchForm"
									action="${ pageContext.servletContext.contextPath }/hp/info/search/list"
									method="get">
									<div class="search-area" align="center">
										<c:choose>
											<c:when test="${ !empty requestScope.searchValue }">
												<select id="searchCondition" name="searchCondition">
													<option value="writer"
														<c:if test="${requestScope.searchCondition eq 'writer' }">selected</c:if>>작성자</option>
													<option value="title"
														<c:if test="${requestScope.searchCondition eq 'title' }">selected</c:if>>제목</option>
													<option value="content"
														<c:if test="${requestScope.searchCondition eq 'content' }">selected</c:if>>내용</option>
												</select>
												<input type="search" id="searchValue" name="searchValue"
													value="${requestScope.searchValue}">
											</c:when>
											<c:otherwise>
												<select id="searchCondition" name="searchCondition">
													<option value="writer">작성자</option>
													<option value="title">제목</option>
													<option value="content">내용</option>
												</select>
												<input type="search" id="searchValue" name="searchValue">
											</c:otherwise>
										</c:choose>
										<button type="submit">검색하기</button>
										<c:if test="${ sessionScope.loginMember.kind eq 'M' }">
											<button type="button" id="writeBoard"
												style="text-align: right">작성하기</button>
										</c:if>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<script>
		const link = "${pageContext.servletContext.contextPath}/hp/info/search/list"
		/* 페이지 번호 클릭시 실행되는 함수 */
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text
								 + "&searchCondition=" + document.getElementById("searchCondition").value
								 + "&searchValue=" + document.getElementById("searchValue").value;
		}

		if (document.getElementById("searchStartPage")) {
			const $searchStartPage = document.getElementById("searchStartPage");
			$searchStartPage.onclick = function() {
				location.href = link + "?currentPage=1"
									 + "&searchCondition=" + document.getElementById("searchCondition").value
									 + "&searchValue=" + document.getElementById("searchValue").value;
			}
		}
		if (document.getElementById("searchMaxPage")) {
			const $searchMaxPage = document.getElementById("searchMaxPage");
			$searchMaxPage.onclick = function() {
				location.href = link
						+ "?currentPage=${ requestScope.pageInfo.maxPage }"
						+ "&searchCondition=" + document.getElementById("searchCondition").value
						+ "&searchValue=" + document.getElementById("searchValue").value;
			}
		}

		if (document.getElementById("searchPrevPage")) {
			const $searchPrevPage = document.getElementById("searchPrevPage");
			$searchPrevPage.onclick = function() {
				location.href = link
						+ "?currentPage=${requestScope.pageInfo.pageNo - 1}"
						+ "&searchCondition=" + document.getElementById("searchCondition").value
						+ "&searchValue=" + document.getElementById("searchValue").value;
			}
		}
		if (document.getElementById("searchNextPage")) {
			const $searchNextPage = document.getElementById("searchNextPage");
			$searchNextPage.onclick = function() {
				location.href = link
						+ "?currentPage=${requestScope.pageInfo.pageNo + 1}"
						+ "&searchCondition=" + document.getElementById("searchCondition").value
						+ "&searchValue=" + document.getElementById("searchValue").value;
			}
		}
		/* 게시글 관련 css 및 이벤트 처리(마우스 호버 및 클릭) */
		if (document.getElementsByTagName("td")) {
			const $tds = document.getElementsByTagName("td");
			for (var i = 0; i < $tds.length; i++) {

				$tds[i].onmouseenter = function() {
					this.parentNode.style.cursor = "pointer";
				}

				$tds[i].onmouseout = function() {
				}

				$tds[i].onclick = function() {
					const no = this.parentNode.children[0].innerText;
					location.href = "${ pageContext.servletContext.contextPath }/hp/info/detail?no="
							+ no;
				}
			}
		}

		if (document.getElementById("writeBoard")) {
			const $writeBoard = document.getElementById("writeBoard");
			$writeBoard.onclick = function() {
				location.href = "${pageContext.request.contextPath}/hp/board/insert?categoryNo=HP_INFO";
			}
		}
	</script>

	<script>
		$(document).ready(
			function() {
				$("div.bhoechie-tab-menu>div.list-group>a").click(
						function(e) {
							e.preventDefault();
							$(this).siblings('a.active').removeClass(
									"active");
							$(this).addClass("active");
							var index = $(this).index();
							$("div.bhoechie-tab>div.bhoechie-tab-content")
									.removeClass("active");
							$("div.bhoechie-tab>div.bhoechie-tab-content")
									.eq(index).addClass("active");
					});
			});
	</script>

</body>
</html>