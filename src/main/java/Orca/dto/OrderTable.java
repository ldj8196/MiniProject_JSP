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
public class OrderTable {
	private String OrderNo;
	private String DeparturePort;
	private String ArrivalPort;
	private long TotalFare;
	private Date ExpectingTime;
	private String EstimateNo;
	private Date regdate;
	
}
