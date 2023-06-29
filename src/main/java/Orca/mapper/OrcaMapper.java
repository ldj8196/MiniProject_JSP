package Orca.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import Orca.dto.Cargo;
import Orca.dto.Estimate;
import Orca.dto.Schedule;
import Orca.dto.Ship;


@Mapper
public interface OrcaMapper {

	//현재 로그인 id의 화물입력
	@Insert({
		" INSERT INTO cargo(CargoNumber,CargoType,CargoWeight,Id) ",
		" VALUES(SEQ_CARGO_NO.NEXTVAL,#{obj.CargoType},#{obj.CargoWeight},#{obj.Id}) "
	})
	public int CargoInsertOne(@Param("obj")Cargo cargo);
	
	//운행정보 조회
	@Select({
		" SELECT * FROM Schedule "
	})
	public List<Schedule> OrcaSelectSchedule();
	
	//선박 조회
	@Select({
		" SELECT * FROM Ship "
	})
	public List<Ship> OrcaSelectShip();
	
	//선박 1개 조회
	@Select({
		" SELECT * FROM Ship WHERE srn = #{obj.no} "
	})
	public Ship OrcaSelectShipOne(@Param("obj") Map<String, Object> map);
	
	//선박 수정
	@Update({
		" UPDATE Ship SET sname = #{obj.sname}, type = #{obj.type}, maxCargo = #{obj.maxCargo}, point = #{obj.point}, shipWeight = #{obj.shipWeight} WHERE srn = #{obj.srn} "
	})
	public int OrcaupdateShip(@Param("obj") Ship ship);
	@Insert({
		" INSERT INTO Estimate(estimateno, totalfare, portfacfare, cargonumber, schedule_no, state) ",
		" VALUES(SEQ_ESTIMATE_NO.NEXTVAL, #{obj.totalfare}, #{obj.portfacfare}, #{obj.cargonumber}, #{obj.schedule_no}, #{obj.state}) "
	})
	public int OrcaInsertEstimate(@Param("obj") Estimate estimate);
	@Select({
		" SELECT * FROM Estimate "
	})
	public List<Estimate> OrcaSelectEstimate();
}
