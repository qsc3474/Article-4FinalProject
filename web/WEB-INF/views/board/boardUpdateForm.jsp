<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개편한 병원-게시판 수정</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />

	<section>
		<div class="container">
			<h1 align="center">게시글 수정</h1>
			<div class="container" role="main">
				<form name="form" id="form" role="form"
					action="${ pageContext.servletContext.contextPath }/hp/board/update"
					method="post">
					<input type="hidden" name="boardNo"
						value="${requestScope.board.no }">
					<div class="mb-12">
						<label for="select">카테고리</label> <select
							class="custom-select mr-sm-2" name="categoryNo" id="categoryNo">
							<option value="HP_RV"
								<c:if test="${ requestScope.board.categoryNo eq 'HP_RV' }">selected</c:if>>후기게시판</option>
							<option value="HP_QNA"
								<c:if test="${ requestScope.board.categoryNo eq 'HP_QNA' }">selected</c:if>>QnA</option>
							<c:if test="${ sessionScope.loginMember.kind eq 'M' }">
								<option value="HP_FAQ"
									<c:if test="${ requestScope.board.categoryNo eq 'HP_FAQ' }">selected</c:if>>자주묻는질문</option>
								<option value="HP_INFO"
									<c:if test="${ requestScope.board.categoryNo eq 'HP_INFO' }">selected</c:if>>정보게시판</option>
								<option value="HP_NTC"
									<c:if test="${ requestScope.board.categoryNo eq 'HP_NTC' }">selected</c:if>>공지사항</option>
							</c:if>
						</select>
					</div>
					<div class="mb-12">
						<label for="title">제목</label> <input type="text"
							class="form-control" name="title" id="title"
							value="${requestScope.board.title }">
					</div>

					<div class="mb-12">
						<label for="reg_id">작성자</label> <input type="text"
							class="form-control" name="writer" id="writer"
							value="${ sessionScope.loginMember.name }">
					</div>


					<div class="mb-12">
						<label for="content">내용</label>
						<textarea name="content" id="content" cols="60" rows="15" style="resize: none;"
							required><c:out
								value="${ requestScope.board.content }" /></textarea>
					</div>
					<div class="mb-12">
						<label for="content">업로드</label>
						<div class="input-group" style="margin-top: 20px;">
							<label for="tag" class="input-group-text" for="inputGroupFile02">Upload</label>
							<input type="file" class="form-control" id="inputGroupFile02">
						</div>
					</div>
				</form>
				<div class="text-center" style="margin-top: 20px;">
					<button type="button" class="btn btn-primary btn-lg" id="btnSave">저장</button>
					<button type="button" class="btn btn-secondary btn-lg" id="btnList">목록</button>
				</div>
			</div>
		<script>
        	$(document).on('click', '#btnSave', function (e) {
	            e.preventDefault();
				if(document.getElementById("title").value === "${requestScope.board.title }" &&
						document.getElementById("content").value === "${ requestScope.board.content }" &&
							document.getElementById("categoryNo").value === "${ requestScope.board.categoryNo }") {
					
					alert("게시글을 수정해주세요!");
					return false;
					
				} else {
					
					document.getElementById("form").submit();
					
				}
	            
      		});
            
            $(document).on('click', '#btnList', function (e) {
                e.preventDefault();
                var link = "";
                switch("${ requestScope.board.categoryNo }"){
                case "HP_RV": link = "/hp/review/select/list"; break;
                case "HP_QNA": link = "/hp/qna/select/list"; break;
                case "HP_FAQ": link = "/hp/faq/select/list"; break;
                case "HP_INFO": link = "/hp/info/select/list"; break;
                case "HP_NTC": link = "/hp/notice/select/list"; break;
                }
                location.href = "${pageContext.request.contextPath}" + link;
            });
        </script>
		</div>
	</section>

</body>
</html>