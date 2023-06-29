package Orca.controller;

import java.io.IOException;

import Orca.dto.Cargo;
import Orca.service.OrcaService2;
import Orca.service.OrcaServiceImpl2;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/orcacargo.do"})
public class OrcaCargoInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession httpSession = request.getSession();
		String sessionId = (String) httpSession.getAttribute("id");
		request.getRequestDispatcher("/WEB-INF/orca_cargo.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession httpSession = request.getSession();
		
		String cargotype = request.getParameter("cargotype");
		long cargoweight = Long.parseLong(request.getParameter("cargoweight"));
		String sessionId = (String) httpSession.getAttribute("id");
		
		OrcaService2 oservice = new OrcaServiceImpl2();
		Cargo obj=new Cargo();
		obj.setCargoType(cargotype);
		obj.setCargoWeight(cargoweight);
		obj.setId(sessionId);
		
		int ret=oservice.insertCargo(obj);
		
		if(ret == 1) {
			response.sendRedirect("orcaschedule.do");
			httpSession.setAttribute("cargotype", cargotype);
			httpSession.setAttribute("cargoweight", cargoweight);
			httpSession.setAttribute("cargono", obj.getCargoNumber());
			
			System.out.println(httpSession.getAttribute("cargono"));
		}
	}

}
