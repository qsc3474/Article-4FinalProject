package creation.comment.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import creation.comment.model.dto.CommentDTO;
import creation.comment.model.service.CommentService;

@WebServlet("/select/comment")
public class AjaxCommentSelectListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String refBoardNo = request.getParameter("currentBoardNo");
		String refBoardCategory = request.getParameter("currentBoardCategoryNo");
		
		String refBoard = refBoardCategory + "-" + refBoardNo;
		
		List<CommentDTO> commentList = new CommentService().selectList(refBoard);
		
		/*
		 * // 부모댓글들로 묶어서 넘기기 위해 인스턴스 생성 List<CommentDTO> parentCommentList = new
		 * ArrayList<>();
		 * 
		 * // 부모댓글번호가 없는(자신이 부모 혹은 독립적인 댓글)댓글일시 부모댓글리스트로 묶는다 for(int i = 0 ; i <
		 * commentList.size() ; i++) {
		 * 
		 * if(commentList.get(i).getParentCmtNo() == 0) {
		 * 
		 * parentCommentList.add(commentList.get(i));
		 * 
		 * }
		 * 
		 * }
		 * 
		 * for(int i = 0 ; i < commentList.size() ; i++) {
		 * 
		 * CommentDTO comment = commentList.get(i);
		 * 
		 * // 셀렉해서 가져온 모든 댓글에 대해서 부모댓글이 존재하는 댓글일시 진입 if(comment.getParentCmtNo() != 0) {
		 * 
		 * // 부모댓글의 번호를 추출 int parentNo = comment.getParentCmtNo();
		 * 
		 * // 부모댓글 클래스 생성 CommentDTO parent;
		 * 
		 * for(int j = 0 ; i < commentList.size() ; i++) {
		 * 
		 * // 다시한번 반복문을 돌면서 부모댓글의 번호와 일치할시 진입 if(commentList.get(j).getNo() == parentNo)
		 * {
		 * 
		 * // 부모댓글 인스턴스를 추출 parent = commentList.get(j); // 부모댓글의 자식댓글리스트 인스턴스를 생성
		 * parent.setChildComments(new ArrayList<>()); // 부모댓글의 자식댓글리스트에 해당 부모댓글의 번호를
		 * 가지는 자식댓글을 add한다. parent.getChildComments().add(comment);
		 * 
		 * }
		 * 
		 * }
		 * 
		 * }
		 * 
		 * }
		 */
		
		for(CommentDTO c :  commentList) {
			
			System.out.println(c);
			
		}
		
		String jsonString = new Gson().toJson(commentList);
		
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(jsonString);
		
		out.flush();
		out.close();
		
	}

}
