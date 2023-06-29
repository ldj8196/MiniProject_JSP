package Orca.service;

import Orca.dto.Client;
import Orca.dto.OrderTable;
import Orca.dto.Schedule;

public interface OrcaService {
	
	// 기업 회원가입
	public int insertCompanyOne(Client obj);
	
	// 개인 회원가입
	public int insertIndividualMemberOne(Client obj);
	
	// 회원가입 ID 중복확인
	public int idOverlapChk(String id);
	
	// 로그인
	public Client selectClientOne(String Id, String Password);
	
	// 아이디 찾기
	public Client findClientId(Client obj);
	
	// 비밀번호 찾기
	public Client findClientPassword(String Id, String Email);
	
	// 마이페이지 정보수정
	public int updateMypageInfo(Client obj);
	
	// 비밀번호 변경
	public int updateMypagePassword(Client obj);
	
	// 운행정보 조회
	public Schedule selectScheduleTime(String DeparturePort, String ArrivalPort);
	
	// 주문목록 전체조회
	public OrderTable selectOrderTable(String id);
	
	// 결제하기
	public OrderTable selectTotalFare(String OrderNo);
	
}
