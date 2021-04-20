package creation.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import creation.member.model.dto.MemberDTO;
import creation.member.model.service.MemberService;

@WebServlet("/member/update")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/member/memberUpdate.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = ((MemberDTO)request.getSession().getAttribute("loginMember")).getNo();
		String email = request.getParameter("email");
		int phone = Integer.valueOf(request.getParameter("tel1") + request.getParameter("tel2") + request.getParameter("tel3"));
		String address = request.getParameter("address1") + "$" + request.getParameter("address2")
        					+ "$" + request.getParameter("address3");
		
		MemberDTO updateData = new MemberDTO();
		updateData.setNo(no);
		updateData.setAddress(address);
		updateData.setPhone(phone);
		updateData.setEmail(email);
		
		int result = new MemberService().updateMember(updateData);
		
		String path = "";
		
		if(result > 0) {
			
			HttpSession loginMember = request.getSession();
			MemberDTO updateMember = (MemberDTO)loginMember.getAttribute("loginMember");
			
			updateMember.setAddress(address);
			updateMember.setPhone(phone);
			updateMember.setEmail(email);
			
			loginMember.setAttribute("loginMember", updateMember);
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateMember");
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "회원 정보 수정에 실패하셨습니다.");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
