package Orca.restcontroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import com.google.gson.Gson;
import Orca.config.Hash;
import Orca.dto.Client;
import Orca.service.OrcaService;
import Orca.service.OrcaServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

// 127.0.0.1:8080/Orca_MiniProject/api/Client/login.json
@WebServlet(urlPatterns = {"/api/Client/login.json"})
public class RestOrcaLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Gson gson = new Gson(); // 라이브러리를 이용한 객체 생성

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hashPw = Hash.hashPW( request.getParameter("id"), request.getParameter("pw") );
		String id = request.getParameter("id");
		
		OrcaService mService = new OrcaServiceImpl();
		Client obj = mService.selectClientOne(id, hashPw);
		
		// 전송하는 데이터 타입설정(json문서) => text/html을 json타입으로 변경 => 잘만들었는지 테스트 용도로 postman사용
		response.setContentType("application/json");

		// ret객채를 json으로 변환
		Map<String, Object> map = new HashMap<>();
		map.put("ret", 0); // 실패시
		if(obj != null ) {
			// react.js, vue.js등의 프런트엔드 프레임워크 개발시 토큰을 발행시킴 ... 원래 로그인할때 key 발행이 됨
			HttpSession httpSession = request.getSession();
			// 세션에 필요한 정보를 기록 ex)아이디, 이름을 기록(30분간 유지)
			httpSession.setAttribute("id", obj.getId() );
			httpSession.setAttribute("name", obj.getName() );
			httpSession.setAttribute("role", obj.getRole() );
			httpSession.setAttribute("address", obj.getAddress() );
			httpSession.setAttribute("brn", obj.getBrn() );
			httpSession.setAttribute("phone", obj.getPhone() );
			httpSession.setAttribute("email", obj.getEmail() );
			httpSession.setAttribute("postCode", obj.getPostCode() );
			
			map.put("ret", 1); //성공시
		}
		String jsonString = gson.toJson(map);
		// 호출된 곳으로 값 전송
		PrintWriter out = response.getWriter();
		out.print(jsonString);
		out.flush();
	}

}
