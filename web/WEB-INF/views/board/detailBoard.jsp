<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>개편한 병원 게시글</title>
<!-- Meta Data -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.coments-row {
	margin-bottom: 30px;
}

.coments-row table tr>th {
	background: #f6f6f6;
}

.coments-row td {
	padding: 15px !important;
	font-size: 15px;
}

.coments-row table tr:nth-of-type(2) td:nth-child(odd) {
	background: #f6f6f6;
}

.coments-row tbody {
	border-top: 2px solid #007bff;
}

.modal-button button {
	outline: none;
	border: 0;
}

.close-button {
	transition: all 0.5s ease;
	position: absolute;
	background-color: #000;
	padding: 1.5px 7px;
	left: 0;
	margin-left: -10px;
	margin-top: -9px;
	border-radius: 50%;
	border: 2px solid #fff;
	color: white;
	z-index: 1;
}
/* modal */
#pop-up {
	width: 500px;
}

.pop {
	display: none;
	position: fixed;
	top: 20%;
	left: 40%;
	width: 400px;
	height: 300px;
	background: #ffffff;
	background-color: whitesmoke;
	text-align: center;
}

.pop h3 {
	text-align: center;
	padding-top: 15px;
	padding-bottom: 15px;
	color: #fff;
	background-color: #FDC647;
}

.pop p {
	padding: 20px 65px 20px 65px;
	color: dimgray;
	font-size: 16px;
}

tbody {
	border-top: 2px solid #36b2b0 !important;
}
</style>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
</head>

<body id="home-version-1"
	class="home-version-1 sticky-header transparent-header menu-two"
	data-style="default">
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>


	<!-- 섹션타이틀 -->
	<section class="step-title bg-white">
		<div class="section-title text-center" data-wow-duration="1000ms"
			data-wow-delay="0.3s">
			<c:choose>
				<c:when test="${ requestScope.board.categoryNo eq 'HP_NTC' }">
					<h2>공지사항detail</h2>
				</c:when>
				<c:when test="${ requestScope.board.categoryNo eq 'HP_RV' }">
					<h2>후기게시판detail</h2>
				</c:when>
				<c:when test="${ requestScope.board.categoryNo eq 'HP_QNA' }">
					<h2>Q&amp;Adetail</h2>
				</c:when>
			</c:choose>
		</div>
	</section>
	<!-- 섹션타이틀 -->



	<!-- 이용 후기 -->
	<section class="blog-single bg-white">
		<div class="container">
			<div class="row">
				<div class="row coments-row">
					게시글 상세조회
					<table class="table table-bordered">
						<colgroup></colgroup>
						<tbody>
							<tr>
								<th scope="row">제목</th>
								<td colspan="5">${ requestScope.board.title }</td>
							</tr>
							<tr>
								<th scope="row">등록자</th>
								<td>${ requestScope.board.writer.name }</td>
								<td>등록일</td>
								<td>${ requestScope.board.drawupDate }</td>
								<td>조회수</td>
								<td>${ requestScope.board.watched }</td>
							</tr>
							<tr>
								<th scope="row">파일</th>
								<td colspan="5"><input type="file" id="customFile"
									style="border: 0;"></td>
							</tr>
							<tr>
								<th scope="row">내용</th>
								<td colspan="5"><c:if
										test="${ requestScope.board.categoryNo eq 'HP_RV' }">
										<c:if test="${ !empty requestScope.board.fileList[0] }">
											<c:forEach items="${ requestScope.board.fileList }"
												var="pictures">
												<div style="float: left;">
													<img
														src="${pageContext.servletContext.contextPath}${ pictures.thumbnailPath }">
												</div>
											</c:forEach>
										</c:if>
									</c:if>
									<p id="exampleFormControlTextarea1"
										style="height: 200px; background: #fff; border: 1px solid #ddd; padding: 10px;">${ requestScope.board.content }</p>
									<c:if test="${ sessionScope.loginMember.kind eq 'M' }">
										<div class="button-group text-center" style="margin-top: 10px">
											<input type='hidden' value="${ requestScope.board.no }">
											<button id='updateBoard' type="button" class="gp-btn small btn-primary">수정</button>
											<button id='deleteBoard' type="button" class="gp-btn small btn-dark center">삭제</button>
											<div style="float: left;">
												<c:if test="${ requestScope.board.categoryNo eq 'HP_RV'}">
													<button id='reportBoard' type="button" class="gp-btn small btn-dark center"	style="background: red">신고</button>
												</c:if>
											</div>
										</div>
									</c:if>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- /.row -->

			<div class="row">
				<div id="comments">
					<div class="releted-post">
						<p class="related-post-title">댓글달기</p>
						<div class="row coments-row">
							<table class="table table-bordered">
								<colgroup>
									<col style="width: 13%;">
									<col>
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th rowspan="2">댓글내용</th>
										<td><textarea class="form-control" rows="2"
												name="content" id="content" placeholder="내용을 입력해 주세요"></textarea>
											<div class="text-center" style="margin-top: 10px;">
												<button type="button" id="commentSubmitButton"
													class="gp-btn small btn-primary">등록하기</button>
											</div></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<ul class="commentlist">
					</ul>
				</div>
			</div>
		</div>
		<!-- /.container -->
	</section>
	<!-- 대댓글 팝업창 -->
	<div id="pop-up">
		<div class="pop" id="reply-pop-up">
			<div class="pop-up-box small-6 large-centered">
				<a href="#" class="reply-close-button close-button">&#10006;</a>
				<h3 style="margin-bottom: 0">댓글내용</h3>
				<table class="table table-bordered" style="background: #fff">
					<tbody>
						<tr>
							<td><textarea class="form-control" rows="5" name="content"
									id="replyContent" placeholder="내용을 입력해 주세요"></textarea></td>
						</tr>
						<tr>
							<td style="width: 30%;">
								<div class="text-center" style="margin-top: 10px;">
									<button type="button" id="replySubmitButton"
										class="gp-btn btn-dark">댓글등록</button>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- 신고 팝업창 -->
	<div id="pop-up">
		<div class="pop" id="report-pop-up">
			<div class="pop-up-box small-6 large-centered">
				<a href="#" class="report-close-button close-button">&#10006;</a>
				<div class="mb-12">
					<form
						action="${ pageContext.servletContext.contextPath }/hp/board/report"
						method="POST" id="reportForm" name="reportForm">
						<label for="title">신고사유</label> <select
							class="custom-select mr-sm-2" name="reportCategory"
							id="reportCategory" onchange="reportCategoryChanged(this.value)">
							<option value="def" selected>--</option>
							<option value="a1">욕설 및 부적절한 언어 사용</option>
							<option value="i2">광고성 게시글 작성</option>
							<option value="r3">음란물 업로드</option>
							<option value="s4">회원들간의 분쟁 조장</option>
							<option value="m5">기타</option>
						</select> <input type="hidden" value="${ requestScope.board.no }"
							id="reportBoardNo" name="reportBoardNo"> <input
							type="hidden" value="${ requestScope.board.categoryNo }"
							id="reportBoardCategory" name="reportBoardCategory"> <input
							type="hidden" value="${ sessionScope.loginMember.no }"
							id="reporterMemberNo" name="reporterMemberNo"> <input
							type="hidden" value="${ requestScope.board.memberNo }"
							id="reportWriterNo" name="reportWriterNo">
						<textarea class="form-control" rows="3" name="reportContent"
							id="reportContent" style="display: none;"
							placeholder="신고 사유를 입력해 주세요"></textarea>
						<button type="button" id="reportSubmitButton"
							class="gp-btn btn-primary">신고접수</button>
					</form>
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

	<script>
var insertCount = 0;
var currentLoginMemberNo = "${sessionScope.loginMember.no}";
$(function(){  //페이지가 로드되면 댓글 데이터를 가져온다.
	deleteAndUpdateButtonAction();
	getCommentList(${ requestScope.board.no },"${ requestScope.board.categoryNo }");
	if("${ requestScope.board.categoryNo }" == "HP_NTC" || "${ requestScope.board.categoryNo }" == "HP_INFO"){ // info, ntc게시판은 댓글 불가능
		
		var comments = document.getElementById("comments");
		comments.style.display = "none";
		
	}
});
function deleteAndUpdateButtonAction(){
	
	var no = 0;
	
	$("#updateBoard").click(function() {
	    var $parent = this.parentNode;
	    var getNo = $parent.children[0];
	    no = getNo.value;
	    location.href = "${pageContext.servletContext.contextPath}/hp/board/update?no=" + no + "&categoryNo=${ requestScope.board.categoryNo }";
    });
    $("#deleteBoard").click(function () {
    	var $parent = this.parentNode;
	    var getNo = $parent.children[0];
	    no = getNo.value;
	    location.href = "${pageContext.servletContext.contextPath}/hp/board/delete?no=" + no + "&categoryNo=${ requestScope.board.categoryNo }";
    });
	
}
if(document.getElementById("commentSubmitButton")){
	const $commentSubmitButton = document.getElementById("commentSubmitButton");
	$commentSubmitButton.onclick = function(){
		var content = document.getElementById("content");
		insertComment(content.value,${ requestScope.board.no },"${ requestScope.board.categoryNo }");
	}
}
function reportCategoryChanged(reportReason){
	
	console.log(reportReason);
	
	if(reportReason == 'm5'){
		
		var $reportContentText = document.getElementById("reportContent");
		$reportContentText.style.display = "block";
		
	} else {
		
		var $reportContentText = document.getElementById("reportContent");
		$reportContentText.style.display = "none";
		
	}
	
}
function replyOfReply(clickParentCommentNo){
	
		var replyContent = document.getElementById("replyContent");
		
		console.log(clickParentCommentNo);
		console.log(replyContent.value);
		
		insertReplyOfReply(clickParentCommentNo, replyContent.value, ${ requestScope.board.no }, "${ requestScope.board.categoryNo }");
		
}
function getCommentList(currentBoardNo, currentBoardCategoryNo){
	
	$.ajax({
	    url:"${ pageContext.servletContext.contextPath }/select/comment",
	    data:{currentBoardNo:currentBoardNo, currentBoardCategoryNo:currentBoardCategoryNo},
	    type:'POST',
	    success:function(data){
	       console.log(data);
	       
	       var $commentlist = $(".commentlist");
	       $commentlist.html('');
	       var $currentCommentCount = $("<h5 class='gp-form-heading text-center'>There are " + (${ requestScope.board.cmtCount } + insertCount) + "comments</h5>");
	       $commentlist.append($currentCommentCount);
	  	   var commentCount = 0;
	       while(commentCount != (${requestScope.board.cmtCount} + insertCount)){
	       	   
	    	   commentCount = 0;
	    	   
	    	   for(var i = 0 ; i < (${requestScope.board.cmtCount} + insertCount) ; i++){
	    		   
	    		   commentCount += $("#commentNo" + data[i].no).length;
	    		   
	    	   }	    	   
	    	   
		       for(var key in data){
		       	  
		          if(data[key].parentCmtNo == 0 && $("#commentNo" + data[key].no).length != 1){
		        	  
		        	  var $li = $("<li class='comment' id='commentNo" + data[key].no + "'>");
			          var $divClearfix = $("<div>").addClass("clearfix");
			          var $profilePicture = $("<figure>").addClass("avatar-box");
			          var $picture = $("<img src='${ pageContext.servletContext.contextPath }/resources/media/img/dog_icon01.png' class='avatar' style='padding-right: 10px'>");
			          var $commentContent = $("<div>").addClass("comment-content");
			          var $replyAuthorInfo = $("<header>").addClass("comment-author");
			          var $hiddenReplyNo = $("<div id='hiddenCommentNo" + data[key].no + "' style='display:none;'>" + data[key].no + "</div>");
			          var $replyAuthorName = $("<div>").addClass("author gp-content-title-big").text(data[key].writer.name);
			          var $replyOfReply = $("<div>").addClass("reply modal-button");
			          var $replyButton = $("<button type='button' class='comment-reply-link btn btn-dark button' style='padding: 5px 10px;'><i class='fa fa-reply-all'></i><span>댓글작성</span></button>");
			          var $replyWriteTime = $("<div class='entry-meta'><i class='fa fa-clock-o'></i>" + data[key].writeTime + "</div>");
			          var $contentDiv = $("<div>").addClass("ovh");
			          var $contentText = $("<p>").text(data[key].content);
			          var $end = $("<div>").addClass("clear");
			          
			         
					
			          
			          $li.append($divClearfix);
			          $divClearfix.append($profilePicture);
			          $profilePicture.append($picture);
			          $divClearfix.append($commentContent);
			          $commentContent.append($replyAuthorInfo);
			          $replyAuthorInfo.append($hiddenReplyNo);
			          $replyAuthorInfo.append($replyAuthorName);
			          $replyAuthorInfo.append($replyOfReply);
			          $replyOfReply.append($replyButton);
			          $replyAuthorInfo.append($replyWriteTime);
			          $commentContent.append($contentDiv);
			          $contentDiv.append($contentText);
			          $commentContent.append($end);
			          
			          $commentlist.append($li);
		          }
			       	  
		          if(data[key].parentCmtNo != 0 && $("#commentNo" + data[key].parentCmtNo).length != 0 && $("#commentNo" + data[key].no).length != 1){
		        	  
		        	  var $parentComment = $("#commentNo" + data[key].parentCmtNo);
		        	  var $ul = $("<ul class='children' id='commentNo" + data[key].no + "'>");
		        	  var $li = $("<li>").addClass("comment byuser comment-author-melissa-fox odd alt depth-2");
			          var $divClearfix = $("<div>").addClass("clearfix");
			          var $profilePicture = $("<figure>").addClass("avatar-box");
			          var $picture = $("<img src='${ pageContext.servletContext.contextPath }/resources/media/img/dog_icon01.png' class='avatar' style='padding-right: 10px'>");
			          var $commentContent = $("<div>").addClass("comment-content");
			          var $replyAuthorInfo = $("<header>").addClass("comment-author");
			          var $hiddenReplyNo = $("<div id='hiddenCommentNo" + data[key].no + "' style='display:none;'>" + data[key].no + "</div>");
			          var $replyAuthorName = $("<div>").addClass("author gp-content-title-big").text(data[key].writer.name);
			          var $replyOfReply = $("<div>").addClass("reply modal-button");
			          var $replyButton = $("<button type='button' class='comment-reply-link btn btn-dark button' style='padding: 5px 10px;'><i class='fa fa-reply-all'></i><span>댓글작성</span></button>");
			          var $replyWriteTime = $("<div class='entry-meta'><i class='fa fa-clock-o'></i>" + data[key].writeTime + "</div>");
			          var $contentDiv = $("<div>").addClass("ovh");
			          var $contentText = $("<p>").text(data[key].content);
			          var $end = $("<div>").addClass("clear");
			          
			          $ul.append($li);
			          $li.append($divClearfix);
			          $divClearfix.append($profilePicture);
			          $profilePicture.append($picture);
			          $divClearfix.append($commentContent);
			          $commentContent.append($replyAuthorInfo);
			          $replyAuthorInfo.append($hiddenReplyNo);
			          $replyAuthorInfo.append($replyAuthorName);
			          $replyAuthorInfo.append($replyOfReply);
			          $replyOfReply.append($replyButton);
			          $replyAuthorInfo.append($replyWriteTime);
			          $commentContent.append($contentDiv);
			          $contentDiv.append($contentText);
			          $commentContent.append($end);
			          
			          $parentComment.append($ul);
		          }
		          
		       }
		       
	       }
	       $(".button").off('click');
	       $("#replySubmitButton").off('click');
	       $(".close-button").off('click');
	       replyCommentButtonAction();
	       
	    },
	    error:function(request, status, error){
	       
	    	alert("code:" + request.status + "\n" + "message:" + request.responseTest + "\n" + "error:" + error);
	    	
	    }
	    
	});
	
}
function insertComment(content, currentBoardNo, currentBoardCategoryNo){
	
	$.ajax({
	    url:"${ pageContext.servletContext.contextPath }/insert/comment",
	    data:{writerNo:currentLoginMemberNo, content:content, currentBoardNo:currentBoardNo, currentBoardCategoryNo:currentBoardCategoryNo},
	    type:'POST',
	    success:function(data){
	      console.log(data);
	      if(data == 2){
	    	  
	    	  insertCount++;
	    	  getCommentList(${ requestScope.board.no },"${ requestScope.board.categoryNo }");
	    	  
	      } else {
	    	  
	    	  alert("댓글 작성에 실패하셨습니다.");
	    	  
	      }
          
          document.getElementById("content").value='';
	       
	    },
	    error:function(request, status, error){
	       
	    	alert("code:" + request.status + "\n" + "message:" + request.responseTest + "\n" + "error:" + error);
	    	
	    }
	    
	});
	
}
function insertReplyOfReply(parentCommentNo, content, currentBoardNo, currentBoardCategoryNo){
	
	$.ajax({
	    url:"${ pageContext.servletContext.contextPath }/insert/reply",
	    data:{writerNo:currentLoginMemberNo, parentCommentNo:parentCommentNo, content:content, currentBoardNo:currentBoardNo, currentBoardCategoryNo:currentBoardCategoryNo},
	    type:'POST',
	    success:function(data){
	      console.log(data);
		  if(data == 2){
	    	  
			  insertCount++;
	    	  getCommentList(${ requestScope.board.no },"${ requestScope.board.categoryNo }");
	    	  
	      } else {
	    	  
	    	  alert("댓글 작성에 실패하셨습니다.");
	    	  
	      }
	       
	    },
	    error:function(request, status, error){
	       
	    	alert("code:" + request.status + "\n" + "message:" + request.responseTest + "\n" + "error:" + error);
	    	
	    }
	    
	});
	
}
</script>

	<!-- modal -->
	<script id="rendered-js">
function replyCommentButtonAction() {
	var no = 0;
	
	$(".button").click(function() {
		    var $parent = this.parentNode;
		    var getNo = $parent.parentNode.children[0];
		    no = getNo.innerText;
	        $("#reply-pop-up").fadeIn(300);
    });
    $("#replySubmitButton").click(function () {
        $("#reply-pop-up").fadeOut(300);
        replyOfReply(no);
        document.getElementById("replyContent").value='';
    });
    
    $(".reply-close-button").click(function () {
        $("#reply-pop-up").fadeOut(300);
        document.getElementById("replyContent").value='';
    });
}
//# sourceURL=pen.js
$(function(){
	
	$("#reportBoard").click(function() {
		
        $("#report-pop-up").fadeIn(300);
        
    });
    $("#reportSubmitButton").click(function () {
    	
        $("#report-pop-up").fadeOut(300);
        $("#reportForm").submit();
        
        
    });
    
    $(".report-close-button").click(function () {
    	
        $("#report-pop-up").fadeOut(300);
        document.getElementById("reportContent").value='';
        
    });
		
});
</script>

</body>
</html>