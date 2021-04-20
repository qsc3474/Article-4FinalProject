<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개편한 호텔 QNA 수정</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/hotel/common/header.jsp"/>
	<section>
        <div class="container">
        <h1 align="center">공지 사항 수정</h1>
        <div class="container"  role="main">
              <form name="form" id="form" role="form" action="${ pageContext.servletContext.contextPath }/ht/QNA/update" method="post">
				<input type="hidden" name="noticeNo" value="${requestScope.htNotice.no }">
                    <div class="mb-12">
                            <label for="title">공지사항</label>
                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                              <option selected>NTC</option>
                            </select>
                    </div>
                    <div class="mb-12">
                        <label for="title">제목</label> 
                        <input type="text" class="form-control" name="title" id="title" value="${requestScope.htNotice.title }">
                    </div>

                    <div class="mb-12">
                        <label for="reg_id">작성자</label>
                        <input type="text" class="form-control" name="writer" id="writer" value="${ sessionScope.loginMember.name }">
                    </div>


                    <div class="mb-12">
                        <label for="content">내용</label>
                        <textarea name="content" cols="60" rows="15" style="resize:none;" required><c:out value="${ requestScope.htNotice.content }"/></textarea>
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
            $("#form").submit();
      		  });
            $(document).on('click', '#btnList', function (e) {
                e.preventDefault();
                location.href = "${pageContext.request.contextPath}/ht/QNA/list";
            });
        </script>
        </div>
    </section> 
	
</body>
</html>







