package Orca.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import Orca.dto.Ship;
import Orca.service.OrcaService2;
import Orca.service.OrcaServiceImpl2;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/orcaship.do"})
public class OrcaShipListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrcaService2 oservice = new OrcaServiceImpl2();
		List<Ship> list = oservice.selectShip();
		request.setAttribute("list", list);
		System.out.println(list.toString());
		request.getRequestDispatcher("/WEB-INF/orca_shipselect.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String srn = request.getParameter("srn");
		String sname = request.getParameter("sname");
		String type = request.getParameter("type");
		long max = Long.parseLong(request.getParameter("maxCargo"));
		String point = request.getParameter("point");
		long sweight = Long.parseLong(request.getParameter("shipWeight"));
		
		Ship ship = new Ship();
		ship.setSrn(srn);
		ship.setSname(sname);
		ship.setType(type);
		ship.setMaxCargo(max);
		ship.setPoint(point);
		ship.setShipWeight(sweight);
		
		System.out.println(ship.getSrn());
		
		OrcaService2 oservice = new OrcaServiceImpl2();
		int ret = oservice.updateShip(ship);
		System.out.println(ret);
		
		if(ret==1) {
		response.sendRedirect("orcaship.do");
		System.out.println("성공");
		}
	}
}
