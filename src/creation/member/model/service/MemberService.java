package creation.member.model.service;


import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import creation.member.model.dao.MemberDAO;
import creation.member.model.dto.MemberDTO;

public class MemberService {

private final MemberDAO memberDAO;
	
	public MemberService() {
		memberDAO = new MemberDAO();
	}
	
	// 로그인 메소드
	public MemberDTO loginCheck(MemberDTO requestMember) {
		Connection con = getConnection();
		MemberDTO loginMember = null;
		
		String encPwd = memberDAO.selectEncryptedPwd(con, requestMember);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		/* 로그인 요청한 원문 비밀번호와 저장되어 있는 암호화 된 비밀번호가 일치하는지 확인한다. */
		if(passwordEncoder.matches(requestMember.getPwd(), encPwd)) {
//			System.out.println("기존 회원과 비번 일치!");
			/* 비밀번호가 일치하는 경우에만 회원 정보를 조회해 온다. */
			loginMember = memberDAO.selectLoginMember(con, requestMember);
		}
		System.out.println(passwordEncoder.matches(requestMember.getPwd(), encPwd));
		
		close(con);
		
		return loginMember;
	}
	
	// 회원가입 메소드
	public int registMember(MemberDTO requestMember) {
		
		Connection con = getConnection();
		
		int result = memberDAO.registMember(con, requestMember);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		return result;
		
	}

	// 회원정보 수정 메소드
	public int updateMember(MemberDTO updateData) {
		
		Connection con = getConnection();
		
		int result = memberDAO.updateMember(con, updateData);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		return result;
		
	}

	// 회원탈퇴 메소드
	

	public int deleteMember(MemberDTO deleteMember) {
		Connection con = getConnection();
		
		int result = memberDAO.deleteMember(con, deleteMember);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		return result;	
	}

	public int checkIdOverlap(String id) {
		
		Connection con = getConnection();
		
		int result = memberDAO.checkIdOverlap(con, id);
		
		return result;
		
	}


}
