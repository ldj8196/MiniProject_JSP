package Orca.controller;

import java.io.IOException;
import Orca.config.Hash;
import Orca.config.MyBatisContext;
import Orca.dto.Client;
import Orca.mapper.OrcaClientMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/orcaindividualjoin.do"})
public class OcraJoinIndividualController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public OcraJoinIndividualController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String role = request.getParameter("role");
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("role", role);

		request.getRequestDispatcher("/WEB-INF/orca_individualjoin.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String hashPw = Hash.hashPW(id, password);
		String address = request.getParameter("address") 
						+ request.getParameter("address1") 
						+ request.getParameter("address2");
		String postCode = request.getParameter("postcode");
		String role = (String) request.getSession().getAttribute("role");
		
		Client obj = new Client();
		obj.setPhone(request.getParameter("phone"));
		obj.setPassword(hashPw);
		obj.setPostCode(postCode);
		obj.setAddress(address);
		obj.setChk(1);
		obj.setName(request.getParameter("name"));
		obj.setRole(role);
		obj.setId(id);
		obj.setIdChkQ(request.getParameter("idChkQ"));
		obj.setIdChkA(request.getParameter("idChkA"));
		obj.setEmail(request.getParameter("email"));
		
		int ret = MyBatisContext.getSqlSession().getMapper(OrcaClientMapper.class).insertIndividualMemberOne(obj);
		
		if(ret == 1) {
			response.sendRedirect("orcalogin.do");
			request.getSession().invalidate();
		}
		else {
			response.sendRedirect("orcaindividualjoin.do");
		}
	}
}
