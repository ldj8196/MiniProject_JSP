package Orca.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString(exclude= {"regdate"}) // Tostring으로 출력할때 regdate는 출력하지 않겠다 제외함
@NoArgsConstructor
@AllArgsConstructor
public class Client {
	private String brn;
	private String phone;
	private String password;
	private String newPassword;
	private String postCode;
	private String address;
	private Date regdate;
	private long chk;
	private String name;
	private String role;
	private String id;
	private String idChkQ;
	private String idChkA;
	private String email;
}
