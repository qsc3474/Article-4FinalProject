<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="home-version-1"
	class="home-version-1 sticky-header transparent-header menu-two"
	data-style="default">
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	<section class="step-title bg-white">
		<div class="section-title ht-title text-center"
			data-wow-duration="1000ms" data-wow-delay="0.3s">
			<h2>호텔 이용후기</h2>
			<h3 class="text-center pb">
				<span class="underline--magical">베스트 후기</span>
			</h3>
		</div>
	</section>

	<section id="Gallery" class="bg-white">
		<div class="container">
			<div class="cf"></div>
			<div class="blog-items">
				<div class="row">
					<c:forEach items="${ requestScope.bestBoardList }" var="bestReview">
						<div class="col-md-3">
							<div class="blog-post wow fadeInUp" data-wow-delay="0.3s">
								<a href="#">
									<div class="blog-thumb">
										<c:if test="${ bestReview.fileList[0].thumbnailPath ne null}">
											<img src="${ pageContext.servletContext.contextPath }${ bestReview.fileList[0].thumbnailPath }'" alt="Blog thumb">
										</c:if>
										<div class="blog-overlay"></div>
									</div>
								</a>
								<div class="blog-content">
									<ul class="post-meta">
										<li><a href="#">${ bestReview.drawupDate }</a></li>
									</ul>
									<h3>
										<a href="#">${ bestReview.title }</a>
									</h3>
									<p class="font-16">
										${ bestReview.content }
										<c:if test="${ bestReview.cmtCount ne 0 }">
											<c:out value="(${ bestReview.cmtCount })" />
										</c:if>
									</p>
									<h6>${ bestReview.watched }</h6>
									<a href="review-detail.html" class="read-more-btn">Read
										More</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>

	<section class="bg-light">
		<div class="container">
			<h3 class="text-center pb">
				<span class="underline--magical">후기게시판 목록</span>
			</h3>
			<jsp:include page="/WEB-INF/views/board/pageSubmenu.jsp"></jsp:include>
			<div class="col-lg-10">
				<div class="cf"></div>
				<div class="row mb" style="padding: 0 12px;">
					<div class="table-container deco inner-bordered center fc01">
						<table border="1" class="table table-striped">
							<thead>
								<tr>
									<th style="width: 70px;">번호</th>
									<th style="width: 100px;">사진</th>
									<th style="width: 130px;">개시자</th>
									<th style="width: 350px;">제목</th>
									<th style="width: 130px;">게시날짜</th>
									<th style="width: 70px;">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ requestScope.boardList }" var="review">
									<tr>
										<td><c:out value="${ review.no }" /></td>
										<td style="height: 100px;">
											<c:if test="${ review.fileList[0].thumbnailPath ne null}">
												<img src="${ pageContext.servletContext.contextPath }${ review.fileList[0].thumbnailPath }" style="width: 80px; height: 80px;">
											</c:if>
										</td>
										<td><c:out value="${ review.writer.name }" /></td>
										<td><c:out value="${ review.title }" /> <c:if
												test="${ review.cmtCount ne 0 }">
												<c:out value="(${ review.cmtCount })" />
											</c:if></td>
										<td><c:out value="${ review.drawupDate }" /></td>
										<td><c:out value="${ review.watched }" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
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
								<c:out value="${ p }" />
							</button>
						</c:if>
						<c:if test="${requestScope.pageInfo.pageNo ne p }">

							<button onclick="pageButtonAction(this.innerText);">
								<c:out value="${ p }" />
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
						<c:if test="${ !empty sessionScope.loginMember }">
							<button type="button" id="writeBoard" style="text-align: right">작성하기</button>
						</c:if>
					</div>
				</form>
			</div>
		</div>
	</section>
	<script>
		const link = "${pageContext.servletContext.contextPath}/hp/review/search/list"
		/* 페이지 번호 클릭시 실행되는 함수 */
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text + "&searchCondition="
					+ document.getElementById("searchCondition").value
					+ "&searchValue="
					+ document.getElementById("searchValue").value;
		}

		if (document.getElementById("searchStartPage")) {
			const $searchStartPage = document.getElementById("searchStartPage");
			$searchStartPage.onclick = function() {
				location.href = link + "?currentPage=1" + "&searchCondition="
						+ document.getElementById("searchCondition").value
						+ "&searchValue="
						+ document.getElementById("searchValue").value;
			}
		}
		if (document.getElementById("searchMaxPage")) {
			const $searchMaxPage = document.getElementById("searchMaxPage");
			$searchMaxPage.onclick = function() {
				location.href = link
						+ "?currentPage=${ requestScope.pageInfo.maxPage }"
						+ "&searchCondition="
						+ document.getElementById("searchCondition").value
						+ "&searchValue="
						+ document.getElementById("searchValue").value;
			}
		}

		if (document.getElementById("searchPrevPage")) {
			const $searchPrevPage = document.getElementById("searchPrevPage");
			$searchPrevPage.onclick = function() {
				location.href = link
						+ "?currentPage=${requestScope.pageInfo.pageNo - 1}"
						+ "&searchCondition="
						+ document.getElementById("searchCondition").value
						+ "&searchValue="
						+ document.getElementById("searchValue").value;
			}
		}
		if (document.getElementById("searchNextPage")) {
			const $searchNextPage = document.getElementById("searchNextPage");
			$searchNextPage.onclick = function() {
				location.href = link
						+ "?currentPage=${requestScope.pageInfo.pageNo + 1}"
						+ "&searchCondition="
						+ document.getElementById("searchCondition").value
						+ "&searchValue="
						+ document.getElementById("searchValue").value;
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
					location.href = "${ pageContext.servletContext.contextPath }/hp/review/detail?no="
							+ no;
				}
			}
		}

		if (document.getElementById("writeBoard")) {
			const $writeBoard = document.getElementById("writeBoard");
			$writeBoard.onclick = function() {
				location.href = "${pageContext.request.contextPath}/hp/board/insert?categoryNo=HP_RV";
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