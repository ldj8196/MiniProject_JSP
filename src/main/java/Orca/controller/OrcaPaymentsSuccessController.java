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

@WebServlet(urlPatterns = {"/orcapaysuccess.do"})
public class OrcaPaymentsSuccessController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String orderid = request.getParameter("orderId");
		String paymentKey = request.getParameter("paymentKey");
		String paymenttype = request.getParameter("paymentType");
		String amount = request.getParameter("amount");
		System.out.println(orderid);
		System.out.println(paymentKey);
		System.out.println(amount);
		request.setAttribute("orderid", orderid);
		request.setAttribute("amount", amount);
		request.setAttribute("paymenttype", paymenttype);
		request.getRequestDispatcher("/WEB-INF/orca_success.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
