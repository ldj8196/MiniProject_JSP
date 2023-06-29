package Orca.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import Orca.dto.Client;

@Mapper
public interface OrcaClientMapper {
	
	// 기업 회원가입
	@Insert({
		" INSERT INTO Client(brn, phone, password, postCode, address, chk, name, role, id, idChkQ, idChkA, email) ",
		" VALUES(#{obj.brn},#{obj.phone},#{obj.password}, #{obj.postCode}, #{obj.address}, #{obj.chk}, #{obj.name}, #{obj.role}, #{obj.id}, #{obj.idChkQ}, #{obj.idChkA}, #{obj.email} ) "
	})
	public int insertCompanyOne(@Param("obj") Client obj);

	// 개인 회원가입
	@Insert({
		" INSERT INTO Client(phone, password, postCode, address, chk, name, role, id, idChkQ, idChkA, email) ",
		" VALUES(#{obj.phone}, #{obj.password}, #{obj.postCode}, #{obj.address}, #{obj.chk}, #{obj.name}, #{obj.role}, #{obj.id}, #{obj.idChkQ}, #{obj.idChkA}, #{obj.email} ) "
	})
	public int insertIndividualMemberOne(@Param("obj") Client obj);
	
	// 회원가입 ID 중복확인
	@Select({
		" SELECT count(*) cnt FROM client WHERE id=#{id} "
	})
	public int idOverlapChk(@Param("id") String id);
	
	// 로그인
	@Select({
		" SELECT * FROM Client WHERE id=#{id} AND password=#{password} "
	})
	public Client selectClientOne(@Param("id") String id, @Param("password") String password);
	
	// 아이디 찾기
	@Select({
		" SELECT * FROM Client WHERE idChkQ=#{obj.idChkQ} AND idChkA=#{obj.idChkA} AND name=#{obj.name} AND phone=#{obj.phone} "
	})
	public Client findClientId(@Param("obj") Client obj);
	
	// 비밀번호 찾기
	@Select({
		" SELECT * FROM Client WHERE id=#{id} AND email=#{email} "
	})
	public Client findClientPassword(@Param("id") String Id, @Param("email") String email);
	
	// 마이페이지 정보 수정
	@Update({
		" UPDATE Client SET phone=#{obj.phone}, postCode=#{obj.postCode}, address=#{obj.address}, name=#{obj.name}, email=#{obj.email} WHERE id=#{obj.id} "
	})
	public int updateMypageInfo(@Param("obj") Client obj);
	
	// 마이페이지 비밀번호 변경
	@Update({
		" UPDATE Client SET password=#{obj.newPassword} WHERE id=#{obj.id} AND password=#{obj.password} "
	})
	public int updateMypagePassword(@Param("obj") Client obj);
}
