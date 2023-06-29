package Orca.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import Orca.dto.Ship;
import Orca.service.OrcaService2;
import Orca.service.OrcaServiceImpl2;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/orcashipupdate.do"})
public class OrcaShipUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public OrcaShipUpdateController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String[] chk = request.getParameterValues("chk[]");
		Map<String, Object> map = new HashMap<>();
		map.put("no", chk);

		OrcaService2 oservice = new OrcaServiceImpl2();
		Ship ship = oservice.selectShipOne(map);
		System.out.println(ship.toString());

		
		
		//view로 값 전달
		request.setAttribute("obj", ship);
		request.getRequestDispatcher("/WEB-INF/orca_shipupdate.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
		
	}


