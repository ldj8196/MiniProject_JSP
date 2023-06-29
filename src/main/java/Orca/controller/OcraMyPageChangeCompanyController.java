package Orca.controller;

import java.io.IOException;

import Orca.dto.Client;
import Orca.service.OrcaService;
import Orca.service.OrcaServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/orcamypagecompanychange.do"})
public class OcraMyPageChangeCompanyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public OcraMyPageChangeCompanyController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/orca_mypagechangecompany.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String) request.getSession().getAttribute("id");
		String role = (String) request.getSession().getAttribute("role");
		String postCode = request.getParameter("postcode");
		
		Client obj = new Client();
		obj.setId(id);
		obj.setName(request.getParameter("name"));
		obj.setPhone(request.getParameter("phone"));
		obj.setEmail(request.getParameter("email"));
		obj.setRole(role);
		obj.setPostCode(postCode);
		if(request.getParameter("address").equals("")) {
			obj.setAddress((String) request.getSession().getAttribute("address"));
		}
		else {
			String address = request.getParameter("address") 
					+ request.getParameter("address1") 
					+ request.getParameter("address2");
			obj.setAddress(address);
		}
		
		OrcaService Service = new OrcaServiceImpl();
		int ret = Service.updateMypageInfo(obj);

		if(ret == 1) {
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("id", obj.getId() );
			httpSession.setAttribute("name", obj.getName() );
			httpSession.setAttribute("role", obj.getRole() );
			httpSession.setAttribute("address", obj.getAddress() );
			httpSession.setAttribute("brn", obj.getBrn() );
			httpSession.setAttribute("phone", obj.getPhone() );
			httpSession.setAttribute("email", obj.getEmail() );
			httpSession.setAttribute("postCode", obj.getPostCode() );
			
			
			response.sendRedirect("orcamypage.do");
		}
		else {
			response.sendRedirect("orcamypagecompanychange.do");
		}
		

	}
}
