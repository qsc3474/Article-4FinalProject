package creation.common.wrapper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

// getParameter 재정의 하기위서 만든 Wrapper클래스
public class EncryptRequestWrapper extends HttpServletRequestWrapper{ // 이걸 상속받음/ 부모가 매개변수있는 생성자 밖에없어서

	/* 부모 쪽에 기본 생성자가 존재하지 않기 때문에 request를 전달해 주는 생성자가 필요하다. */
	public EncryptRequestWrapper(HttpServletRequest request) { // 부모의 메소드를 상속받아야함
		super(request);
		
	} 
	
	@Override
	public String getParameter(String key) {
		
		String value="";
		if("pwd".equals(key)) { //
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			value = passwordEncoder.encode(super.getParameter(key)); // 여기서 암호화 처리되 서 value에 담김
		} else {
			value = super.getParameter(key);
		}
		
		return value;
	}

}
