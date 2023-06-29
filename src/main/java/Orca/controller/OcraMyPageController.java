package Orca.controller;

import java.io.IOException;
import java.util.List;

import Orca.config.MyBatisContext;
import Orca.dto.Estimate;
import Orca.mapper.OrcaMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/orcamypage.do"})
public class OcraMyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String menu=request.getParameter("menu");
		if(menu==null) {
			response.sendRedirect("orcamypage.do?menu=1");
			return;//메소드 종료. 아래쪽 실행 안됨.
		}
		if(Integer.parseInt(menu) == 1) {
			
		}
		else if(Integer.parseInt(menu) == 2) {
			List<Estimate> obj = MyBatisContext.getSqlSession().getMapper(OrcaMapper.class).OrcaSelectEstimate();
			request.setAttribute("obj", obj);
		}
		else if(Integer.parseInt(menu) == 3) {
			
		}
		
		request.getRequestDispatcher("/WEB-INF/orca_mypage.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}
}
