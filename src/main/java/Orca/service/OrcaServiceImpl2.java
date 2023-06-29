package Orca.service;

import java.util.List;
import java.util.Map;

import Orca.config.MyBatisContext;
import Orca.dto.Cargo;
import Orca.dto.Estimate;
import Orca.dto.Schedule;
import Orca.dto.Ship;
import Orca.mapper.OrcaMapper;

public class OrcaServiceImpl2 implements OrcaService2{

	@Override
	public int insertCargo(Cargo obj) {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaMapper.class).CargoInsertOne(obj);
		}
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<Schedule> selectSchedule() {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaMapper.class).OrcaSelectSchedule();
		}
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Ship> selectShip() {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaMapper.class).OrcaSelectShip();
		}
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public int updateShip(Ship ship) {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaMapper.class).OrcaupdateShip(ship);
		}
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Ship selectShipOne(Map<String, Object> map) {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaMapper.class).OrcaSelectShipOne(map);
		}
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public int insertEstimate(Estimate estimate) {
		try {
			return MyBatisContext.getSqlSession().getMapper(OrcaMapper.class).OrcaInsertEstimate(estimate);
		}
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
}
	
