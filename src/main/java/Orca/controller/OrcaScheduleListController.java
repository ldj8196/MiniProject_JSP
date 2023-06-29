package Orca.controller;

import java.io.IOException;
import java.util.List;

import Orca.dto.Schedule;
import Orca.service.OrcaService2;
import Orca.service.OrcaServiceImpl2;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/orcaschedule.do"})
public class OrcaScheduleListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrcaService2 oservice = new OrcaServiceImpl2();
		List<Schedule> list = oservice.selectSchedule();
		request.setAttribute("list", list);
		System.out.println(list.toString());
		request.getRequestDispatcher("/WEB-INF/orca_schedulelist.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
