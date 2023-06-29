package Orca.service;

import java.util.List;
import java.util.Map;

import Orca.dto.Cargo;
import Orca.dto.Estimate;
import Orca.dto.Schedule;
import Orca.dto.Ship;

public interface OrcaService2 {
	// 화물 등록
	public int insertCargo(Cargo obj);
	
	//운행정보 조회
	public List<Schedule> selectSchedule();
	
	//선박 조회
	public List<Ship> selectShip();
	
	//선박 1개 조회
	public Ship selectShipOne(Map<String, Object> map );
	
	//선박 수정
	public int updateShip(Ship ship);
	
	//가견적 넣기
	public int insertEstimate(Estimate estimate);
	}
