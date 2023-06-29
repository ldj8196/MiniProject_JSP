package Orca.service;

import Orca.config.MyBatisContext;
import Orca.dto.Client;
import Orca.dto.OrderTable;
import Orca.dto.Schedule;
import Orca.mapper.OrcaClientMapper;

public class OrcaServiceImpl implements OrcaService{

	// 기업 회원가입
	@Override
	public int insertCompanyOne(Client obj) {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaClientMapper.class).insertCompanyOne(obj);
		}
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	// 개인 회원가입
	@Override
	public int insertIndividualMemberOne(Client obj) {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaClientMapper.class).insertIndividualMemberOne(obj);
		}
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	// 회원가입 ID 중복확인
	@Override
	public int idOverlapChk(String id) {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaClientMapper.class).idOverlapChk(id);
		}
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	// 로그인
	@Override
	public Client selectClientOne(String Id, String Password) {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaClientMapper.class).selectClientOne(Id, Password);
		}
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// 아이디 찾기
	@Override
	public Client findClientId(Client obj) {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaClientMapper.class).findClientId(obj);
		}
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Client findClientPassword(String Id, String Email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateMypageInfo(Client obj) {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaClientMapper.class).updateMypageInfo(obj);
		}
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public int updateMypagePassword(Client obj) {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaClientMapper.class).updateMypagePassword(obj);
		}
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Schedule selectScheduleTime(String DeparturePort, String ArrivalPort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderTable selectOrderTable(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderTable selectTotalFare(String OrderNo) {
		// TODO Auto-generated method stub
		return null;
	}

}
