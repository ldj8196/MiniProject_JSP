package Orca.restcontroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;

import Orca.config.MyBatisContext;
import Orca.dto.Client;
import Orca.mapper.OrcaClientMapper;
import Orca.service.OrcaService;
import Orca.service.OrcaServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 127.0.0.1:8080/Orca_MiniProject/api/client/idfind.json
@WebServlet(urlPatterns = {"/api/client/idfind.json"})
public class RestClientIDFindController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Gson gson = new Gson(); // 라이브러리를 이용한 객체 생성
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String idChkQ = request.getParameter("idChkQ");
		String idChkA = request.getParameter("idChkA");
		
		Client obj = new Client();
		obj.setName(name);
		obj.setPhone(phone);
		obj.setIdChkQ(idChkQ);
		obj.setIdChkA(idChkA);
		
		// 전달 => 존재하면 반환
		OrcaService service = new OrcaServiceImpl();
		Client client = service.findClientId(obj);

		// 전송하는 데이터 타입설정(json문서) => text/html을 json타입으로 변경 => 잘만들었는지 테스트 용도로 postman사용
		response.setContentType("application/json");
		Map<String, Object> map = new HashMap<>();

		// ret객채를 json으로 변환
		map.put("id", client.getId());
		System.out.println(map.toString());
		
		String jsonString = gson.toJson(map);
		
		// 호출된 곳으로 값 전송
		PrintWriter out = response.getWriter();
		out.print(jsonString);
		out.flush();
	}

}
