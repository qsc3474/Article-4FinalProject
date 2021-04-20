package creation.common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import creation.common.wrapper.EncryptRequestWrapper;


@WebFilter("/member/*")	//member/login/momber/regist
public class PasswordEncryptFilter implements Filter {

    public PasswordEncryptFilter() {
    }
	public void destroy() {
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		/* 로그인을 하는 경우 자동 암호화 된 값으로 비교하게 되면 비교할 수 없다.
		 * 따라서 로그인 요청은 암호화 하는 필터에서 암호화 되지 않도록 해준다.
		 */
		HttpServletRequest hrequest = (HttpServletRequest) request;
		
		String uri = hrequest.getRequestURI();
		System.out.println("uri : " + uri);
		
		String intent = uri.substring(uri.lastIndexOf("/")); // /login, / regist인지 추출함
		System.out.println("intent : " + intent);
		
		if(!"/login".equals(intent)) {
			EncryptRequestWrapper wrapper = new EncryptRequestWrapper(hrequest); // 재정의된 겟파라미터를 변수에 담음
			
			chain.doFilter(wrapper, response); // 재정의된 wrapper을 넘겨줘야 한다.
		}else {
			chain.doFilter(request, response); // 재정의된 wrapper을 넘겨줘야 한다.
		}
		
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}
}
