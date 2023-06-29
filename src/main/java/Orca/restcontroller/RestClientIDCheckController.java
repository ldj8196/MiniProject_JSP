package Orca.restcontroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;

import Orca.config.MyBatisContext;
import Orca.mapper.OrcaClientMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 127.0.0.1:8080/Orca_MiniProject/api/client/idcheck.json?id=중복확인아이디
@WebServlet(urlPatterns = {"/api/client/idcheck.json"})
public class RestClientIDCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Gson gson = new Gson(); // 라이브러리를 이용한 객체 생성
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		// 아이디 전달 => 존재하면 1 없으면 0 반환
		int ret = MyBatisContext.getSqlSession().getMapper(OrcaClientMapper.class).idOverlapChk(id);
		
		// 전송하는 데이터 타입설정(json문서) => text/html을 json타입으로 변경 => 잘만들었는지 테스트 용도로 postman사용
		response.setContentType("application/json");

		// ret객채를 json으로 변환
		Map<String, Object> map = new HashMap<>();
		map.put("ret", ret);
		String jsonString = gson.toJson(map);
		
		// 호출된 곳으로 값 전송
		PrintWriter out = response.getWriter();
		out.print(jsonString);
		out.flush();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
