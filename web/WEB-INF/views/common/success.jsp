<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<script>
		(function() {
			const successCode = "${ requestScope.successCode }";
			
			var successMessage = "";
			var movePath = "";
			
			switch(successCode){
			/* 회원관련 */
			case "insertMember" :
				successMessage = "회원 가입에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/index.jsp";
				break;
			case "updateMember" :
				successMessage = "회원 정보 변경에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/index.jsp";
				break;
			case "withdrawMember" :
				successMessage = "회원 탈퇴에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/index.jsp";
				break;
				
			/* 게시글 삭제 */
			case "deleteRVBoard" :
				successMessage = "후기 삭제에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/review/select/list";
				break;
			case "deleteQNABoard" :
				successMessage = "QNA 삭제에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/qna/select/list";
				break;
			case "deleteFAQBoard" :
				successMessage = "FAQ 삭제에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/faq/select/list";
				break;
			case "deleteINFOBoard" :
				successMessage = "정보게시판 삭제에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/info/select/list";
				break;
			case "deleteNTCBoard" :
				successMessage = "공지사항 삭제에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/notice/select/list";
				break;
				
			/* 게시글 등록 */
			case "insertRVBoard" :
				successMessage = "후기 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/review/select/list";
				break;
			case "insertQNABoard" :
				successMessage = "QNA 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/qna/select/list";
				break;
			case "insertFAQBoard" :
				successMessage = "FAQ 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/faq/select/list";
				break;
			case "insertINFOBoard" :
				successMessage = "정보게시판 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/info/select/list";
				break;
			case "insertNTCBoard" :
				successMessage = "공지사항 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/notice/select/list";
				break;
				
			/* 게시글 수정 */
			case "updateRVBoard" :
				successMessage = "후기 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/review/select/list";
				break;
			case "updateQNABoard" :
				successMessage = "QNA 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/qna/select/list";
				break;
			case "updateFAQBoard" :
				successMessage = "FAQ 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/faq/select/list";
				break;
			case "updateINFOBoard" :
				successMessage = "정보게시판 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/info/select/list";
				break;
			case "updateNTCBoard" :
				successMessage = "공지사항 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/notice/select/list";
				break;
				
			/* 파일업로드 */
			case "insertNoticeFileBoard" :
				successMessage = "공지사항 파일업로드에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/notice/select/list";
				break;
			case "insertReviewFileBoard" :
				successMessage = "후기게시판 파일업로드에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/review/select/list";
				break;
			}
			
			alert(successMessage);
			
			location.replace(movePath);
			
		})();
	</script>
</body>
</html>