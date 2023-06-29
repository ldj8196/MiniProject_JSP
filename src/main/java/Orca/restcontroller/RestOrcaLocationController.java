package Orca.restcontroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


// 127.0.0.1:8080/web02/api/member/login.json?id=중복확인아이디
@WebServlet(urlPatterns = {"/api/orca/location.json"})
public class RestOrcaLocationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Gson gson = new Gson(); // 라이브러리를 이용한 객체 생성   

    public RestOrcaLocationController() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	
		
		response.setContentType("application/json");
		
		Map<String, Object> map = new HashMap<>();
		
		String jsonString = gson.toJson(map);
		PrintWriter out = response.getWriter();
		out.print(jsonString);
		out.flush();
	}

}
