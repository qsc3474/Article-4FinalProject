<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
		<div id="main_content">
				
			<!-- 섹션타이틀 -->
	        <section class="step-title">
	            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
	                <h2>게시글 작성</h2>
	            </div>
	        </section>
	        <!-- /섹션타이틀 -->
	
	        <!-- 후기작성 -->
	        <section class="pt-null">
            <div class="container">
                <div class="row col-md-10 col-md-offset-1 coments-row ">
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <th scope="row">제목분류</th>
                                <td colspan="5">
                                    <div class="mb-12 ">
                                        <select class="custom-select mr-sm-2 form-control" id="inlineFormCustomSelect">
                                            <option>호텔숙박후기</option>
                                            <option value="1">호텔서비스후기</option>
                                            <option value="2">호텔패키지후기</option>
                                            <option value="3">기타</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">제목</th>
                                <td colspan="5"><input type="text" name="title" class="form-control"
                                        placeholder="병원 후기 입니다."></td>
                            </tr>
                            <tr>
                                <th scope="row">내용</th>
                                <td colspan="5"><textarea class="form-control" rows="5" name="content" id="content"
                                        placeholder="내용을 입력해 주세요"></textarea></td>
                            </tr>
                            <tr>
                                <th scope="row">사진첨부하기</th>
                                <td colspan="5"><input type="file" class="form-control" id="inputGroupFile02"></td>
                            </tr>
                            <tr>
                                <th scope="row">사진첨부하기</th>
                                <td colspan="5"><input type="file" class="form-control" id="inputGroupFile02"></td>
                            </tr>
                            <tr>
                                <th scope="row">게시기간</th>
                                <td colspan="5">2021-04-12 ~ 2021-04-12</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="button-group" style="float: right;">
                        <button type="button" class="btn btn-primary">글쓰기</button>
                        <button type="button" class="btn btn-primary">취소</button>
                    </div>
                </div>
            </div>
        </section>
        <!-- /후기작성 -->
		
		</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>