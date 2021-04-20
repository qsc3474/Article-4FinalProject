package creation.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.member.model.dto.MemberDTO;
import creation.member.model.service.MemberService;

/**
 * Servlet implementation class MemberRegistServlet
 */
@WebServlet("/member/regist")
public class MemberRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "";
		
		if(request.getParameter("step") == null || "".equals(request.getParameter("step"))) {
			
			path = "/WEB-INF/views/member/memberRegistStep1.jsp";
			
		} else if(request.getParameter("step").equals("1")) {
			
			path = "/WEB-INF/views/member/memberRegistStep2.jsp";
			
		} else if(request.getParameter("step").equals("2")) {
			
			path = "/WEB-INF/views/member/memberRegistStep3.jsp";
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 아이디, 비밀번호, 이름, 생년월일, 이메일, 전화번호, 주소값이 넘어옴
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		java.sql.Date birthday = java.sql.Date.valueOf(request.getParameter("birthdayYear") + "-" + request.getParameter("birthdayMonth") + "-" + request.getParameter("birthdayDay"));
		String email = request.getParameter("email1") + "@" + request.getParameter("email2");
		int phone = Integer.valueOf(request.getParameter("tel1") + request.getParameter("tel2") + request.getParameter("tel3"));
		String address = request.getParameter("address1") + "$" + request.getParameter("address2")
        					+ "$" + request.getParameter("address3");
		
		
		MemberDTO requestMember = new MemberDTO();
		
		requestMember.setId(id);
		requestMember.setPwd(pwd);
		requestMember.setName(name);
		requestMember.setBirthday(birthday);
		requestMember.setEmail(email);
		requestMember.setPhone(phone);
		requestMember.setAddress(address);
		
		System.out.println("memberController requestMember : " + requestMember);
		
		int result = new MemberService().registMember(requestMember);
		
		String page = "";
		
		if(result > 0) {
			
			page = "/WEB-INF/views/member/memberRegistStep4.jsp";
			
		} else {
			
			page = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "회원 가입 실패!");
			
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
	}

}
