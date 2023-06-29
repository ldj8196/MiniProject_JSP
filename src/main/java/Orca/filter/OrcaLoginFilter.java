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

@WebFilter(urlPatterns = {"/orcamypage.do", "/orcamypagecompanychange.do", "/orcamypageindividualchange.do",
			"/orcamypagepwchange.do", "/orcacargo.do"})
public class OrcaLoginFilter implements Filter {

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		
		HttpSession httpSession = request.getSession();
		String sessionId = (String) httpSession.getAttribute("id");
		
		if(sessionId == null) { // 세션 객체 없으면 로그인 페이지로
			 response.sendRedirect("/Orca_MiniProject/orcalogin.do");
			 return; 
		 }	
		arg2.doFilter(arg0, arg1);
	}
	
}
