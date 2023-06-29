package Orca.controller;

import java.io.IOException;

import Orca.config.Hash;
import Orca.dto.Client;
import Orca.service.OrcaService;
import Orca.service.OrcaServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/orcamypagepwchange.do"})
public class OcraMyPageChangePwController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public OcraMyPageChangePwController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/orca_pwupdate.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String) request.getSession().getAttribute("id");
		String hashPw = Hash.hashPW( id, request.getParameter("password") );
		String hashnPw = Hash.hashPW( id, request.getParameter("newPassword") );
	
		Client obj = new Client();
		obj.setId(id);
		obj.setPassword(hashPw);
		obj.setNewPassword(hashnPw);
		
		OrcaService service = new OrcaServiceImpl();
		int ret = service.updateMypagePassword(obj);

		if(ret==1) {
			request.getSession().invalidate();
			response.sendRedirect("orcalogin.do");
		}
		else {
			response.sendRedirect("orcamypagepwchange.do");
		}
	}
}
