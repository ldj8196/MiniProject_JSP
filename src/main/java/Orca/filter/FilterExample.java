package Orca.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

// 127.0.0.1:8080/web02/customer/mypage.do
//127.0.0.1:8080/web02/customer/orderlist.do
//127.0.0.1:8080/web02/customer/orderlist1.do
// 크롬에서 주소를 치면 필터를 통과한 후에 컨트롤러로 들어옴

// home(o) -> login(x), logout(x) -> home(o)
// 로그인에서 이전페이지 이동을 위한 필터
@WebFilter(urlPatterns = {"/customer/*"})
public class FilterExample implements Filter {

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// 더 많은 기능을 쓰기위해서 상위 타입으로 형변환(Casting)
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		System.out.println("url filter => " + request.getRequestURI());
		
		// 컨트롤러로 가기 전에 수행해야 하는 작업들을 넣어야함
		// 로그인이 되었는지 확인
		// 로그인이 안됐다면 로그인 페이지로 이동
		
		HttpSession httpsession = request.getSession();
		String uri = request.getRequestURI();
		
		if( !uri.contains("login.do") && !uri.contains("logout.do")) {
			// home.do => null
			// product.do?itemno=33 => itemno=33
			String queryString = request.getQueryString();
			
			if(queryString == null) {
				httpsession.setAttribute("url", request.getRequestURI());
			}
			else {
				httpsession.setAttribute("url", request.getRequestURI()+"?"+queryString);
			}
		}
		// 있으면 원래 수행하고자 하는 페이지로.
		 arg2.doFilter(arg0, arg1);
		
	}
	
}
