package Orca.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import Orca.dto.Estimate;
import Orca.dto.Schedule;
import Orca.service.OrcaService2;
import Orca.service.OrcaServiceImpl2;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/orcaestimate.do"})
public class OrcaEstimateInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrcaService2 oservice = new OrcaServiceImpl2();
		List<Schedule> list = oservice.selectSchedule();
		request.setAttribute("list", list);
		System.out.println(list.toString());
		request.getRequestDispatcher("/WEB-INF/orca_estimate.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession httpSession = request.getSession();
		String[] chk = request.getParameterValues("chk[]");
		Map<String, Object> map = new HashMap<>();
		map.put("no", chk);
		
		Estimate estimate = new Estimate();
		estimate.setSchedule_no("1");
		estimate.setCargonumber("3");
		
		OrcaService2 oservice = new OrcaServiceImpl2();
		int ret = oservice.insertEstimate(estimate);
		System.out.println(ret);
		
	}
}
