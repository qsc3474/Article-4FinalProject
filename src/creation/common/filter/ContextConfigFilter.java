package creation.common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import creation.common.config.ConfigLocation;

/**
 * Servlet Filter implementation class ContextConfigFilter
 */
@WebFilter("/*")
public class ContextConfigFilter implements Filter {
    
    public ContextConfigFilter() {
    }
    
	public void destroy() {
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		/* (서비스쪽) DB 접속 설정 정보 파일의 경로 정보가 비어 있는 경우 초기화 해 준다. */
		if(ConfigLocation.CONNECTION_CONFIG_LOCATION == null) { // 여기가 null이면 실행해라
			String root = request.getServletContext().getRealPath("/"); // 웹폴더까지의 경로가 나온다
			String connectionInfoPath = request.getServletContext().getInitParameter("connection-info"); //web.xml에 적은 웹폴더 아래 경로들
			
			System.out.println("DB접속경로 설정 완료");
			ConfigLocation.CONNECTION_CONFIG_LOCATION = root + connectionInfoPath; // 경로들을 변수에 대입해줘라
		}
		
		/* DAO 작성하다가 이 곳도 작성하자(mapper 경로 세팅) */
		if(ConfigLocation.MAPPER_LOCATION == null) {
			String root = request.getServletContext().getRealPath("/"); 
			String mapperLocation  = request.getServletContext().getInitParameter("mapper-location");
			
			System.out.println("매퍼 경로 설정 완료");
			ConfigLocation.MAPPER_LOCATION = root + mapperLocation ;
		}
		
		chain.doFilter(request, response);
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
	}
}
